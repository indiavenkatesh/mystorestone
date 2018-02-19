<?php
class ControllerRedzoneRedzone extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('product/category');  
		$this->load->model('redzone/redzone');

		$data['logged'] = $this->customer->isLogged();
		if(!$data['logged']){
			$this->session->data['redirect'] = $this->url->link('product/category');
		} else {
			$_SESSION['chat_username'] = $this->session->data['customer_id'];
		}
		$this->load->model('account/catalog/seller');
		$seller_info = $this->model_account_catalog_seller->getSellerbyCustomer($this->session->data['customer_id']);

		if(!isset($seller_info['is_paid']) || $seller_info['is_paid'] == 0) {
			$this->response->redirect($this->url->link('simple_blog/article', 'token=' . $this->session->data['token'] , true));
		}
		
		$data['search_text'] = '';
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && isset($this->request->post['do_search'])) {
			$data['search_text'] = $this->request->post['search'];
		} else if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$data = $this->request->post;
			$data['added_by'] =  $this->customer->getId();
			$redzone_id = $this->model_redzone_redzone->new_redzone($data);
			unset($this->request->post['heading']);
			unset($this->request->post['companyname']); 
			unset($this->request->post['fraudername']);
			unset($this->request->post['description']);
			unset($this->request->post['email']);
			unset($this->request->post['contact']);
			unset($this->request->post['country']);
			unset($this->request->post['place']);
			unset($this->request->post['evidence']);
			$data['success'] = 'New Blacklist Added Successfully.';
		} 
		//getting approved redlist from database
		$this->load->model('localisation/country'); 
		
		$countries = $this->model_localisation_country->getCountries();
		$redlists = $this->model_redzone_redzone->get_redzones($data['search_text']);
		$data['redlists'] = array();
		foreach ($redlists as $key => $redlist) {
			foreach ($countries as $key => $country) {
				if($redlist['country']==$country['country_id']){
					$redlist['country'] = $country['name'];
				}
			}
			$url = "";
			$redlist['detail_url'] = $this->url->link('redzone/redzone/details', 'token=' . $this->session->data['token'] . '&redzone_id=' . $redlist['redzone_id'] . $url, true);

			$data['redlists'][] = $redlist;
		}
		//echo "<pre>";print_r($data['redlists']);exit;


		//error display
		if (isset($data['success'])) {
			$data['success'] = $data['success'];
		} else {
			$data['success'] = '';
		}
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->error['heading'])) {
			$data['error_heading'] = $this->error['heading'];
		} else {
			$data['error_heading'] = '';
		}

		if (isset($this->error['companyname'])) {
			$data['error_companyname'] = $this->error['companyname'];
		} else {
			$data['error_companyname'] = '';
		}


		if (isset($this->error['fraudername'])) {
			$data['error_fraudername'] = $this->error['fraudername'];
		} else {
			$data['error_fraudername'] = '';
		}

		if (isset($this->error['email'])) {
			$data['error_email'] = $this->error['email'];
		} else {
			$data['error_email'] = '';
		}

		if (isset($this->error['contact'])) {
			$data['error_contact'] = $this->error['contact'];
		} else {
			$data['error_contact'] = '';
		}

		if (isset($this->error['country'])) {
			$data['error_country'] = $this->error['country'];
		} else {
			$data['error_country'] = '';
		}
		if (isset($this->error['place'])) {
			$data['error_place'] = $this->error['place'];
		} else {
			$data['error_place'] = '';
		}

		if (isset($this->error['description'])) {
			$data['error_description'] = $this->error['description'];
		} else {
			$data['error_description'] = '';
		}
		if (isset($this->error['evidence'])) {
			$data['error_evidence'] = $this->error['evidence'];
		} else {
			$data['error_evidence'] = '';
		}

		// assigning value to the fields of error occurs or simply assign empty values
		if (isset($this->request->post['heading'])) {
			$data['heading'] = $this->request->post['heading'];
		} else {
			$data['heading'] = '';
		}

		if (isset($this->request->post['companyname'])) {
			$data['companyname'] = $this->request->post['companyname'];
		} else {
			$data['companyname'] = '';
		}

		if (isset($this->request->post['fraudername'])) {
			$data['fraudername'] = $this->request->post['fraudername'];
		} else {
			$data['fraudername'] = '';
		}

		if (isset($this->request->post['description'])) {
			$data['description'] = $this->request->post['description'];
		} else {
			$data['description'] = '';
		}

		if (isset($this->request->post['contact'])) {
			$data['contact'] = $this->request->post['contact'];
		} else {
			$data['contact'] = '';
		}
		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} else {
			$data['email'] = '';
		}
		
		if (isset($this->request->post['country'])) {
			$data['country_id'] = $this->request->post['country'];
		} else {
			$data['country_id'] = '';
		}
		if (isset($this->request->post['place'])) {
			$data['place'] = $this->request->post['place'];
		} else {
			$data['place'] = '';
		}

		if (isset($this->request->post['evidence'])) {
			$data['evidence'] = $this->request->post['evidence'];
		} else {
			$data['evidence'] = '';
		}
		$data['logged'] = $this->customer->isLogged();
		$data['action'] = $this->url->link('redzone/redzone', '', true);
		$this->load->model('localisation/country');
		$data['text_select'] = $this->language->get('text_select');
		$data['countries'] = $this->model_localisation_country->getCountries();

		$data['continue'] = $this->url->link('common/home'); 
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('redzone/redzone', $data));

	}

	public function details() {
		$this->load->language('product/category');  
		$this->load->model('redzone/redzone');
		$this->load->model('customer/customer');  
		//print_r('test');exit;
		$data['logged'] = $this->customer->isLogged();

		if(!$data['logged']){
			$this->session->data['redirect'] = $this->url->link('product/category', 'path=' . $this->request->get['path']);
		} else {
			$_SESSION['chat_username'] = $this->session->data['customer_id'];
		}
		//getting approved redlist from database
		$this->load->model('localisation/country'); 
		$this->load->model('tool/upload');
		$countries = $this->model_localisation_country->getCountries(); 
		$redlist = $this->model_redzone_redzone->get_redzone($this->request->get['redzone_id']);
 		if($redlist){
 			$data['redlist']['redzone_id'] = $redlist['redzone_id'];
 			$data['redlist']['heading'] = $redlist['heading'];
 			$data['redlist']['place'] = $redlist['place'];
 			$data['redlist']['company'] = $redlist['company'];
 			$data['redlist']['frauder'] = $redlist['frauder'];
 			$data['redlist']['contact'] = $redlist['contact'];
 			$data['redlist']['email'] = $redlist['email'];
 			$data['redlist']['description'] = $redlist['description'];

 			$data['redlist']['description'] = $redlist['description'];
 			foreach ($countries as $key => $country) {
				if($redlist['country']==$country['country_id']){
					$data['redlist']['country'] = $country['name'];
				}
			}
			$posted_by = $this->model_customer_customer->getCustomer($redlist['added_by']);
			$data['redlist']['posted_by']['name'] = $posted_by['firstname'];
			$data['redlist']['posted_by']['company'] = '';
			$data['redlist']['posted_by']['email'] = $posted_by['email'];
			$data['redlist']['posted_by']['telephone'] = $posted_by['telephone'];

			$upload_info = $this->model_tool_upload->getUploadByCode($redlist['evidence']); 
			if(isset($upload_info['name'])){
				$phyname = DIR_UPLOAD.$upload_info['filename'];
				$temp_name = DIR_UPLOAD.$upload_info['name'];
				copy($phyname,$temp_name);
				$data['redlist']['evidence_url'] = $temp_name;
			}else{
				$data['redlist']['evidence_url'] = "";
			}

 		}  

		$data['action'] = $this->url->link('redzone/redzone', '', true);
		$this->load->model('localisation/country');
		$data['text_select'] = $this->language->get('text_select');
		$data['countries'] = $this->model_localisation_country->getCountries();

		$data['continue'] = $this->url->link('common/home'); 
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('redzone/redzone_details', $data));

	}

	private function validate() {
		if ((utf8_strlen(trim($this->request->post['heading'])) < 1) || (utf8_strlen(trim($this->request->post['heading'])) > 255)) {
			$this->error['heading'] = 'Please Enter Valid Heading';
		}

		if ((utf8_strlen(trim($this->request->post['companyname'])) < 1) || (utf8_strlen(trim($this->request->post['companyname'])) > 255)) {
			$this->error['companyname'] = 'Please Enter Valid Company Name';
		}
		if ((utf8_strlen(trim($this->request->post['place'])) < 1) || (utf8_strlen(trim($this->request->post['place'])) > 255)) {
			$this->error['place'] = 'Please Enter Valid Place';
		}

		if ((utf8_strlen(trim($this->request->post['fraudername'])) < 1) || (utf8_strlen(trim($this->request->post['fraudername'])) > 255)) {
			$this->error['fraudername'] = 'Please Enter Valid Frauder Name';
		}

		if ((utf8_strlen(trim($this->request->post['email'])) < 1) || (utf8_strlen(trim($this->request->post['email'])) > 255)||(!filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL))) {
			$this->error['email'] = 'Please Enter Valid Email';
		}

		if((!preg_match('/^[1-9][0-9]*$/', $this->request->post['contact']))){
			$this->error['contact'] = 'Please Enter Valid Contact No'; 
		}

		if (trim($this->request->post['country'])=="") {
			$this->error['country'] = 'Please Select Country';
		}
                if (utf8_strlen(trim($this->request->post['evidence'])) < 1 ) {
			$this->error['evidence'] = 'Please Upload Evidence ';
		}
                
		if ((utf8_strlen(trim($this->request->post['description'])) < 1)) {
			$this->error['description'] = 'Please Enter Valid Description';
		}
		return !$this->error;
	}
}
