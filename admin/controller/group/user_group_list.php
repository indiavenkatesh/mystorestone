<?php
class ControllerGroupUsergrouplist extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('localisation/country');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('group/group');

		$this->getList();
	}


	
	protected function getList()
	{


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

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => 'Group',
			'href' => $this->url->link('catalog/category', 'token=' . $this->session->data['token'] . $url, true)
		);

		$data['add'] = $this->url->link('group/user_group_list/add', 'token=' . $this->session->data['token'] . $url, true);
		$data['delete'] = $this->url->link('group/user_group_list/delete', 'token=' . $this->session->data['token'] . $url, true);
		$data['repair'] = $this->url->link('group/user_group_list/repair', 'token=' . $this->session->data['token'] . $url, true);

		$data['categories'] = array();

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);

		$category_total = $this->model_group_group->getTotalGroup();

		$results = $this->model_group_group->getGroup($filter_data);

		foreach ($results as $result) {
			$data['categories'][] = array(
				'social_group_id' => $result['social_group_id'],
				'name'        => $result['name'],
				'view_member' =>  $this->url->link('group/user_group_list/view_member', 'token=' . $this->session->data['token'] . '&group_id=' . $result['social_group_id'] . $url, true),
				//'sort_order'  => $result['sort_order'],
				'edit'        => $this->url->link('group/user_group_list/edit', 'token=' . $this->session->data['token'] . '&category_id=' . $result['social_group_id'] . $url, true),
				'delete'      => $this->url->link('group/user_group_list/delete', 'token=' . $this->session->data['token'] . '&category_id=' . $result['social_group_id'] . $url, true)
			);
		}

		$data['heading_title'] = 'Group';

		$data['text_list'] = 'Group List';
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_confirm'] = $this->language->get('text_confirm');

		$data['column_name'] = 'Group Name';
		$data['column_sort_order'] = $this->language->get('column_sort_order');
		$data['column_action'] = $this->language->get('column_action');

		$data['button_add'] = 'Add';
		$data['button_edit'] = 'Edit';
		$data['button_delete'] = 'Delete';
		$data['button_rebuild'] = 'Rebuild';

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

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_name'] = $this->url->link('group/user_group_list', 'token=' . $this->session->data['token'] . '&sort=name' . $url, true);
		$data['sort_sort_order'] = $this->url->link('group/user_group_list', 'token=' . $this->session->data['token'] . '&sort=sort_order' . $url, true);

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $category_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('group/user_group_list', 'token=' . $this->session->data['token'] . $url . '&page={page}', true);

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($category_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($category_total - $this->config->get('config_limit_admin'))) ? $category_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $category_total, ceil($category_total / $this->config->get('config_limit_admin')));

		$data['sort'] = $sort;
		$data['order'] = $order;




		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('group/group_list', $data));

	}




	public function add()
	{

		$url = '';

		

		$data['action'] = $this->url->link('group/user_group_list/add_group', 'token=' . $this->session->data['token'] . $url, true);
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('group/group_add', $data));
	}


	public function add_group()
	{


		$this->load->model('group/group');
		$category_total = $this->model_group_group->addGroup($this->request->post);
		$this->getList();
		
	}

	public function edit()
	{
		$this->load->model('group/group');
		$data['record'] = $this->model_group_group->getByid($this->request->get['category_id']);


		$url = '';


		$data['action'] = $this->url->link('group/user_group_list/edit_group&category_id='.$this->request->get['category_id'], 'token=' . $this->session->data['token'] . $url, true);
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('group/group_edit', $data));
	}

	public function edit_group()
	{

		$this->load->model('group/group');
		$category_total = $this->model_group_group->editGroup($this->request->get['category_id'],$this->request->post);
		$this->getList();
		
	}


	public function delete()
        {
		$this->load->model('group/group');
		if(isset($this->request->post['selected'])){
			
			foreach ($this->request->post['selected'] as $group_id) {
			//print_r($group_id);exit;
			$delete_group = $this->model_group_group->deleteGroup($group_id);

		}
		$this->session->data['success'] = 'You have Deleted Group';
		}
		
		$this->getList();
	}



	public function view_member()
	{
		$this->load->model('group/group');

		$url='';
		$group_id = $this->request->get['group_id'];

		$data['members'] = $this->model_group_group->getGroupMember($this->request->get['group_id']);

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['token'] =  $this->session->data['token']; 

		foreach ($data['members'] as $key => $value) {
			$data['group_members'][] = array(
				'name'        => $value['firstname'],
				'change_status_active' =>  $this->url->link('group/user_group_list/change_status', 'token=' . $this->session->data['token'] . '&action=1&group_id='.$value['social_group_id'].'&user_id='.$value['social_group_user_id'] . $url, true),
				'change_status_deactive' =>  $this->url->link('group/user_group_list/change_status', 'token=' . $this->session->data['token'] . '&action=0&group_id='.$value['social_group_id'].'&user_id='.$value['social_group_user_id'] . $url, true),
				'status'  => $value['group_status'],
				'delete'      => $this->url->link('group/user_group_list/delete_member_group', 'token=' . $this->session->data['token'] . '&group_id='.$value['social_group_id'].'&user_id='.$value['social_group_user_id'] . $url, true)
			);
		}


	


		$this->response->setOutput($this->load->view('group/group_member_list', $data));
		
	}

	public function change_status()
	{
		$this->load->model('group/group');
		$action = $this->request->get['action'];
		$data['members'] = $this->model_group_group->updatemenberstatus($action,$this->request->get['group_id'],$this->request->get['user_id']);


		$this->view_member();

	}

}
