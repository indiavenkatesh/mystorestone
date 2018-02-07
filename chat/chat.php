<?php

/*

Copyright (c) 2009 Anant Garg (anantgarg.com | inscripts.com)

This script may be used for non-commercial purposes only. For any
commercial purposes, please contact the author at 
anant.garg@inscripts.com

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

*/

$root = $_SERVER['DOCUMENT_ROOT'] . '/mystorestone/';

if (file_exists($root . 'config.php')) {
    require_once($root . 'config.php');
}


session_start();

global $dbh;
$dbh = mysql_connect(DB_HOSTNAME,DB_USERNAME,DB_PASSWORD);
mysql_selectdb(DB_DATABASE,$dbh);

if ($_GET['action'] == "chatheartbeat") { chatHeartbeat(); } 
if ($_GET['action'] == "sendchat") { sendChat(); } 
if ($_GET['action'] == "closechat") { closeChat(); } 
if ($_GET['action'] == "startchatsession") { startChatSession(); } 
if ($_GET['action'] == "getusername") { getUsername(); } 

if (!isset($_SESSION['chatHistory'])) {
	$_SESSION['chatHistory'] = array();	
}

if (!isset($_SESSION['openChatBoxes'])) {
	$_SESSION['openChatBoxes'] = array();	
}

function chatHeartbeat() {
	
	$sql = "select oc_chat.*,oc_customer.firstname as username from oc_chat JOIN oc_customer ON oc_customer.customer_id = oc_chat.from where (oc_chat.to = '".$_SESSION['chat_username']."' AND oc_chat.recd = 0)  order by oc_chat.id ASC";
	$query = mysql_query($sql);
	$items = '';

	$chatBoxes = array();

	while ($chat = mysql_fetch_array($query)) {

		if (!isset($_SESSION['openChatBoxes'][$chat['from']]) && isset($_SESSION['chatHistory'][$chat['from']])) {
			$items = $_SESSION['chatHistory'][$chat['from']];
		}

		$chat['message'] = sanitize($chat['message']);

		$items .= <<<EOD
					   {
			"s": "0",
			"f": "{$chat['from']}",
			"usr": "{$chat['username']}",
			"m": "{$chat['message']}"
	   },
EOD;

	if (!isset($_SESSION['chatHistory'][$chat['from']])) {
		$_SESSION['chatHistory'][$chat['from']] = '';
	}

	$_SESSION['chatHistory'][$chat['from']] .= <<<EOD
						   {
			"s": "0",
			"f": "{$chat['from']}",
			"usr": "{$chat['username']}",
			"m": "{$chat['message']}"
	   },
EOD;
		
		unset($_SESSION['tsChatBoxes'][$chat['from']]);
		$_SESSION['openChatBoxes'][$chat['from']] = $chat['sent'];
	}

	if (!empty($_SESSION['openChatBoxes'])) {

	foreach ($_SESSION['openChatBoxes'] as $chatbox => $time) {
		if (!isset($_SESSION['tsChatBoxes'][$chatbox])) {
			$now = time()-strtotime($time);
			$time = date('g:iA M dS', strtotime($time));

			$message = "Sent at $time";
			$customer_sql = mysql_query("select oc_customer.firstname as username from oc_customer WHERE customer_id =".$chatbox);
			$customer_sql_row = mysql_fetch_row($customer_sql);
			$current_username = $customer_sql_row[0];
			if ($now > 180) {
				$items .= <<<EOD
{
"s": "2",
"f": "$chatbox",
"usr": "$current_username",
"m": "{$message}"
},
EOD;

	if (!isset($_SESSION['chatHistory'][$chatbox])) {
		$_SESSION['chatHistory'][$chatbox] = '';
	}

	$_SESSION['chatHistory'][$chatbox] .= <<<EOD
		{
"s": "2",
"f": "$chatbox",
"usr": "$current_username",
"m": "{$message}"
},
EOD;
			$_SESSION['tsChatBoxes'][$chatbox] = 1;
		}
		}
	}
}

	$sql = "update oc_chat set recd = 1 where oc_chat.to = '".$_SESSION['chat_username']."' and recd = 0";
	$query = mysql_query($sql);

	if ($items != '') {
		$items = substr($items, 0, -1);
	}
header('Content-type: application/json');
?>
{
		"items": [
			<?php echo $items;?>
        ]
}

<?php
			exit(0);
}

function chatBoxSession($chatbox) {
	
	$items = '';
	
	if (isset($_SESSION['chatHistory'][$chatbox])) {
		$items = $_SESSION['chatHistory'][$chatbox];
	}

	return $items;
}

function startChatSession() {
	$items = '';
	if (!empty($_SESSION['openChatBoxes'])) {
		foreach ($_SESSION['openChatBoxes'] as $chatbox => $void) {
			$items .= chatBoxSession($chatbox);
		}
	}


	if ($items != '') {
		$items = substr($items, 0, -1);
	}
	$customer_sql = mysql_query("select oc_customer.firstname as username from oc_customer WHERE customer_id =".$_SESSION['chat_username']);
	$customer_sql_row = mysql_fetch_row($customer_sql);
	$current_username = $customer_sql_row[0];
header('Content-type: application/json');
?>
{
		"username": "<?php echo $current_username;?>",
		"items": [
			<?php echo $items;?>
        ]
}

<?php


	exit(0);
}

function sendChat() {
	$from = $_SESSION['chat_username'];
	$to = $_POST['to'];
	$message = $_POST['message'];

	$_SESSION['openChatBoxes'][$_POST['to']] = date('Y-m-d H:i:s', time());
	
	$messagesan = sanitize($message);

	if (!isset($_SESSION['chatHistory'][$_POST['to']])) {
		$_SESSION['chatHistory'][$_POST['to']] = '';
	}
	$customer_sql = mysql_query("select oc_customer.firstname as username from oc_customer WHERE customer_id =".$_POST['to']);
	$customer_sql_row = mysql_fetch_row($customer_sql);
	$current_username = $customer_sql_row[0];
	$_SESSION['chatHistory'][$_POST['to']] .= <<<EOD
					   {
			"s": "1",
			"f": "{$to}",
			"usr": "{$current_username}",
			"m": "{$messagesan}"
	   },
EOD;


	unset($_SESSION['tsChatBoxes'][$_POST['to']]);

	$sql = "insert into oc_chat (oc_chat.from,oc_chat.to,message,sent) values ('".$from."', '".$to."','".mysql_real_escape_string($message)."',NOW())";
	$query = mysql_query($sql);
	echo "1";
	exit(0);
}

function closeChat() {

	unset($_SESSION['openChatBoxes'][$_POST['chatbox']]);
	
	echo "1";
	exit(0);
}

function sanitize($text) {
	$text = htmlspecialchars($text, ENT_QUOTES);
	$text = str_replace("\n\r","\n",$text);
	$text = str_replace("\r\n","\n",$text);
	$text = str_replace("\n","<br>",$text);
	return $text;
}

function getUsername(){
	$user_id = $_POST['chatbox'];
	$sql = "select oc_customer.firstname as username from oc_customer WHERE customer_id =".$user_id;
	$query = mysql_query($sql);
	$row = mysql_fetch_row($query);
	echo $row[0];
	exit(0);
}