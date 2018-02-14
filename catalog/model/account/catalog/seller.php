<?php
class ModelAccountCatalogSeller extends Model {
  	public function editSeller($seller_id, $data) {
		if(isset($data['business_nature']) && !empty($data['business_nature'])){
			$data['business_nature'] = implode(',',$data['business_nature']);
		} else {
			$data['business_nature']='';
		}
		$data['seller_group_id'] = 1;
		//$this->db->query("UPDATE " . DB_PREFIX . "seller SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', logo = '" . $this->db->escape($data['logo']) . "', sellerdescription = '" . $this->db->escape($data['sellerdescription']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', fax = '" . $this->db->escape($data['fax']) . "', company = '" . $this->db->escape($data['company']) . "', website = '" . $this->db->escape($data['website']) . "', address_1 = '" . $this->db->escape($data['address_1']) . "', address_2 = '" . $this->db->escape($data['address_2']) . "', city = '" . $this->db->escape($data['city']) . "', postcode = '" . $this->db->escape($data['postcode']) . "', country_id = '" . (int)$data['country_id'] . "', zone_id = '" . (int)$data['zone_id'] . "', tax = '" . $this->db->escape($data['tax']) . "', payment = '" . $this->db->escape($data['payment']) . "', cheque = '" . $this->db->escape($data['cheque']) . "', paypal = '" . $this->db->escape($data['paypal']) . "', bank_name = '" . $this->db->escape($data['bank_name']) . "', bank_branch_number = '" . $this->db->escape($data['bank_branch_number']) . "', bank_swift_code = '" . $this->db->escape($data['bank_swift_code']) . "', bank_account_name = '" . $this->db->escape($data['bank_account_name']) . "', bank_account_number = '" . $this->db->escape($data['bank_account_number']) . "', status = '" . (int)$data['status'] . "' WHERE seller_id = '" . (int)$seller_id . "'");
		$this->db->query("UPDATE " . DB_PREFIX . "seller SET seller_group_id = '" . (int)$data['seller_group_id'] . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', logo = '" . $this->db->escape($data['logo']) . "', sellerdescription = '" . $this->db->escape($data['sellerdescription']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', fax = '" . $this->db->escape($data['fax']) . "', company = '" . $this->db->escape($data['company']) . "', website = '" . $this->db->escape($data['website']) . "', address_1 = '" . $this->db->escape($data['address_1']) . "', address_2 = '" . $this->db->escape($data['address_2']) . "', city = '" . $this->db->escape($data['city']) . "', postcode = '" . $this->db->escape($data['postcode']) . "', company_nature = '" . $this->db->escape($data['company_nature']) . "', business_nature = '" . $this->db->escape($data['business_nature']) . "', cancelled_cheque = '" . $this->db->escape($data['cancelled_cheque']) . "', bank_statement = '" . $this->db->escape($data['bank_statement']) . "', tin_number = '" . $this->db->escape($data['tin_number']) . "', aadhar_number = '" . $this->db->escape($data['aadhar_number']) . "', aadhar_upload = '" . $this->db->escape($data['aadhar_upload']) . "', proof_upload = '" . $this->db->escape($data['proof_upload']) . "', certificate_upload = '" . $this->db->escape($data['certificate_upload']) . "', country_id = '" . (int)$data['country_id'] . "', zone_id = '" . (int)$data['zone_id'] . "', tax = '" . $this->db->escape($data['tax']) . "', payment = '" . $this->db->escape($data['payment']) . "', cheque = '" . $this->db->escape($data['cheque']) . "', paypal = '" . $this->db->escape($data['paypal']) . "', bank_name = '" . $this->db->escape($data['bank_name']) . "', bank_branch_number = '" . $this->db->escape($data['bank_branch_number']) . "', bank_swift_code = '" . $this->db->escape($data['bank_swift_code']) . "', bank_account_name = '" . $this->db->escape($data['bank_account_name']) . "', bank_account_number = '" . $this->db->escape($data['bank_account_number']) . "', status = '" . (int)$data['status'] . "' WHERE seller_id = '" . (int)$seller_id . "'");
	}
  
  public function getSeller($seller_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "seller WHERE seller_id = '" . (int)$seller_id . "'");

		return $query->row;
	}
	
	public function getPaidSellerDetails($groupIds = array()) {
		$query = $this->db->query(
			"SELECT s.* FROM " . DB_PREFIX . "seller as s ".
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
			"(null, '".$data['product_name']."', '".$data['product_qty']."', '".$data['unit']."', '".$data['other_group_text']."', NOW(), ".$userId.")";
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
