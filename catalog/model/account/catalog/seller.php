<?php
class ModelAccountCatalogSeller extends Model {
  	public function editSeller($seller_id, $data, $update_customer = true) {
		if(isset($data['business_nature']) && !empty($data['business_nature'])){
			$data['business_nature'] = implode(',',$data['business_nature']);
		} else {
			$data['business_nature']='';
		}
		$data['seller_group_id'] = 1;
		$columns = "seller_group_id, firstname, lastname, logo, sellerdescription, email, telephone, fax, company, website, 
		address_1, address_2, city, postcode, company_nature, business_nature, cancelled_cheque, bank_statement, 
		tin_number, aadhar_number, aadhar_upload, proof_upload, certificate_upload, country_id, zone_id,
		tax, payment, cheque, paypal, bank_name, bank_branch_number, bank_swift_code, bank_account_name, bank_account_number, status";
		$cols = array_map('trim', explode(",", $columns));
		$integer_fields = array("seller_group_id", "country_id", "zone_id", "status");
		if(!$seller_id) {
			$fields = array();
			$values = array();
			foreach($cols as $col) {
				if($this->db->escape($data[$col]) === '') {
					continue;
				}
				$fields[] = "`" . $col . "`";
				if(in_array($col, $integer_fields)) {
					$values[] = (int)$this->db->escape($data[$col]);
				} else {
					$values[] = "'". $this->db->escape($data[$col]) . "'";
				}
			}
			$this->db->query("INSERT INTO " . DB_PREFIX . "seller "
				. "(`seller_id`, " . join(", ", $fields) . ") VALUES "
				. "(NULL, " . join(", ", $values) . ")");
		} else {
			$values = array();
			foreach($cols as $col) {
				if(in_array($col, $integer_fields)) {
					$values[] = $col . " = " . (int)$this->db->escape($data[$col]);
				} else {
					$values[] = $col . " = " . "'". $this->db->escape($data[$col]) . "'";
				}
			}
			$this->db->query("UPDATE " . DB_PREFIX . "seller SET "
				. "" . join(", ", $values) . " WHERE seller_id = " . (int)$seller_id);
		}		
		if($update_customer) {
			$cols = array("firstname", "lastname", "email");
			$values = array();
			$integer_fields = array();
			foreach($cols as $col) {
				if(in_array($col, $integer_fields)) {
					$values[] = $col . " = " . (int)$this->db->escape($data[$col]);
				} else {
					$values[] = $col . " = " . "'". $this->db->escape($data[$col]) . "'";
				}
			}
			$this->db->query("UPDATE " . DB_PREFIX . "customer SET "
				. "" . join(", ", $values) . " WHERE customer_id = " . (int)$data['customer_id']);
		}
	}
  
	public function getSellerbyCustomer($customer_id) {
		$query = $this->db->query("SELECT DISTINCT s.*, c.customer_id FROM " . DB_PREFIX . "customer c JOIN " . DB_PREFIX . "seller as s ON s.email = c.email ".
				"WHERE c.customer_id = '" . (int)$customer_id . "'");

		return $query->row;
	}

	public function getSeller($seller_id) {
		$query = $this->db->query("SELECT DISTINCT s.*, c.customer_id FROM " . DB_PREFIX . "customer c JOIN " . DB_PREFIX . "seller as s ON s.email = c.email ".
				"WHERE s.seller_id = '" . (int)$seller_id . "'");

		return $query->row;
	}
	
	public function getPaidSellerDetails($groupIds = array()) {
		$query = $this->db->query(
			"SELECT s.*, c.customer_id FROM " . DB_PREFIX . "seller as s ".
			"JOIN " . DB_PREFIX . "customer as c ON c.email = s.email ". 
			"JOIN " . DB_PREFIX . "social_group_users as sgu ON s.seller_id = sgu.social_group_user_id ".
			"WHERE status = 1 and is_paid = 1 and approved=1 AND sgu.social_group_id IN (" . JOIN(",", $groupIds) . ")"
		);

		return $query->rows;
	}
  
  public function getSellerByEmail($email) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "seller WHERE LCASE(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");

		return $query->row;
	}
  
  public function addTransaction($seller_id, $amount = '', $order_id = 0) {
		$seller_info = $this->getSeller($seller_id);

		if ($affiliate_info) {
			$this->load->language('mail/seller');

			$this->db->query("INSERT INTO " . DB_PREFIX . "seller_transaction SET seller_id = '" . (int)$seller_id . "', order_id = '" . (float)$order_id . "', description = '" . $this->db->escape($this->language->get('text_order_id') . ' #' . $order_id) . "', amount = '" . (float)$amount . "', date_added = NOW()");

			$seller_transaction_id = $this->db->getLastId();

			$message  = sprintf($this->language->get('text_transaction_received'), $this->currency->format($amount, $this->config->get('config_currency'))) . "\n\n";
			$message .= sprintf($this->language->get('text_transaction_total'), $this->currency->format($this->getTransactionTotal($seller_id), $this->config->get('config_currency')));

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($affiliate_info['email']);
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(sprintf($this->language->get('text_transaction_subject'), html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8')));
			$mail->setText($message);
			$mail->send();

			return $seller_transaction_id;
		}
	}
  
	public function getTransactions($seller_id, $start = 0, $limit = 10) {
		if ($start < 0) {
			$start = 0;
		}

		if ($limit < 1) {
			$limit = 10;
		}

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seller_transaction WHERE seller_id = '" . (int)$seller_id . "' ORDER BY date_added DESC LIMIT " . (int)$start . "," . (int)$limit);

		return $query->rows;
	}

	public function getTotalTransactions($seller_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total  FROM " . DB_PREFIX . "seller_transaction WHERE seller_id = '" . (int)$seller_id . "'");

		return $query->row['total'];
	}

	public function getTransactionTotal($seller_id) {
		$query = $this->db->query("SELECT SUM(amount) AS total FROM " . DB_PREFIX . "seller_transaction WHERE seller_id = '" . (int)$seller_id . "'");

		return $query->row['total'];
	}

	public function getTotalTransactionsByOrderId($order_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "seller_transaction WHERE order_id = '" . (int)$order_id . "'");

		return $query->row['total'];
	}

	public function saveProductEnquires($data, $userId, $paid_sellers) {
		$enquiry_qry = "INSERT INTO " . DB_PREFIX . "product_enquries VALUES ". 
			"(null, '".$data['product_name']."', '".$data['product_qty']."', '".$data['unit']."', '".$data['other_group_text']."', '".$data['description']."', NOW(), ".$userId.")";
		$this->db->query($enquiry_qry);

		$enquiry_id = $this->db->getLastId();

		if(isset($data['social_groups']) && !empty($data['social_groups'])) {
			$enquiry_groups_qry = array();
			foreach($data['social_groups'] as $groupd_id) {
				$enquiry_groups_qry[] = "(".$enquiry_id.", ".$groupd_id.")";
			}
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_enquries_groups VALUES " . join(",", $enquiry_groups_qry));
		}

		if(!empty($paid_sellers)) {
			$enquiry_mails = array();
			foreach($paid_sellers as $seller) {
				$enquiry_mails[] = "(".$enquiry_id.", ".$seller['seller_id'].", '".$seller['email']."')";
			}
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_enquries_mail VALUES " . join(",", $enquiry_mails));
		}
	}
}
