<?php
class ModelAccountMessage extends Model {
	public function sendMessage($data) {
	
			$this->db->query("INSERT INTO " . DB_PREFIX . "msp_message SET user_id = '" . (int)$data['user_id'] . "', customer_id = '" . (int)$data['customer_id'] . "', message = '" . $this->db->escape($data['message']) . "', sender = '" . $this->db->escape($data['sender']) . "', date_added=NOW()");
	}
	
	public function getMessagesByCustomerId($data) {
	
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "msp_message WHERE customer_id = '" . (int)$data['customer_id'] . "' ORDER BY date_added DESC");
		
		return $query->rows;
	}
	
	public function getMessagesSentByUserId($data) {
	
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "msp_message WHERE user_id = '" . (int)$data['customer_id'] . "' OR  customer_id = '" . (int)$data['customer_id'] . "' ORDER BY date_added DESC");
		
		return $query->rows;
	}
	
	public function CreateTable(){
		$this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "msp_message` (`message_id` int(11) NOT NULL AUTO_INCREMENT,`user_id` int(11) NOT NULL,`customer_id` int(11) NOT NULL,`sender` varchar(20) NOT NULL,`message` text NOT NULL,`read_status` tinyint(1) NOT NULL,`date_added` datetime NOT NULL,PRIMARY KEY (`message_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;");
	}
	
	public function getTotalUnreadMessages($data) {
		
		$this->CreateTable();
		
		$sql ="SELECT COUNT(*) AS total FROM " . DB_PREFIX . "msp_message WHERE message_id>0";
		
		if(isset($data['filter_sender'])) {
			$sql .=" AND sender ='". $this->db->escape($data['filter_sender']) ."'";
		}
		
		if(isset($data['filter_status'])) {
			$sql .=" AND read_status='". (int)$data['filter_status'] ."'";
		}
		
		$sql .=" AND customer_id='". (int)$data['customer_id'] ."'";	
		
		$query = $this->db->query($sql);
		
		return $query->row['total'];
	}	

	public function updateReadStatus($data) {
		$sql = "UPDATE " . DB_PREFIX . "msp_message SET read_status=1 WHERE customer_id='". (int)$data['customer_id'] ."'";
		
		if(isset($data['filter_sender'])) {
			$sql .=" AND sender ='". $this->db->escape($data['filter_sender']) ."'";
		}
		
		if(isset($data['filter_status'])) {
			$sql .=" AND read_status='". (int)$data['filter_status'] ."'";
		}
		
		$query = $this->db->query($sql);
	}
}