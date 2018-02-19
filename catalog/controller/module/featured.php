<?php
class ControllerModuleFeatured extends Controller {
	public function index($setting) {
		$this->load->language('module/featured');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');
		$this->load->model('account/catalog/seller');

		$this->load->model('tool/image');

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}
		$data['logged_in'] = $this->customer->isLogged();
		if(!$data['logged_in']){
			$this->session->data['redirect'] = $this->url->link('common/home');
		} else {
			$_SESSION['chat_username'] = $this->session->data['customer_id'];
		}
		if (!empty($setting['product'])) {
			$products = array_slice($setting['product'], 0, (int)$setting['limit']);

			foreach ($products as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);

				if ($product_info) {
					if ($product_info['image']) {
						$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$price = false;
					}

					if ((float)$product_info['special']) {
						$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$special = false;
					}

					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}

					if ($this->config->get('config_review_status')) {
						$rating = $product_info['rating'];
					} else {
						$rating = false;
					}
					
					if($product_info['seller_id'] != 0){
						$seller_details = $this->model_account_catalog_seller->getSeller($product_info['seller_id']);
					} else {
						$seller_details = array();
					}
					$current_date = time(); 
					if($product_info['date_modified']){
						$date_modified = strtotime($product_info['date_modified']);
						$date_modified_diff = $current_date - $date_modified;
						$date_modified_diff = floor($date_modified_diff / (60 * 60 * 24));
						if($date_modified_diff == 0 || $date_modified_diff == 1){
							$date_modified_diff = '1day ago';
						} else if($date_modified_diff > 1){
							$date_modified_diff = $date_modified_diff.'days ago';
						} else if($date_modified_diff > 30){
							$date_modified_diff = 'few months ago';
						}
					}
					$data['products'][] = array(
						'product_id'  => $product_info['product_id'],
						'thumb'       => $image,
						'seller_details'   => $seller_details,
						'name'        => $product_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
						'price'       => $price,
						'display_price'  => $product_info['display_price'],
						'special'     => $special,
						'tax'         => $tax,
						'rating'      => $rating,
						'date_modified_diff'      => $date_modified_diff,
						'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
						'reply_link'  => $this->url->link('account/message', 'seller=' . $product_info['seller_id'] . '&product_id=' . $product_info['product_id'])
					);
				}
			}
		}



		$data['is_seller'] = $this->customer->getSellerId();
		$data['is_seller_paid'] = $this->customer->isSellerPaid();

		if ($data['products']) {
			return $this->load->view('module/featured', $data);
		}
	}
}