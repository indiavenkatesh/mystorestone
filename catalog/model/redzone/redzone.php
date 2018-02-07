<?php
class ModelRedzoneRedzone extends Model {
	   
	public function new_redzone($data) {
		 //echo "<pre>";print_r($data);exit;
		$this->db->query("INSERT INTO " . DB_PREFIX . "redzone SET 	heading = '" . $this->db->escape($data['heading']) . "', company = '" . $this->db->escape($data['companyname']) . "', frauder = '" . $this->db->escape($data['fraudername']) . "', country = '" . $this->db->escape($data['country']) . "', email = '" . $this->db->escape($data['email']) . "',contact = '" . $this->db->escape($data['contact']) . "',place = '" . $this->db->escape($data['place']) . "',description = '" . $this->db->escape($data['description']) . "', evidence = '" . $this->db->escape($data['evidence']) . "', added_by = '" . $this->db->escape($data['added_by']) . "', created_on = '" .date('Y-m-d H:i:s'). "', status = '1', approved = '0' ");

    		return $this->db->getLastId();
	}

	public function get_redzones(){
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "redzone WHERE approved = 1  AND status = 1 ORDER BY redzone_id DESC ");
		return $query->rows;
		//echo "<pre>";print_r($query);exit;
	}
	public function get_redzone($redzone_id){
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "redzone WHERE redzone_id='".$redzone_id."' ");
		return $query->row;
		//echo "<pre>";print_r($query);exit;
	}

        public function get_new_redzone(){
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "redzone WHERE created_on >= DATE_ADD(CURDATE(), INTERVAL -2 DAY)");
		//echo "<pre>";print_r($query);exit;
		return $query->num_rows;
	}

}