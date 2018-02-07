<?php
class ModelBlacklistBlacklist extends Model { 
 
	public function getTotalBlacklist() {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "redzone WHERE status = 1 ");
		return $query->num_rows;
	}

        public function getTotalblacklistPending() {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "redzone WHERE status = 1 AND approved='0' ");
		return $query->num_rows;
	}
 
	public function getCustomers() {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "redzone WHERE status = 1 ORDER BY redzone_id DESC  ");
		return $query->rows;
	}
	public function getCustomer($redzone_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "redzone WHERE redzone_id = '" . (int)$redzone_id . "'");
		return $query->row;
	}

	public function approve($redzone_id) {
		$redzone_info = $this->getCustomer($redzone_id);
		if ($redzone_info) {
			$this->db->query("UPDATE " . DB_PREFIX . "redzone SET approved = '1' WHERE redzone_id = '" . (int)$redzone_id . "'");
		}
	}

	public function delete($redzone_id) { 
		$redzone_info = $this->getCustomer($redzone_id);
		if ($redzone_info) {
			$this->db->query("UPDATE " . DB_PREFIX . "redzone SET status = '0' WHERE redzone_id = '" . (int)$redzone_id . "'");
		}
	}
             
}
