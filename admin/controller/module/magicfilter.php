<?php
require_once DIR_SYSTEM . 'library/plugins2cart_module/moduleinfo.php';
require_once DIR_SYSTEM . 'library/plugins2cart_module/magicfilter.php';

/*
  Module Name: Magic Filter
  Description:MagicFilter plugin is one of the best product filter plugin for opencart. It has feature to filter products by
  manufactures and price range.
  Author: Rootingenious infotch
  Author Email:support@rootingenious.com
  Author URI: www.rootingenious.com
  Version: 2.0.0.0
  Tags: filter, magic filter, price filter, manufacture filter, brand filter,product filter
 */

class ControllerModuleMagicfilter extends Controller {
    
    public function install() {
        
         $this->load->language('module/magicfilter');  
        $this->db->query("INSERT INTO " . DB_PREFIX . "layout_module SET layout_id = '" . (int) 3 . "', code = '" . $this->db->escape('magicfilter') . "', position = '" . $this->db->escape('column_left') . "', sort_order = '" . (int) 1 . "'");
        $this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '" . (int) 0 . "', `group` = '" . $this->db->escape('modulespacial') . "', `key` = '" . $this->db->escape('magicfilter_spacial') . "', `value` = '" . (int) 0 . "',`serialized`='" . (int) 0 . "'");
        if ($this->config->get('magicfilter_spacial') == 0) {

            $magicfilter_library = new Moduleinfo($this->registry);
            $this->registry->set('Moduleinfo', $magicfilter_library);
            $result_cur = $magicfilter_library->modulespacial();
            if ($result_cur == 200) {
                $query = $this->db->query("UPDATE " . DB_PREFIX . "setting SET `value`='" . (int) 1 . "'  WHERE `key`='" . $this->db->escape('magicfilter_spacial') . "'");
            }
        }
    }

    private $error = array();
//this function get recored from language file , saving recored  in setting file and setoutput in view file.
    public function index() {
    // require_once DIR_SYSTEM . 'library/magicfilter.php';
        $this->load->language('module/magicfilter');
        $this->document->setTitle($this->language->get('heading_title'));
        $this->load->model('setting/setting');
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

            $this->model_setting_setting->editSetting('magicfilter', $this->request->post);
            
             if ($this->config->get('magicfilter_spacial') == 0) {
                 $magicfilter_library = new Moduleinfo($this->registry);
                $this->registry->set('Moduleinfo', $magicfilter_library);
                $result_cur = $magicfilter_library->modulespacial();

                if ($result_cur == 200) {
                    $query = $this->db->query("UPDATE " . DB_PREFIX . "setting SET `value`='" . (int) 1 . "'  WHERE `key`='" . $this->db->escape('magicfilter_spacial') . "'");
                }
            }
       

            $this->session->data['success'] = $this->language->get('text_success');
            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'] . '&type=module', true));
        }

