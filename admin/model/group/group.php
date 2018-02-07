<?php
class ModelGroupGroup extends Model {
	public function addGroup($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "social_group SET name = '" . $this->db->escape($data['group_name']) . "',  description = '" . $this->db->escape($data['group_description']) . "', created_by ='99', status = '" . (int)$data['group_select'] . "'");

		$this->cache->delete('social_group');
		
		return $this->db->getLastId();
	}

	public function editGroup($id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "social_group SET name = '" . $this->db->escape($data['group_name']) . "', description = '" . $this->db->escape($data['group_description']) . "',  status = '" . (int)$data['group_select'] . "' WHERE social_group_id = '" . (int)$id . "'");

		$this->cache->delete('country');
	}

        public function deleteGroup($id) {
		$this->db->query("UPDATE " . DB_PREFIX . "social_group SET status = '0' WHERE social_group_id = '" . (int)$id . "'"); 
		return $id;
	}

	public function deleteCountry($country_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "country WHERE country_id = '" . (int)$country_id . "'");

		$this->cache->delete('country');
	}

	public function getByid($id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "social_group WHERE social_group_id = '" . (int)$id . "'");

		return $query->row;
	}

	public function getGroup($data = array()) {
		if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "social_group WHERE status = 1 ";

			$sort_data = array(
				'name'
			);

			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				$sql .= " ORDER BY " . $data['sort'];
			} else {
				$sql .= " ORDER BY name";
			}

			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC";
			} else {
				$sql .= " ASC";
			}

			if (isset($data['start']) || isset($data['limit'])) {
				if ($data['start'] < 0) {
					$data['start'] = 0;
				}

				if ($data['limit'] < 1) {
					$data['limit'] = 20;
				}

				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}

			$query = $this->db->query($sql);

			return $query->rows;
		} else {
			$country_data = $this->cache->get('social_group.admin');

			if (!$country_data) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "social_group ORDER BY name ASC");

				$country_data = $query->rows;

				$this->cache->set('social_group.admin', $country_data);
			}

			return $country_data;
		}
	}

	public function getTotalGroup() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "social_group");

		return $query->row['total'];
	}


	public function getGroupMember($group_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "social_group_users LEFT JOIN  oc_customer oc_customer ON oc_customer.customer_id = oc_social_group_users.social_group_user_id WHERE oc_social_group_users.social_group_id = ".$group_id);

		return $query->rows;
	}

	public function updatemenberstatus($id,$gid,$uid)
	{
				$this->db->query("UPDATE " . DB_PREFIX . "social_group_users SET group_status = '" . $this->db->escape($id) . "'  WHERE social_group_user_id = '" . (int)$uid . "' AND social_group_id = '".(int)$gid ."'");

	}
}