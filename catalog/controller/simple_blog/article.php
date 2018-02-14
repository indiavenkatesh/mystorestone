<?php
	class ControllerSimpleBlogArticle extends Controller {
		public function index() {
			
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login/seller', '', true));
			}
			$this->language->load('simple_blog/article');

			if($this->config->has('simple_blog_heading')) {
				$this->document->setTitle($this->config->get('simple_blog_heading'));
			} else {
				$this->document->setTitle($this->language->get('heading_title'));
			}

			$this->load->model('simple_blog/article');
			$this->load->model('simple_blog/groups');

			$this->load->model('tool/image');

			$this->document->addStyle('catalog/view/theme/default/stylesheet/blog_custom.css');

			if($this->config->get('simple_blog_heading')) {
				$data['heading_title'] = $this->config->get('simple_blog_heading');
			} else {
				$data['heading_title'] = $this->language->get('heading_title');
			}
			$data['articles'] = array();

			if (isset($this->request->get['blog_search'])) {
				$blog_search = $this->request->get['blog_search'];
			} else {
				$blog_search = '';
			}
			if (isset($this->request->get['filter_group'])) {
				/*$filter_group = $this->model_simple_blog_groups->getGroupusersid($this->request->get['filter_group']);

				if(empty($filter_group)){
					$filter_group = array(0 => array('social_group_user_id' => -1));

                                        //check user available in table

				        $data['check_availability'] = $this->model_simple_blog_groups->checkAvailable($this->request->get['filter_group'],$this->session->data['customer_id']);

				}*/
                                $filter_group = $this->request->get['filter_group'];
			} else {
				$filter_group = '';

			}
			
if (isset($this->request->get['filter_group'])) {
  $data['check_availability'] = $this->model_simple_blog_groups->checkAvailable($this->request->get['filter_group'],$this->session->data['customer_id']);
 }

			if (isset($this->request->get['myprofile'])) {
				$myprofile = $this->session->data['customer_id'];
			} else {
				$myprofile = '';
			}

			/* Get User details */
			$data['userid'] =  $this->session->data['customer_id'];
			if($data['userid']){
			    $seller_check = $this->customer->hasSellerPermission($data['userid']);
				if(!$seller_check){
					$this->response->redirect($this->url->link('account/account', 'token=' . $this->session->data['token'], true));
				}
			}
			$_SESSION['chat_username'] = $data['userid'];
			$data['token'] = $this->session->data['token'];
			$data['username'] = $this->customer->getFirstName();
			
			$this->load->model('tool/image');
			$this->load->model('account/catalog/seller');
			$seller_info = $this->model_account_catalog_seller->getSeller($data['userid']);

			$data['current_seller_info'] = $seller_info;

			if (!empty($seller_info) && is_file(DIR_IMAGE . $seller_info['logo'])) {
				$data['thumb'] = $this->model_tool_image->resize($seller_info['logo'], 50, 50);
			} else {
				$data['thumb'] = 'catalog/view/theme/mystonestore/img/db.png';
			}
			
			$data['action'] = $this->url->link('simple_blog/article/insert', 'token=' . $this->session->data['token'], true);
			$data['group_action'] = $this->url->link('simple_blog/article/creategroup', 'token=' . $this->session->data['token'], true);
			$data['group_all_url'] = $this->url->link('simple_blog/article/grouplist', 'token=' . $this->session->data['token'], true);
			$data['group_filter_url'] = $this->url->link('simple_blog/article', 'token=' . $this->session->data['token'], true);
			
			$this->load->model('redzone/redzone');
			$data['new_blacklist'] = $this->model_redzone_redzone->get_new_redzone();
		
			/* Get User details */
			if (isset($this->request->get['page'])) {
				$page = $this->request->get['page'];
			} else {
				$page = 1;
			}

			if (isset($this->request->get['limit'])) {
				$limit = $this->request->get['limit'];
			} else {
				$limit = 100;
			}

			$filter_data = array(
				'blog_search'	=> $blog_search,
				'filter_group'	=> $filter_group,
				'author'	=> $myprofile,
				'start'	=> ($page - 1) * $limit,
				'limit'	=> $limit
			);

			$blog_total = $this->model_simple_blog_article->getTotalArticle($filter_data);
			
			//get group lists
			$data['user_group_lists'] = $this->model_simple_blog_groups->getGroupbycreated($data['userid']);
			$data['user_group_lists_in'] = $this->model_simple_blog_groups->getusergroup($data['userid']);
			$data['group_lists'] = $this->model_simple_blog_groups->getAllgroups($data['userid']);
			$data['users_lists'] = $this->model_simple_blog_groups->getUsersList($data['userid']);
			$data['user_group_lists_members'] = array();
			$data['group_lists_members'] = array();
			if($data['user_group_lists']){
				foreach($data['user_group_lists'] as $user_group_lists_row){
					$data['user_group_lists_members'][$user_group_lists_row['social_group_id']] = $this->model_simple_blog_groups->getGroupusers($user_group_lists_row['social_group_id']);
				}
			}
			if($data['group_lists']){
				foreach($data['group_lists'] as $group_lists_row){
					$data['group_lists_members'][$group_lists_row['social_group_id']] = $this->model_simple_blog_groups->getGroupusers($group_lists_row['social_group_id']);
				}
			}
			
			$results = $this->model_simple_blog_article->getArticles($filter_data);

			//print "<pre>"; print_r($results); exit;

			foreach($results as $result) {

				$description = utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 300) . '...';
				$full_description = strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'));

				if($result['featured_image']) {
				$image = HTTP_SERVER . 'image/' . $result['featured_image'];
				$featured_found = 1;
				//$image = $this->model_tool_image->resize($result['featured_image'], 873, 585);
			} else if($result['image']) {
				$image = HTTP_SERVER . 'image/' . $result['image'];
				$featured_found = '';
				//$image = $this->model_tool_image->resize($result['image'], 873, 585);
			} else {
				$image = '';
				$featured_found = '';
			}
			
				$seller_info = $this->model_account_catalog_seller->getSeller($result['author_user_id']);

				if (!empty($seller_info) && is_file(DIR_IMAGE . $seller_info['logo'])) {
					$thumb = $this->model_tool_image->resize($seller_info['logo'], 50, 50);
				} else {
					$thumb = 'catalog/view/theme/mystonestore/img/db.png';
				}
				// get like and share count
				$get_likes = $this->model_simple_blog_article->getUserLikes($result['simple_blog_article_id'],$data['userid'],'liked');
				$total_likes_shares = $this->model_simple_blog_article->getTotalLikeandShares($result['simple_blog_article_id']);
				$total_likes = $total_shares = $total_spams = 0;
				if(!empty($total_likes_shares)){
					$total_likes = $total_likes_shares['likes_count'];
					$total_shares = $total_likes_shares['shares_count'];
					$total_spams = $total_likes_shares['spam_count'];
				}
				// get total comments
				$total_comments = $this->model_simple_blog_article->getTotalComments($result['simple_blog_article_id']);
				$comments_array = array();
				$comments_results = $this->model_simple_blog_article->getCommentsByArticle($result['simple_blog_article_id'],0, 0, 0);
				foreach ($comments_results as $comments_result) {

					$comment_reply = '';
					$comment_replies = array();
					$comment_reply = $this->model_simple_blog_article->getCommentsByArticle($result['simple_blog_article_id'], 0, 1000, $comments_result['simple_blog_comment_id']);

					foreach($comment_reply as $comment) {
						$comment_replies[] = array(
							'author'    => $comment['author'],
							'date_added'    => date($this->language->get('text_date_format_long'), strtotime($comment['date_added'])),
							'comment'       => $comment['comment']
						);
					}
					
					$seller_info = $this->model_account_catalog_seller->getSeller($comments_result['simple_blog_article_reply_id']);

					if (!empty($seller_info) && is_file(DIR_IMAGE . $seller_info['logo'])) {
						$cthumb = $this->model_tool_image->resize($seller_info['logo'], 50, 50);
					} else {
						$cthumb = 'catalog/view/theme/mystonestore/img/db.png';
					}

					$comments_array[] = array(
						'simple_blog_article_id' 	=> $comments_result['simple_blog_article_id'],
						'simple_blog_comment_id' 	=> $comments_result['simple_blog_comment_id'],
						'comment_reply'		=> $comment_replies,
						'author'     		=> ucwords($comments_result['author']),
						'cthumb'     		=> $cthumb,
						'comment'       	=> $comments_result['comment'],
						'date_added' 		=> date($this->language->get('text_date_format_long'), strtotime($comments_result['date_added']))
					);
				}
				
				$shared_articles = array();
				if(!empty($result['article_shared_id'])){
					$shared_articless = $this->model_simple_blog_article->getArticle($result['article_shared_id']);		
					if(isset($shared_articless['featured_image'])) {
						$shared_articless['image'] = HTTP_SERVER . 'image/' . $shared_articless['featured_image'];
					} else if(isset($shared_articless['image'])) {
						$shared_articless['image'] = HTTP_SERVER . 'image/' . $shared_articless['image'];
					} 
					$shared_articles[] = $shared_articless;
				}
                                //same user
				if($data['userid'] == $result['author_user_id']){
					$result['same_user'] = 1;
				}else{
					$result['same_user'] = 0;
				}
				$data['articles'][] = array(
					'simple_blog_article_id'	=> $result['simple_blog_article_id'],
					'article_title'		=> $result['article_title'],
					'author_name'		=> $result['author_name'],
					'author_user_id'	=> $result['author_user_id'],
                                        'same_user'			=> $result['same_user'],
					'image'				=> $image,
					'thumb'				=> $thumb,
					'featured_found'	=> $featured_found,
					'date_added'		=> date($this->language->get('text_date_format_long'), strtotime($result['date_modified'])),
					'description'		=> $description,
					'full_description'	=> $full_description,
					'allow_comment'		=> $result['allow_comment'],
					'total_comment'		=> $total_comments,
					'comments'			=> $comments_array,
					'get_likes' 		=> $get_likes,
					'total_likes' 		=> $total_likes,
					'total_shares' 		=> $total_shares,
					'total_spams' 		=> $total_spams,
					'shared_articles' 	=> $shared_articles,
					'href'				=> $this->url->link('simple_blog/article/view', 'simple_blog_article_id=' . $result['simple_blog_article_id'], 'SSL'),
					'author_href'		=> $this->url->link('simple_blog/author', 'simple_blog_author_id=' . $result['simple_blog_author_id'], 'SSL'),
					'comment_href'		=> $this->url->link('simple_blog/article/view', 'simple_blog_article_id=' . $result['simple_blog_article_id'], 'SSL')
				);
			}

			//print "<pre>"; print_r($data['articles']); exit;

			$data['button_continue_reading'] = $this->language->get('button_continue_reading');
			$data['text_no_found'] = $this->language->get('text_no_found');

			$data['breadcrumbs'] = array();

			$data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_home'),
				'href'      => $this->url->link('common/home'),
				'separator' => false
			);

			$data['breadcrumbs'][] = array(
				'text'      => $this->language->get('heading_title'),
				'href'      => $this->url->link('simple_blog/article'),
				'separator' => ' :: '
			);

			$pagination = new Pagination();
			$pagination->total = $blog_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->text = $this->language->get('text_pagination');
			$pagination->url = $this->url->link('simple_blog/article', '&page={page}');

			$data['pagination'] = $pagination->render();

            $data['results'] = sprintf($this->language->get('text_pagination'), ($blog_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($blog_total - $limit)) ? $blog_total : ((($page - 1) * $limit) + $limit), $blog_total, ceil($blog_total / $limit));

            $data['column_left'] = $this->load->controller('common/column_left');
    		$data['column_right'] = $this->load->controller('common/column_right');
    		$data['content_top'] = $this->load->controller('common/content_top');
    		$data['content_bottom'] = $this->load->controller('common/content_bottom');
    		$data['footer'] = $this->load->controller('common/socialfooter');
    		$data['header'] = $this->load->controller('common/socialheader');

				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . 'extension/module/simple_blog/article.tpl')) {
    			$this->response->setOutput($this->load->view($this->config->get('config_template') . 'extension/module/simple_blog/article.tpl', $data));
    		} else {
    			$this->response->setOutput($this->load->view('extension/module/simple_blog/article.tpl', $data));
    		}
		}

		public function view() {
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$this->language->load('simple_blog/article');

			//$this->document->setTitle($this->language->get('heading_title'));
			if($this->config->get('simple_blog_heading')) {
				$this->document->setTitle($this->config->get('simple_blog_heading'));
			} else {
				$this->document->setTitle($this->language->get('heading_title'));
			}

			$this->load->model('simple_blog/article');

			$this->load->model('tool/image');

			$this->load->model('catalog/product');

			$this->document->addStyle('catalog/view/theme/default/stylesheet/blog_custom.css');

			if(isset($this->request->get['simple_blog_article_id'])) {
				$simple_blog_article_id = $this->request->get['simple_blog_article_id'];
			} else {
				$simple_blog_article_id = 0;
			}

			if($simple_blog_article_id) {

				$data['simple_blog_article_id'] = $simple_blog_article_id;

				if($this->config->has('simple_blog_product_related_heading')) {
					$data['text_related_product'] = $this->config->get('simple_blog_product_related_heading');
				} else {
					$data['text_related_product'] = $this->language->get('text_related_product');
				}

				//$data['button_cart'] = $this->language->get('button_cart');

// echo "<pre>";print_r($this->config);
				if($this->config->has('simple_blog_comment_related_heading')) {
					$data['text_related_comment'] = $this->config->get('simple_blog_comment_related_heading');
				} else {
					$data['text_related_comment'] = $this->language->get('text_related_comment');
				}

				if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('article_info', (array)$this->config->get('config_captcha_page'))) {
								$data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'), $this->error);
							} else {
								$data['captcha'] = '';
							}

				$data['text_write_comment'] = $this->language->get('text_write_comment');

				$data['text_note'] = $this->language->get('text_note');
				$data['text_wait'] = $this->language->get('text_wait');

				$data['entry_name'] = $this->language->get('entry_name');
				$data['entry_captcha'] = $this->language->get('entry_captcha');
				$data['entry_review'] = $this->language->get('entry_review');

				$data['button_submit'] = $this->language->get('button_submit');

				$data['text_no_found'] = $this->language->get('text_no_found');

				$article_info = $this->model_simple_blog_article->getArticle($simple_blog_article_id);

				if($article_info) {

					$this->document->setTitle($article_info['article_title']);
					$this->document->setDescription($article_info['meta_description']);
					$this->document->setKeywords($article_info['meta_keyword']);

					//print "<pre>"; print_r($article_info); exit;
					$data['article_info_found'] = $article_info;

					// here comes means customer or other viewer can see the blog so need to increment the view counter
					$this->model_simple_blog_article->addBlogView($article_info['simple_blog_article_id']);

					if($article_info['featured_image']) {
						$data['featured_found'] = 1;
						$data['image'] = HTTP_SERVER . 'image/' . $article_info['featured_image'];
						//$image = $this->model_tool_image->resize($result['featured_image'], 873, 585);
					} else if($article_info['image']) {
						$data['image'] = HTTP_SERVER . 'image/' . $article_info['image'];
						$featured_found = '';
						//$image = $this->model_tool_image->resize($result['image'], 873, 585);
					} else {
						$data['image'] = '';
						$featured_found = '';
					}
					// author url
					$data['author_url'] = $this->url->link('simple_blog/author', 'simple_blog_author_id=' . $article_info['simple_blog_author_id'], 'SSL');

					// get total comments
					$total_comments = $this->model_simple_blog_article->getTotalComments($simple_blog_article_id);

					if($total_comments != 1) {
						$data['total_comment'] = $total_comments . " " . $this->language->get('text_comments');
					} else {
						$data['total_comment'] = $total_comments . " " . $this->language->get('text_comment');
					}

					$data['article_info'] = $article_info;

					$data['article_date_modified'] = date($this->language->get('text_date_format'), strtotime($article_info['date_modified']));

					$data['article_additional_description'] = $this->model_simple_blog_article->getArticleAdditionalDescription($simple_blog_article_id);

                    // related product
					$related_product = $this->model_simple_blog_article->getArticleProductRelated($simple_blog_article_id);

					$data['products'] = array();

					foreach($related_product as $product) {

						$product_info = $this->model_catalog_product->getProduct($product['product_id']);
//echo "<pre>";print_r($product_info);
						$image = ($product_info['image']) ? $this->model_tool_image->resize($product_info['image'], $this->config->get('theme_default_image_related_width'), $this->config->get('theme_default_image_related_height')) : false;

					//$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					$price = (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) ? $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']) : false;

						$special = ((float)$product_info['special']) ? $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']) : false;

						$rating = ($this->config->get('config_review_status')) ? (int)$product_info['rating'] : false;

						$data['products'][] = array(
							'product_id' => $product_info['product_id'],
							'thumb'   	 => $image,
							'name'    	 => $product_info['name'],
							'price'   	 => $price,
							'special' 	 => $special,
							'rating'     => $rating,
							'reviews'    => sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']),
							'href'    	 => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
						);
					}

					// author related information
					$author_info = $this->model_simple_blog_article->getAuthorInformation($article_info['simple_blog_author_id']);

					//print "<pre>"; print_r($author_info); exit;

					if($author_info) {

						$data['author_name'] = $author_info['name'];

						if($author_info['image']) {
							$data['author_image'] = $this->model_tool_image->resize($author_info['image'], 100, 100);
						} else {
							$data['author_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
						}

						$data['author_description'] = html_entity_decode($author_info['description'], ENT_QUOTES, 'UTF-8');
					}

					// related article information
					$data['text_related_article'] = $this->language->get('text_related_article');
                    $data['text_author_information'] = $this->language->get('text_author_information');
					$data['text_posted_by'] = $this->language->get('text_posted_by');
					$data['text_on'] = $this->language->get('text_on');
					$data['text_updated'] = $this->language->get('text_updated');
					$data['text_comment_on_article'] = $this->language->get('text_comment_on_article');
					$data['text_view_comment'] = $this->language->get('text_view_comment');
					$data['button_continue_reading'] = $this->language->get('button_continue_reading');

					$related_articles = $this->model_simple_blog_article->getRelatedArticles($article_info['simple_blog_article_id']);
                    $data['related_articles'] = array();

                    foreach($related_articles as $article) {
                        $data['related_articles'][] = array(
    						'simple_blog_article_id'	=> $article['simple_blog_article_id'],
    						'article_title'		=> $article['article_title'],
    						'simple_blog_author_id'	=> $article['simple_blog_author_id'],
    						'image'				=> $article['image'],
    						'description'		=> $article['description'],
    						'author_name'		=> $article['author_name'],
    						'date_added'		=> date('F jS, Y', strtotime($article['date_added'])),
    						'date_modified'		=> date('F jS, Y', strtotime($article['date_modified'])),
    						'total_comment'		=> $article['total_comment'],
                            'article_href'      => $this->url->link('simple_blog/article/view', 'simple_blog_article_id=' . $article['simple_blog_article_id'], 'SSL'),
                            'author_href'       => $this->url->link('simple_blog/author', 'simple_blog_author_id=' . $article['simple_blog_author_id'], 'SSL')
    					);
                    }

					// echo "<pre>"; print_r($this->config); die;
                    if($this->config->has('simple_blog_related_articles')) {
                        $data['simple_blog_related_articles'] = $this->config->get('simple_blog_related_articles');
                    }

                    if($this->config->has('simple_blog_author_information')) {
                        $data['simple_blog_author_information'] = $this->config->get('simple_blog_author_information');
                    }

                    if($this->config->has('simple_blog_share_social_site')) {
                        $data['simple_blog_share_social_site'] = $this->config->get('simple_blog_share_social_site');
                    }

				}

				$data['breadcrumbs'] = array();

				$data['breadcrumbs'][] = array(
					'text'      => $this->language->get('text_home'),
					'href'      => $this->url->link('common/home'),
					'separator' => false
				);

				$data['breadcrumbs'][] = array(
					'text'      => $this->language->get('heading_title'),
					'href'      => $this->url->link('simple_blog/article'),
					'separator' => ' :: '
				);

                $data['column_left'] = $this->load->controller('common/column_left');
        		$data['column_right'] = $this->load->controller('common/column_right');
        		$data['content_top'] = $this->load->controller('common/content_top');
        		$data['content_bottom'] = $this->load->controller('common/content_bottom');
        		$data['footer'] = $this->load->controller('common/socialfooter');
        		$data['header'] = $this->load->controller('common/socialheader');

        		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . 'extension/module/simple_blog/article_info.tpl')) {
        			$this->response->setOutput($this->load->view($this->config->get('config_template') . 'extension/module/simple_blog/article_info.tpl', $data));
        		} else {
        			$this->response->setOutput($this->load->view('extension/module/simple_blog/article_info.tpl', $data));
        		}

			} else {

				$url = '';

				if (isset($this->request->get['article_id'])) {
					$url .= '&article_id=' . $this->request->get['article_id'];
				}

				if (isset($this->request->get['page'])) {
					$url .= '&page=' . $this->request->get['page'];
				}

				if (isset($this->request->get['limit'])) {
					$url .= '&limit=' . $this->request->get['limit'];
				}

				$data['breadcrumbs'][] = array(
					'text'      => $this->language->get('text_home'),
					'href'      => $this->url->link('common/home'),
					'separator' => false
				);

				$data['breadcrumbs'][] = array(
					'text'      => $this->language->get('heading_title'),
					'href'      => $this->url->link('simple_blog/article'),
					'separator' => $this->language->get('text_separator')
				);

				$data['breadcrumbs'][] = array(
					'text'      => $this->language->get('text_category_error'),
					'href'      => $this->url->link('blog/author', $url),
					'separator' => $this->language->get('text_separator')
				);

				$this->document->setTitle($this->language->get('text_article_error'));

				$data['heading_title'] = $this->language->get('text_article_error');

				$data['text_error'] = $this->language->get('text_article_error');

				$data['button_continue'] = $this->language->get('button_continue');

				$data['continue'] = $this->url->link('common/home');

				$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . '/1.1 404 Not Found');

                $data['column_left'] = $this->load->controller('common/column_left');
        		$data['column_right'] = $this->load->controller('common/column_right');
        		$data['content_top'] = $this->load->controller('common/content_top');
        		$data['content_bottom'] = $this->load->controller('common/content_bottom');
        		$data['footer'] = $this->load->controller('common/socialfooter');
        		$data['header'] = $this->load->controller('common/socialheader');

        		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . 'extension/module/simple_blog/not_found.tpl')) {
        			$this->response->setOutput($this->load->view($this->config->get('config_template') . 'extension/module/simple_blog/not_found.tpl', $data));
        		} else {
        			$this->response->setOutput($this->load->view('extension/module/simple_blog/article_info.tpl', $data));
        		}
			}
		}

		public function comment() {
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$this->language->load('simple_blog/article');

			$this->load->model('simple_blog/article');

			$data['text_on'] = $this->language->get('text_on');
			$data['text_said'] = $this->language->get('text_said');
			$data['text_no_blog'] = $this->language->get('text_no_blog');

			if (isset($this->request->get['page'])) {
				$page = $this->request->get['page'];
			} else {
				$page = 1;
			}

			$data['text_reply_comment'] = $this->language->get('text_reply_comment');

			$data['comments'] = array();

			$comment_total = $this->model_simple_blog_article->getTotalCommentsByArticleId($this->request->get['simple_blog_article_id']);

			$results = $this->model_simple_blog_article->getCommentsByArticle($this->request->get['simple_blog_article_id'],($page - 1) * 10, 10, 0);

			//print "<pre>"; print_r($results); exit;
			$this->load->model('tool/image');
			$this->load->model('account/catalog/seller');
			
			foreach ($results as $result) {

				$comment_reply = '';
				$comment_replies = array();
				$comment_reply = $this->model_simple_blog_article->getCommentsByArticle($this->request->get['simple_blog_article_id'], 0, 1000, $result['simple_blog_comment_id']);

                foreach($comment_reply as $comment) {
                    $comment_replies[] = array(
                        'author'    => $comment['author'],
                        'date_added'    => date($this->language->get('text_date_format_long'), strtotime($comment['date_added'])),
                        'comment'       => $comment['comment']
                    );
                }
				
				$seller_info = $this->model_account_catalog_seller->getSeller($result['simple_blog_article_reply_id']);

				if (!empty($seller_info) && is_file(DIR_IMAGE . $seller_info['logo'])) {
					$cthumb = $this->model_tool_image->resize($seller_info['logo'], 50, 50);
				} else {
					$cthumb = 'catalog/view/theme/mystonestore/img/db.png';
				}
				
				$data['comments'][] = array(
					'simple_blog_article_id' 	=> $result['simple_blog_article_id'],
					'simple_blog_comment_id' 	=> $result['simple_blog_comment_id'],
					'comment_reply'		=> $comment_replies,
					'author'     		=> ucwords($result['author']),
					'cthumb'     		=> $cthumb,
					'comment'       	=> $result['comment'],
					'date_added' 		=> date($this->language->get('text_date_format_long'), strtotime($result['date_added']))
				);
			}

			//print "<pre>"; print_r($data['comments']); exit;

			$pagination = new Pagination();
			$pagination->total = $comment_total;
			$pagination->page = $page;
			$pagination->limit = 5;
			$pagination->text = $this->language->get('text_pagination');
			$pagination->url = $this->url->link('simple_blog/article/comment', 'simple_blog_article_id=' . $this->request->get['simple_blog_article_id'] . '&page={page}');

			$data['pagination'] = $pagination->render();

            $data['results'] = sprintf($this->language->get('text_pagination'), ($comment_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($comment_total - 5)) ? $comment_total : ((($page - 1) * 5) + 5), $comment_total, ceil($comment_total / 5));


            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . 'extension/module/simple_blog/article_comment.tpl')) {
    			$this->response->setOutput($this->load->view($this->config->get('config_template') . 'extension/module/simple_blog/article_comment.tpl', $data));
    		} else {
    			$this->response->setOutput($this->load->view('extension/module/simple_blog/article_comment.tpl', $data));
    		}
		}

		public function writeComment() {
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$this->load->model('simple_blog/article');

			$this->language->load('simple_blog/article');

			$json = array();

			if ($this->request->server['REQUEST_METHOD'] == 'POST') {

				if ((utf8_strlen($this->request->post['text']) < 3) || (utf8_strlen($this->request->post['text']) > 1000)) {
					$json['error'] = $this->language->get('error_text');
				}

				if (!isset($json['error'])) {
					//print_r($this->request->post); exit;
					$this->model_simple_blog_article->addArticleComment($this->request->get['simple_blog_article_id'], $this->request->post);
					// get total comments
					$json['total_comments'] = $this->model_simple_blog_article->getTotalComments($this->request->get['simple_blog_article_id']);
					if($this->config->get('simple_blog_comment_auto_approval')) {
						$json['success'] = $this->language->get('text_success');
					} else {
						$json['success'] = $this->language->get('text_success_approval');
					}

				}
			}

			$this->response->setOutput(json_encode($json));
		}
		public function insert(){
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
					$this->load->model('simple_blog/article');
					if(isset($this->request->post['share_article_id'])){
						$this->model_simple_blog_article->shareArticle($this->request->post);
					} else {
						$this->model_simple_blog_article->addArticle($this->request->post);
					}
			}
			$this->response->redirect($this->url->link('simple_blog/article', 'token=' . $this->session->data['token'] , 'SSL'));
		}
		public function action(){
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$json = array();
			if (($this->request->post['action'] == 'like')) {
				$this->load->model('simple_blog/article');
				$this->model_simple_blog_article->addArticleLikes($this->request->post['article_id']);
				$json['count'] = $this->model_simple_blog_article->getTotalLikeandShares($this->request->post['article_id'],'likes_count');
				$json['success'] = '1';
			} else if (($this->request->post['action'] == 'unlike')) {
				$this->load->model('simple_blog/article');
				$this->model_simple_blog_article->subArticleLikes($this->request->post['article_id']);
				$json['count'] = $this->model_simple_blog_article->getTotalLikeandShares($this->request->post['article_id'],'likes_count');
				$json['success'] = '1';
			} else {
				$json['error'] = '0';
			}
			$this->response->setOutput(json_encode($json));
		}
		
		public function articleupload() {
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$json = array();
			$directory = DIR_IMAGE . 'catalog';

			if (!$json) {
				if (!empty($this->request->files['file']['name']) && is_file($this->request->files['file']['tmp_name'])) {
					// Sanitize the filename
					$filename = basename(html_entity_decode($this->request->files['file']['name'], ENT_QUOTES, 'UTF-8'));

					// Validate the filename length
					if ((utf8_strlen($filename) < 3) || (utf8_strlen($filename) > 255)) {
						$json['error'] = 'Invalid file name';
					}

					// Allowed file extension types
					$allowed = array(
						'jpg',
						'jpeg',
						'gif',
						'png',
						'mp4',
						'webm',
						'ogv'
					);

					if (!in_array(utf8_strtolower(utf8_substr(strrchr($filename, '.'), 1)), $allowed)) {
						$json['error'] = 'Invalid file type';
					}

					// Allowed file mime types
					$allowed = array(
						'image/jpeg',
						'image/pjpeg',
						'image/png',
						'image/x-png',
						'image/gif',
						'video/webm',
						'video/mp4',
						'video/ogv',
					);

					if (!in_array($this->request->files['file']['type'], $allowed)) {
						$json['error'] = 'Invalid file type';
					}

					// Return any upload error
					if ($this->request->files['file']['error'] != UPLOAD_ERR_OK) {
						$json['error'] = 'Invalid file type';
					}
				} else {
					$json['error'] = 'Invalid file type';
				}
			}

			if (!$json) {
				move_uploaded_file($this->request->files['file']['tmp_name'], $directory . '/' . $filename);
				$req_data['image'] = 'catalog/'.$filename;
				$req_data['comment'] = 'image';
                                $req_data['social_group_id'] = $this->request->post['social_group_id'];
				$video_allowed = array(
					'video/webm',
					'video/mp4',
					'video/ogv',
				);
				if (in_array($this->request->files['file']['type'], $video_allowed)) {
					$req_data['comment'] = 'video';
				}
				$this->load->model('simple_blog/article');
				$this->model_simple_blog_article->addArticle($req_data);
				$json['success'] = $this->language->get('text_uploaded');
				$json['error'] = "You can only add 3 photo's  and 1 video per day.";

			}
			$this->response->setOutput(json_encode($json));
		}
		public function creategroup(){
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
					$this->load->model('simple_blog/groups');
					if(isset($this->request->post['edit_group_list'])){
						$this->model_simple_blog_groups->editGroup($this->request->post['edit_group_list'], $this->request->post);						
					} else {
						$this->model_simple_blog_groups->addGroup($this->request->post);						
					}
			}
			$this->response->redirect($this->url->link('simple_blog/article', 'token=' . $this->session->data['token'] , 'SSL'));
		}
		public function groupdelete(){
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$json = array();
			$this->load->model('simple_blog/groups');
			$this->model_simple_blog_groups->deleteGroup($this->request->post['group_id']);
			$json['success'] = '1';
			$this->response->setOutput(json_encode($json));
		}
		public function groupjoin(){
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$json = array();
			$this->load->model('simple_blog/groups');
                        $data['social_group_user_id'] = isset($this->session->data['user_id'])? $this->session->data['user_id'] : $this->session->data['customer_id'];

          //check already exist in group
                       $check_exist = $this->model_simple_blog_groups->checkAvailableuser($this->request->post['group_id'],$data['social_group_user_id']);
                       if(!empty($check_exist))
                       {
                         $json['success'] = '0';
			 $this->response->setOutput(json_encode($json));
                       }
                       else
                       {
                        $data['social_group_user_id'] = $this->session->data['customer_id'];
			$data['social_group_id'] = $this->request->post['group_id'];
			$this->model_simple_blog_groups->joinGroup($data);
			$json['success'] = '1';
			$this->response->setOutput(json_encode($json));
                        }
		}
		public function groupleave(){
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$json = array();
			$this->load->model('simple_blog/groups');
			$data['social_group_user_id'] = isset($this->session->data['user_id'])? $this->session->data['user_id'] : $this->session->data['customer_id'];
                        $data['social_group_user_id'] = $this->session->data['customer_id'];
			$data['social_group_id'] = $this->request->post['group_id'];
			$this->model_simple_blog_groups->leaveGroup($data);
			$json['success'] = '1';
			$this->response->setOutput(json_encode($json));
		}
		public function getuserlists(){
			$json = array();
			$this->load->model('simple_blog/groups');
			$get_user_lists = $this->model_simple_blog_groups->getAllUsersList();
			$this->response->setOutput(json_encode($get_user_lists));
		}
		public function spamArticle() {
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$this->load->model('simple_blog/article');

			$this->language->load('simple_blog/article');

			$json = array();

			if ($this->request->server['REQUEST_METHOD'] == 'POST') {

				if ((utf8_strlen($this->request->post['text']) < 3) || (utf8_strlen($this->request->post['text']) > 1000)) {
					$json['error'] = $this->language->get('error_text');
				}

				if (!isset($json['error'])) {
					//print_r($this->request->post); exit;
					$this->model_simple_blog_article->addArticleSpam($this->request->get['simple_blog_article_id'], $this->request->post);
					$json['success'] = $this->language->get('text_success');
				}
			}

			$this->response->setOutput(json_encode($json));
		}
		public function grouplist() {
			
			if (!$this->customer->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('simple_blog/article', '', true);

				$this->response->redirect($this->url->link('account/login', '', true));
			}
			$this->language->load('simple_blog/article');

			if($this->config->has('simple_blog_heading')) {
				$this->document->setTitle($this->config->get('simple_blog_heading'));
			} else {
				$this->document->setTitle($this->language->get('heading_title'));
			}

			$this->load->model('simple_blog/article');
			$this->load->model('simple_blog/groups');

			$this->load->model('tool/image');

			$this->document->addStyle('catalog/view/theme/default/stylesheet/blog_custom.css');

			if($this->config->get('simple_blog_heading')) {
				$data['heading_title'] = $this->config->get('simple_blog_heading');
			} else {
				$data['heading_title'] = $this->language->get('heading_title');
			}
			$data['articles'] = array();

			if (isset($this->request->get['blog_search'])) {
				$blog_search = $this->request->get['blog_search'];
			} else {
				$blog_search = '';
			}
			
			if (isset($this->request->get['filter_group'])) {
				$filter_group = $this->model_simple_blog_groups->getGroupusersid($this->request->get['filter_group']);
				if(empty($filter_group)){
					$filter_group = array(0 => array('social_group_user_id' => -1));
				}
			} else {
				$filter_group = '';
			}

			if (isset($this->request->get['myprofile'])) {
				$myprofile = $this->session->data['customer_id'];
			} else {
				$myprofile = '';
			}

			/* Get User details */
			$data['userid'] =  $this->session->data['customer_id'];
			if($data['userid']){
			    $seller_check = $this->customer->hasSellerPermission($data['userid']);
				if(!$seller_check){
					$this->response->redirect($this->url->link('account/account', 'token=' . $this->session->data['token'], true));
				}
			}
			$_SESSION['chat_username'] = $data['userid'];
			$data['token'] = $this->session->data['token'];
			$data['username'] = $this->customer->getFirstName();
			$data['action'] = $this->url->link('simple_blog/article/insert', 'token=' . $this->session->data['token'], true);
			$data['group_action'] = $this->url->link('simple_blog/article/creategroup', 'token=' . $this->session->data['token'], true);
			$data['group_all_url'] = $this->url->link('simple_blog/article/grouplist', 'token=' . $this->session->data['token'], true);
			$data['group_filter_url'] = $this->url->link('simple_blog/article', 'token=' . $this->session->data['token'], true);
			
			/* Get User details */
			if (isset($this->request->get['page'])) {
				$page = $this->request->get['page'];
			} else {
				$page = 1;
			}

			if (isset($this->request->get['limit'])) {
				$limit = $this->request->get['limit'];
			} else {
				$limit = 100;
			}

			$filter_data = array(
				'blog_search'	=> $blog_search,
				'filter_group'	=> $filter_group,
				'author'	=> $myprofile,
				'start'	=> ($page - 1) * $limit,
				'limit'	=> $limit
			);

			$blog_total = $this->model_simple_blog_article->getTotalArticle($filter_data);
			
			//get group lists
			$data['user_group_lists'] = $this->model_simple_blog_groups->getGroupbycreated($data['userid']);
			$data['group_lists'] = $this->model_simple_blog_groups->getAllgroups($data['userid']);
			$data['users_lists'] = $this->model_simple_blog_groups->getUsersList($data['userid']);
			$data['user_group_lists_members'] = array();
			$data['group_lists_members'] = array();
			if($data['user_group_lists']){
				foreach($data['user_group_lists'] as $user_group_lists_row){
					$data['user_group_lists_members'][$user_group_lists_row['social_group_id']] = $this->model_simple_blog_groups->getGroupusers($user_group_lists_row['social_group_id']);
				}
			}
			if($data['group_lists']){
				foreach($data['group_lists'] as $group_lists_row){
					$data['group_lists_members'][$group_lists_row['social_group_id']] = $this->model_simple_blog_groups->getGroupusers($group_lists_row['social_group_id']);
				}
			}
			
			
			$data['button_continue_reading'] = $this->language->get('button_continue_reading');
			$data['text_no_found'] = $this->language->get('text_no_found');

			$data['breadcrumbs'] = array();

			$data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_home'),
				'href'      => $this->url->link('common/home'),
				'separator' => false
			);

			$data['breadcrumbs'][] = array(
				'text'      => $this->language->get('heading_title'),
				'href'      => $this->url->link('simple_blog/article'),
				'separator' => ' :: '
			);

			
            $data['column_left'] = $this->load->controller('common/column_left');
    		$data['column_right'] = $this->load->controller('common/column_right');
    		$data['content_top'] = $this->load->controller('common/content_top');
    		$data['content_bottom'] = $this->load->controller('common/content_bottom');
    		$data['footer'] = $this->load->controller('common/socialfooter');
    		$data['header'] = $this->load->controller('common/socialheader');

				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . 'extension/module/simple_blog/group_list.tpl')) {
    			$this->response->setOutput($this->load->view($this->config->get('config_template') . 'extension/module/simple_blog/group_list.tpl', $data));
    		} else {
    			$this->response->setOutput($this->load->view('extension/module/simple_blog/group_list.tpl', $data));
    		}
	}
	public function remove_post(){ 
		$article_id = $this->request->post['blog_id'];
		$this->load->model('simple_blog/article');
		if($this->model_simple_blog_article->deleteArticalById($article_id)){
			echo  $article_id;
		}else{
			echo 'failed';
		}
	}
	
}
?>
