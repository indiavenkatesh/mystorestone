<?php
	class ModelSimpleBlogGroups extends Model {
		
		public function addGroup($data) {
			$data['created_by'] = isset($this->session->data['user_id'])? $this->session->data['user_id'] : $this->session->data['customer_id'];
			$this->db->query("INSERT INTO `" . DB_PREFIX . "social_group` SET name = '" . $this->db->escape($data['name']) . "', description = '" . $this->db->escape($data['description']) . "', created_by = '" . (int)$data['created_by'] . "', status=1");
			$simple_blog_category_id = $this->db->getLastId();
		}
		
		public function editGroup($social_group_id, $data) {
			$this->db->query("UPDATE `" . DB_PREFIX . "social_group` SET name = '" . $this->db->escape($data['name']) . "', description = '" . $this->db->escape($data['description']) . "' WHERE social_group_id ='". (int)$social_group_id ."'");
		}		
		
		public function deleteGroup($social_group_id) {
			$this->db->query("DELETE FROM `" . DB_PREFIX . "social_group` WHERE social_group_id = '" . (int)$social_group_id . "'");
		}
		
		public function getGroup($social_group_id) {
			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "social_group` WHERE social_group_id = '" . (int)$social_group_id . "' and status = 1");
			return $query->row;
		}

		public function getAllgroups($user_id = NULL) {
			$sql = "SELECT g.*,c.firstname as username FROM `" . DB_PREFIX . "social_group` as g";
			if($user_id!=NULL){
				$sql .= " LEFT JOIN `" . DB_PREFIX . "customer` as c ON g.created_by=c.customer_id";
				$sql .= " LEFT JOIN `" . DB_PREFIX . "social_group_users` as gu ON g.social_group_id=gu.social_group_id  and gu.social_group_user_id!='" . (int)$user_id . "' WHERE g.status=1";
				$sql .=" and g.created_by!='" . (int)$user_id . "'";
				$sql .=" GROUP BY g.social_group_id";
			} else {
				$sql .=" WHERE g.status=1";
			}
			$query = $this->db->query($sql);
			return $query->rows;
		}		

		public function getGroupbycreated($created_by) {
			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "social_group` WHERE created_by = '" . (int)$created_by . "'");
			return $query->rows;
		}			
		
		public function getGroupusersid($social_group_id) {
			$query = $this->db->query("SELECT social_group_user_id  FROM `" . DB_PREFIX . "social_group_users` WHERE social_group_id = '" . (int)$social_group_id . "'");
			return $query->rows;
		}
		
		public function getGroupusers($social_group_id) {
			$query = $this->db->query("SELECT gu.*,CONCAT(c.firstname, ' ', c.lastname) as username  FROM `" . DB_PREFIX . "social_group_users` as gu  JOIN `" . DB_PREFIX . "customer` as c ON gu.social_group_user_id=c.customer_id WHERE gu.social_group_id = '" . (int)$social_group_id . "'");
			return $query->rows;
		}
		
		public function joinGroup($data) {
			$this->db->query("INSERT INTO `" . DB_PREFIX . "social_group_users` SET social_group_user_id = '" . (int)$data['social_group_user_id'] . "', social_group_id = '" . (int)$data['social_group_id'] . "'");
			$simple_blog_category_id = $this->db->getLastId();
		}
		
		public function leaveGroup($data) {
			$this->db->query("DELETE FROM `" . DB_PREFIX . "social_group_users` WHERE social_group_user_id = '" . (int)$data['social_group_user_id'] . "' and social_group_id = '" . (int)$data['social_group_id'] . "'");
		}
		
		public function getUsersList($user_id) {			
			$query = $this->db->query("SELECT cus.* FROM `" . DB_PREFIX . "customer` cus JOIN `" . DB_PREFIX . "customer_online` cus_on ON cus.customer_id = cus_on.customer_id  WHERE cus.customer_id != '" . (int)$user_id . "' and cus.status = 1 and cus.sellerapprove = 1");
			return $query->rows;
		}
		
		public function getAllUsersList() {			
			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "customer` WHERE status = 1 and sellerapprove = 1");
			return $query->rows;
		}

		public function checkAvailable($gid,$uid) {	
			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "social_group_users` WHERE group_status = 1 and social_group_user_id = '".$uid."' and social_group_id = '".$gid."'");

			return $query->rows;
		}

               public function checkAvailableuser($gid,$uid) {	
			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "social_group_users` WHERE  social_group_user_id = '".$uid."' and social_group_id = '".$gid."'");

			return $query->rows;
		}

                public function getusergroup($uid) {	
			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "social_group_users` LEFT JOIN oc_social_group ON oc_social_group.social_group_id = oc_social_group_users.social_group_id WHERE  social_group_user_id = '".$uid."' AND oc_social_group.status = 1  ");

			return $query->rows;
		}
		
		public function getAllgroupsReg() {
			$sql = "SELECT * FROM `" . DB_PREFIX . "social_group` WHERE status=1"; 
			$query = $this->db->query($sql);
			return $query->rows;
		}
		
	}	
?>