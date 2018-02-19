<?php
class ControllerBlacklistBlacklist extends Controller {
	private $error = array();

	public function index() {

		$this->load->language('customer/customer');
		$this->document->setTitle('Blacklist Sellers');
		$this->load->model('blacklist/blacklist');

		$this->getList();
	}
  

	public function remove() {
		$this->load->language('customer/customer');

		$this->document->setTitle('Blacklist Sellers');
		$this->load->model('blacklist/blacklist'); 

		if ($this->validateDelete()) { 				 
			$this->model_blacklist_blacklist->delete($this->request->get['redzone_id']); 
			$this->session->data['success'] = 'You Have deleted Blacklist'; 
                        $url = '';
			$this->response->redirect($this->url->link('blacklist/blacklist', 'token=' . $this->session->data['token'] . $url, true));
		}

		$this->getList();
	}

	public function approve() {
		$this->load->language('customer/customer');

		$this->document->setTitle('Blacklist Sellers');

		$this->load->model('blacklist/blacklist');

		$customers = array();
 
		if ($this->validateApprove()) {
			$this->model_blacklist_blacklist->approve($this->request->get['redzone_id']);

			$this->session->data['success'] = 'You have Approved Blacklist';
                        $url = '';
			$this->response->redirect($this->url->link('blacklist/blacklist', 'token=' . $this->session->data['token'] . $url, true));
		}

		$this->getList();
	}
    
	protected function getList() {

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'name';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}


		$url = ''; 
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => 'Blacklist Sellers',
			'href' => $this->url->link('blacklist/blacklist', 'token=' . $this->session->data['token'] . $url, true)
		);

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$this->load->model('localisation/country'); 
		$countries = $this->model_localisation_country->getCountries();
		$this->load->model('tool/upload');

		$data['blacklists'] = array();
		$data['action'] = $this->url->link('blacklist/blacklist', 'token=' . $this->session->data['token'], true);
		$data['search_text'] = '';
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && isset($this->request->post['do_search'])) {
			$data['search_text'] = $this->request->post['search'];
		}
		$results = $this->model_blacklist_blacklist->getCustomers($data['search_text']); 
		foreach ($results as $key => $result) { 
			foreach ($countries as $key => $country) {
				if($result['country']==$country['country_id']){
					$result['country'] = $country['name'];
				}
			}

			if($result['approved']==1){
				$result['status'] = 'Approved';
			}else{
				$result['approve_url'] = $this->url->link('blacklist/blacklist/approve', 'token=' . $this->session->data['token'] . '&redzone_id=' . $result['redzone_id'] . $url, true);
				$result['status'] = 'Not approved';
			}
			$result['remove_url'] = $this->url->link('blacklist/blacklist/remove', 'token=' . $this->session->data['token'] . '&redzone_id=' . $result['redzone_id'] . $url, true);

			$upload_info = $this->model_tool_upload->getUploadByCode($result['evidence']); 
			if(isset($upload_info['name'])){
                                $phyname = DIR_UPLOAD.$upload_info['filename'];
				$temp_name = DIR_UPLOAD.$upload_info['name'];
				copy($phyname,$temp_name);
				$result['evidence_url'] = '../system/storage/upload/'.$upload_info['name']; 
			}else{
				$result['evidence_url'] = "";
			}
			$result['created_on'] = date('m/d/Y',strtotime($result['created_on']));
			$data['blacklists'][] = $result;
		} 
		$blacklist_total = $this->model_blacklist_blacklist->getTotalBlacklist();

		$pagination = new Pagination();
		$pagination->total = $blacklist_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('blacklist/blacklist', 'token=' . $this->session->data['token'] . $url . '&page={page}', true);

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($blacklist_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($blacklist_total - $this->config->get('config_limit_admin'))) ? $blacklist_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $blacklist_total, ceil($blacklist_total / $this->config->get('config_limit_admin')));

		$data['button_blacklist_approve'] = 'Approve';
		$data['button_blacklist_delete'] = 'Delete';
		$data['button_blacklist_evidence_download'] = 'Download Evedence';
		$data['column_cname'] = 'Fraud Company';
		$data['column_sname'] = 'Fraud Seller';
		$data['column_country'] = 'Country';
		$data['column_description'] = 'Description';
		$data['column_approved'] = $this->language->get('column_approved');
		$data['column_proof'] = 'Proof';
		$data['column_status'] = 'Status';
		$data['column_date_added'] = $this->language->get('column_date_added');
		$data['column_action'] = $this->language->get('column_action');
        $data['text_no_results'] = $this->language->get('text_no_results');

		$data['heading_title'] = 'Blacklist Sellers';
		$data['text_list'] = 'Blacklist sellers';
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('blacklist/blacklist_list', $data));
	}
  

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'customer/customer')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}

	protected function validateApprove() {
		if (!$this->user->hasPermission('modify', 'customer/customer')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}  
}
