<?php
class ModelCheckoutSeller extends Model {
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
}