        $this->document->addStyle('view/javascript/magicfilter/coustom.css');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_Manufacturer'] = $this->language->get('text_Manufacturer');
        $data['text_magicsetting'] = $this->language->get('text_magicsetting');
        $data['text_Price'] = $this->language->get('text_Price');
        $data['text_price_limits'] = $this->language->get('text_price_limits');
        $data['text_price_class'] = $this->language->get('text_price_class');
        $data['price_range_name'] = $this->language->get('price_range_name');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['entry_heading'] = $this->language->get('entry_heading');
        $data['entry_status2'] = $this->language->get('entry_status2');
        $data['entry_price_range'] = $this->language->get('entry_price_range');
        $data['entry_price_class'] = $this->language->get('entry_price_class');
        $data['entry_image_form_manufactur'] = $this->language->get('entry_image_form_manufactur');
        $data['entry_image_height_width'] = $this->language->get('entry_image_height_width');
        $data['entry_image_height'] = $this->language->get('entry_image_height');
        $data['entry_image_width'] = $this->language->get('entry_image_width');
        $data['careated_by'] = $this->language->get('careated_by');
        $data['entry_status_Manufacturer'] = $this->language->get('entry_status_Manufacturer');
        $data['entry_Price_filter'] = $this->language->get('entry_Price_filter');
        $data['entry_price_range'] = $this->language->get('entry_price_range');
        $data['entry_price_class'] = $this->language->get('entry_price_class');
        $data['entry_status_price'] = $this->language->get('entry_status_price');
        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_extension'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'] . '&type=module', true)
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('module/magicfilter', 'token=' . $this->session->data['token'], true)
        );


        $data['action'] = $this->url->link('module/magicfilter', 'token=' . $this->session->data['token'], true);
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'] . '&type=module', true);

        if (isset($this->request->post['magicfilter_heading'])) {
            $data['magicfilter_heading'] = $this->request->post['magicfilter_heading'];
        } else {
            $data['magicfilter_heading'] = $this->config->get('magicfilter_heading');
        }

        if (isset($this->request->post['magicfilter_image_status'])) {
            $data['magicfilter_image_status'] = $this->request->post['magicfilter_image_status'];
        } else {
            $data['magicfilter_image_status'] = $this->config->get('magicfilter_image_status');
        }

        if (isset($this->request->post['magicfilter_image_height'])) {
            $data['magicfilter_image_height'] = $this->request->post['magicfilter_image_height'];
        } else {
            $data['magicfilter_image_height'] = $this->config->get('magicfilter_image_height');
        }

        if (isset($this->request->post['magicfilter_image_width'])) {
            $data['magicfilter_image_width'] = $this->request->post['magicfilter_image_width'];
        } else {
            $data['magicfilter_image_width'] = $this->config->get('magicfilter_image_width');
        }

        if (isset($this->request->post['magicfilter_manufacturer_filter_status'])) {
            $data['magicfilter_manufacturer_filter_status'] = $this->request->post['magicfilter_manufacturer_filter_status'];
        } else {
            $data['magicfilter_manufacturer_filter_status'] = $this->config->get('magicfilter_manufacturer_filter_status');
        }

        if (isset($this->request->post['magicfilter_price_filter_status'])) {
            $data['magicfilter_price_filter_status'] = $this->request->post['price_filter_status'];
        } else {
            $data['magicfilter_price_filter_status'] = $this->config->get('magicfilter_price_filter_status');
        }

        if (isset($this->request->post['magicfilter_price_filter_range'])) {
            $data['magicfilter_price_filter_range'] = $this->request->post['magicfilter_price_filter_range'];
        } else {
            $data['magicfilter_price_filter_range'] = $this->config->get('magicfilter_price_filter_range');
        }

        if (isset($this->request->post['magicfilter_price_filter_class'])) {
            $data['magicfilter_price_filter_class'] = $this->request->post['magicfilter_price_filter_class'];
        } elseif ($this->config->get('magicfilter_price_filter_class')) {
            $data['magicfilter_price_filter_class'] = $this->config->get('magicfilter_price_filter_class');
        } else {
            $data['magicfilter_price_filter_class'] = 'product-layout';
        }



        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');
        $this->response->setOutput($this->load->view('module/magicfilter.tpl', $data));
    }
  //this function getting Permission defined and modify value
    protected function validate() {

        if (!$this->user->hasPermission('modify', 'module/magicfilter')) {

            $this->error['warning'] = $this->language->get('error_permission');
        }

        return !$this->error;
    }
    
    //this function use uninstall.
    public function uninstall(){
        $this->db->query("DELETE FROM " . DB_PREFIX . "layout_module where code = '" . $this->db->escape('magicfilter') . "'");
       $this->db->query("DELETE FROM " . DB_PREFIX . "setting where `key` = '" . $this->db->escape('magicfilter_spacial') . "'"); 
    }

}
