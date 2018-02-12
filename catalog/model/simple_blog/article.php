<?php
	class ModelSimpleBlogArticle extends Model {
		
		public function getTotalArticle($data = array()) {
			
			$sql = "SELECT COUNT(DISTINCT(sba.simple_blog_article_id)) AS total FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_store` sbas ON(sba.simple_blog_article_id=sbas.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) WHERE sba.status=1 AND sbau.status=1 AND sbas.store_id='" . (int)$this->config->get('config_store_id') . "'";
			
			if(!empty($data['blog_search'])) {
				$sql .= " AND LCASE(sbad.article_title) LIKE '" . $this->db->escape(utf8_strtolower($data['blog_search'])) . "%'";
			}
			if(!empty($data['author'])) {
				$sql .= " AND sbau.author_user_id = '" . (int)$data['author'] . "'";
			}
			
			if(!empty($data['filter_group'])) {
				/*foreach($data['filter_group'] as $k=>$v) {
					$filter_group[$k] = $v['social_group_user_id'];
				}
				$filter_group = join("','",$filter_group);
				$sql .= " AND sbau.author_user_id IN ('" . $filter_group . "')";*/
                                $sql .= " AND sba.social_group_id = '" .(int)$data['filter_group'] . "' ";
			}
			
			$query = $this->db->query($sql);
			
			return $query->row['total'];
		}
		
		public function getArticles($data = array()) {
			
			$sql = "SELECT sba.*, sbad.*, CASE WHEN co.firstname IS NULL THEN sbau.name ELSE CONCAT(co.firstname, ' ', co.lastname) END AS author_name, sbau.author_user_id AS author_user_id FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_store` sbas ON(sba.simple_blog_article_id=sbas.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) LEFT JOIN `" . DB_PREFIX . "customer` co ON(sbau.simple_blog_author_id=co.customer_id)  WHERE sba.status=1 AND sbau.status=1 AND sbas.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbad.language_id='" . (int)$this->config->get('config_language_id') . "'";
			
			if(!empty($data['blog_search'])) {
				$sql .= " AND LCASE(sbad.description) LIKE '%" . $this->db->escape(utf8_strtolower($data['blog_search'])) . "%'";
			}
			
			if(!empty($data['author'])) {
				$sql .= " AND sbau.author_user_id = '" . (int)$data['author'] . "'";
			}
			
			if(!empty($data['filter_group'])) {
				/*foreach($data['filter_group'] as $k=>$v) {
					$filter_group[$k] = $v['social_group_user_id'];
				}
				$filter_group = join("','",$filter_group);
				$sql .= " AND sbau.author_user_id IN ('" . $filter_group . "')";*/
                              $sql .= " AND sba.social_group_id = '" .(int)$data['filter_group'] . "' ";
			}
			
			$sql .= " ORDER BY sba.date_modified DESC";
			
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
		}
		
		public function getTotalCategories($parent_id = 0) {
			$sql = $this->db->query("SELECT COUNT(DISTINCT(sbc.simple_blog_category_id)) AS total FROM `" . DB_PREFIX . "simple_blog_category` sbc LEFT JOIN `" . DB_PREFIX . "simple_blog_category_description` sbcd ON(sbc.simple_blog_category_id=sbcd.simple_blog_category_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_category_to_store` sbcs ON(sbc.simple_blog_category_id=sbcs.simple_blog_category_id) WHERE sbc.parent_id='" . (int)$parent_id . "' AND sbcd.language_id='" . (int)$this->config->get('config_language_id') . "' AND sbcs.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbc.status=1 ORDER BY sbc.sort_order, LCASE(sbcd.name)");
			
			return $sql->row['total'];
		}
		
		public function getCategories($parent_id = 0) {
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_category` sbc LEFT JOIN `" . DB_PREFIX . "simple_blog_category_description` sbcd ON(sbc.simple_blog_category_id=sbcd.simple_blog_category_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_category_to_store` sbcs ON(sbc.simple_blog_category_id=sbcs.simple_blog_category_id) WHERE sbc.parent_id='" . (int)$parent_id . "' AND sbcd.language_id='" . (int)$this->config->get('config_language_id') . "' AND sbcs.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbc.status=1 ORDER BY sbc.sort_order, LCASE(sbcd.name)");
			
			return $sql->rows;
		}
		
		public function getTotalArticles($simple_blog_category_id) {
			$sql = $this->db->query("SELECT COUNT(DISTINCT(simple_blog_article_id)) AS total FROM `" . DB_PREFIX . "simple_blog_article_to_category` WHERE simple_blog_category_id='" . (int)$simple_blog_category_id . "'");
			return $sql->row['total'];
		}	
		
		public function getTotalComments($simple_blog_article_id) {
			$sql = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "simple_blog_comment` WHERE simple_blog_article_id='" . (int)$simple_blog_article_id . "' AND status=1");
			return $sql->row['total'];
		}
		
		public function getTotalLikeandShares($simple_blog_article_id, $type=NULL) {
			$sql = $this->db->query("SELECT likes_count, shares_count, spam_count FROM `" . DB_PREFIX . "simple_blog_article_action` WHERE simple_blog_article_id='" . (int)$simple_blog_article_id . "'");
			if($type!=NULL && isset($sql->row[$type])){
				return $sql->row[$type];
			} else {
				return $sql->row;
			}
		}
		
		public function getUserLikes($simple_blog_article_id, $user_id, $type) {
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_article_notification` WHERE simple_blog_article_id = '" . (int)$simple_blog_article_id . "' and simple_blog_user_id = '" . (int)$user_id . "' and  type = '" . $this->db->escape($type) . "'");
			return $sql->row;
		}
		
		
		public function getAdditionalDescription($blog_article_id) {
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "blog_article_description_additional` WHERE blog_article_id='" . (int)$blog_article_id . "'");
			return $sql->rows;	
		}	
		
		public function getArticle($simple_blog_article_id) {
			$sql = $this->db->query("SELECT sba.*, sbad.*, sbau.name AS author_name, sbau.author_user_id AS author_user_id FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_store` sbas ON(sba.simple_blog_article_id=sbas.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) WHERE sba.simple_blog_article_id='" . (int)$simple_blog_article_id . "' AND sbau.status=1 AND sba.status=1 AND sbas.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbad.language_id='" . $this->config->get('config_language_id') . "'");
			return $sql->row;
		}
		
		public function addBlogView($simple_blog_article_id) {
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_view` WHERE simple_blog_article_id='" . (int)$simple_blog_article_id . "'");
			
			if($sql->num_rows) {
				$counter = $sql->row['view'];
				
				$counter++;
				
				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_view` SET view='" . (int)$counter . "', date_modified=NOW() WHERE simple_blog_article_id='" . (int)$simple_blog_article_id . "'");
				
			} else {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_view` SET simple_blog_article_id='" . (int)$simple_blog_article_id . "', view=1, date_added=NOW(), date_modified=NOW()");
			}
		}
		
		public function getArticleAdditionalDescription($simple_blog_article_id) {
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_article_description_additional` WHERE language_id='" . (int)$this->config->get('config_language_id') . "' AND simple_blog_article_id='" . (int)$simple_blog_article_id . "'");
			return $sql->rows;
		}
		
		public function getArticleProductRelated($simple_blog_article_id) {
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_article_product_related` WHERE simple_blog_article_id='" . (int)$simple_blog_article_id . "'");
			return $sql->rows;
		}
		
		public function getTotalCommentsByArticleId($simple_blog_article_id) {
			$sql = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "simple_blog_comment` WHERE simple_blog_article_id='" . (int)$simple_blog_article_id . "' AND status=1 AND simple_blog_article_reply_id=0");
			return $sql->row['total'];
		}
		
		public function getCommentsByArticle($simple_blog_article_id, $start = 0, $limit = 20, $simple_blog_comment_id = 0) {
			if(!$simple_blog_comment_id) {
				
				if ($start < 0) {
					$start = 0;
				}
				
				if ($limit < 1) {
					$limit = 20;
				}
				
				$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_comment` WHERE simple_blog_article_id='" . (int)$simple_blog_article_id . "' AND status=1  ORDER BY date_added ASC LIMIT " . (int)$start . "," . (int)$limit);
				return $sql->rows;
			} else {
						
				if ($start < 0) {
					$start = 0;
				}
				
				if ($limit < 1) {
					$limit = 1000;
				}	
				
				$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_comment` WHERE simple_blog_article_reply_id='" . (int)$simple_blog_comment_id . "' AND status=1 ORDER BY date_added ASC LIMIT " . (int)$start . "," . (int)$limit);
				return $sql->rows;
			}
		}
		
		public function addArticleComment($simple_blog_article_id, $data) {
					
			$status = 1;
			
			
			if($data['reply_id']) {
				//echo "INSERT INTO `" . DB_PREFIX . "simple_blog_comment` SET simple_blog_article_id='" . (int)$simple_blog_article_id . "', simple_blog_article_reply_id='" . (int)$data['reply_id'] . "', author='" . $this->db->escape($data['name']) . "', comment='" . $this->db->escape($data['text']) . "', status='" . (int)$status . "', date_added=NOW(), date_modified=NOW()";
				//echo $data['reply_id']; exit;
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_comment` SET simple_blog_article_id='" . (int)$simple_blog_article_id . "', simple_blog_article_reply_id='" . (int)$data['reply_id'] . "', author='" . $this->db->escape($data['name']) . "', comment='" . $this->db->escape($data['text']) . "', status='" . (int)$status . "', date_added='".date('Y-m-d H:i:s')."', date_modified=NOW()");
			} else {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_comment` SET simple_blog_article_id='" . (int)$simple_blog_article_id . "', author='" . $this->db->escape($data['name']) . "', comment='" . $this->db->escape($data['text']) . "', status='" . (int)$status . "', date_added='".date('Y-m-d H:i:s')."', date_modified=NOW()");
			}
			$notification = $this->addNotifications($simple_blog_article_id,'commented');
		}
		
		public function getCategory($simple_blog_category_id) {
			$query = $this->db->query("SELECT DISTINCT * FROM `" . DB_PREFIX . "simple_blog_category` sbc LEFT JOIN `" . DB_PREFIX . "simple_blog_category_description` sbcd ON (sbc.simple_blog_category_id = sbcd.simple_blog_category_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_category_to_store` sbcs ON (sbc.simple_blog_category_id = sbcs.simple_blog_category_id) WHERE sbc.simple_blog_category_id = '" . (int)$simple_blog_category_id . "' AND sbcd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND sbcs.store_id = '" . (int)$this->config->get('config_store_id') . "' AND sbc.status = '1'");
			
			return $query->row;
		}	
		
		public function getTotalArticleCategoryWise($data = array()) {
			$sql = $this->db->query("SELECT COUNT(DISTINCT(sba.simple_blog_article_id)) AS total FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_store` sbas ON(sba.simple_blog_article_id=sbas.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_category` sbac ON(sba.simple_blog_article_id=sbac.simple_blog_article_id) WHERE sbac.simple_blog_category_id='" . (int)$data['simple_blog_article_id'] . "' AND sba.status=1 AND sbau.status=1 AND sbas.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbad.language_id='" . $this->config->get('config_language_id') . "'");
			
			return $sql->row['total'];
		}
		
		public function getArticleCategoryWise($data = array()) {
			$sql = "SELECT sba.*, sbad.*, sbau.name AS author_name FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_store` sbas ON(sba.simple_blog_article_id=sbas.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_category` sbac ON(sba.simple_blog_article_id=sbac.simple_blog_article_id) WHERE sbac.simple_blog_category_id='" . (int)$data['simple_blog_article_id'] . "' AND sba.status=1 AND sbau.status=1 AND sbas.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbad.language_id='" . $this->config->get('config_language_id') . "' ORDER BY sba.date_modified DESC";
			
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
		}
		
		public function getTotalArticleAuthorWise($simple_blog_author_id) {
			$sql = $this->db->query("SELECT COUNT(DISTINCT(sba.simple_blog_article_id)) AS total FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_store` sbas ON(sba.simple_blog_article_id=sbas.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) WHERE sba.simple_blog_author_id='" . (int)$simple_blog_author_id . "' AND sba.status=1 AND sbau.status=1 AND sbau.status=1 AND sbas.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbad.language_id='" . $this->config->get('config_language_id') . "'");
			
			return $sql->row['total'];
		}
		
		public function getArticleAuthorWise($data = array()) {
			$sql = "SELECT sba.*, sbad.*, sbau.name AS author_name FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_store` sbas ON(sba.simple_blog_article_id=sbas.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) WHERE sba.simple_blog_author_id='" . (int)$data['simple_blog_author_id'] . "' AND sba.status=1 AND sbau.status=1 AND sbas.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbad.language_id='" . $this->config->get('config_language_id') . "' ORDER BY sba.date_modified DESC";
			
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
		}		
		
		public function getAuthorInformation($simple_blog_author_id) {
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_author` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_author_description` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) WHERE sba.simple_blog_author_id='" . (int)$simple_blog_author_id . "' AND sba.status=1 AND sbau.language_id='" . $this->config->get('config_language_id') . "'");
			return $sql->row;
		}
		
		public function getArticleModuleWise($data = array()) {
			$sql = "SELECT sba.*, sbad.*, sbau.name AS author_name FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_store` sbas ON(sba.simple_blog_article_id=sbas.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_category` sbac ON(sba.simple_blog_article_id=sbac.simple_blog_article_id) WHERE sba.status=1 AND sbau.status=1 AND sbas.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbad.language_id='" . $this->config->get('config_language_id') . "'";
			
			if(!empty($data['filter_category_id'])) {
				$sql .= " AND sbac.simple_blog_category_id='" . (int)$data['filter_category_id'] . "'";
			}
			
			$sql .= " GROUP BY sba.simple_blog_article_id ORDER BY sba.date_added DESC";
			
			if (isset($data['start']) || isset($data['limit'])) {
				if ($data['start'] < 0) {
					$data['start'] = 0;
				}				
	
				if ($data['limit'] < 1) {
					$data['limit'] = 20;
				}	
	
				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}	
			
			//echo $sql; exit;
			
			$query = $this->db->query($sql);
			
			return $query->rows;	
		}
		
		public function getPopularArticlesModuleWise($data = array()) {
					
			$sql = "SELECT * FROM `" . DB_PREFIX . "simple_blog_view`";
			
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
			
			if($query->num_rows) {
				$sql = "SELECT sba.*, sbad.*, sbau.name AS author_name FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_store` sbas ON(sba.simple_blog_article_id=sbas.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_article_to_category` sbac ON(sba.simple_blog_article_id=sbac.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_view` sbv ON(sbv.simple_blog_article_id=sba.simple_blog_article_id) WHERE sba.status=1 AND sbau.status=1 AND sbas.store_id='" . (int)$this->config->get('config_store_id') . "' AND sbad.language_id='" . $this->config->get('config_language_id') . "'";
			
				$sql .= "  GROUP BY sba.simple_blog_article_id ORDER BY sbv.view DESC";
				
				if (isset($data['start']) || isset($data['limit'])) {
					if ($data['start'] < 0) {
						$data['start'] = 0;
					}				
		
					if ($data['limit'] < 1) {
						$data['limit'] = 20;
					}	
		
					$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
				}	
				
				//echo $sql; exit;
				
				$my_query = $this->db->query($sql);
			
				return $my_query->rows;
			} else {
				return '';
			}
			
		}
		
		public function getRelatedArticles($simple_blog_article_id) {
					
			$this->load->model('tool/image');	
			
			$simple_blog_related_article_data = array();	
			
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_related_article` WHERE simple_blog_article_id='" . (int)$simple_blog_article_id . "' AND status=1 ORDER BY sort_order");
			
			foreach($sql->rows as $row) {
				$article_info = $this->db->query("SELECT sba.*, sbad.article_title AS article_title, sbad.description AS description, sbau.simple_blog_author_id AS simple_blog_author_id, sbau.name AS author_name FROM `" . DB_PREFIX . "simple_blog_article` sba LEFT JOIN `" . DB_PREFIX . "simple_blog_article_description` sbad ON(sba.simple_blog_article_id=sbad.simple_blog_article_id) LEFT JOIN `" . DB_PREFIX . "simple_blog_author` sbau ON(sba.simple_blog_author_id=sbau.simple_blog_author_id) WHERE sba.simple_blog_article_id='" . (int)$row['simple_blog_article_related_id'] . "' AND sbad.language_id='" . (int)$this->config->get('config_language_id') . "' AND sba.status=1 AND sbau.status=1");
				
				if($article_info->row) {
					
					$total_comment = $this->getTotalComments($row['simple_blog_article_related_id']);
					
					$image = $this->model_tool_image->resize($article_info->row['featured_image'], 150, 150);
					
					$simple_blog_related_article_data[] = array(
						'simple_blog_article_id'	=> $article_info->row['simple_blog_article_id'],
						'article_title'		=> $article_info->row['article_title'],
						'simple_blog_author_id'	=> $article_info->row['simple_blog_author_id'],
						'image'				=> $image,
						'description'		=> $article_info->row['description'],
						'author_name'		=> $article_info->row['author_name'],
						'date_added'		=> date('F jS, Y', strtotime($article_info->row['date_added'])),
						'date_modified'		=> date('F jS, Y', strtotime($article_info->row['date_modified'])),
						'total_comment'		=> $total_comment
					);	
				}				
			}
			
			
			return $simple_blog_related_article_data;
		}
		
		public function getAuthors() {
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_author` WHERE status=1");
			
			return $sql->rows;
		}
		
		/*public function addArticle($data) {
			$user_id = isset($this->session->data['customer_id'])? $this->session->data['customer_id'] : $this->session->data['customer_id'];

		        $sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_author` WHERE author_user_id=".$user_id);
		        if( $sql->num_rows > 0 ){
			     $author_rows = $sql->row;
		        }else{ 
			     $data['name'] = $this->customer->getFirstName(); 
			     $this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_author` SET name = '" . $this->db->escape($data['name']) . "', author_user_id = '" . (int)$user_id . "', status='1', date_added=NOW(), date_modified=NOW()"); 
			    $sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_author` WHERE author_user_id=".$user_id);
			    $author_rows = $sql->row;
		        } 

                        if (isset($data['image'])) {

				if($data['comment'] == 'video')
				{
					$type = "2";
					$check_condtion = '1';
				}
				else
				{
					$type = "1";
					$check_condtion = '3';
				}

				$sql1= "SELECT COUNT(*) as count FROM `" . DB_PREFIX . "simple_blog_article` WHERE simple_blog_author_id=".$author_rows['simple_blog_author_id']." AND  date_created = '".date('Y-m-d')."' AND type=".$type;
				$sql_check = $this->db->query($sql1);
				$author_rows_check = $sql_check->row;
				

			}

		if($author_rows_check['count'] == $check_condtion)
		{
			return "error";
		}
		else
		{

			if($author_rows){
				$data['simple_blog_author_id'] = $author_rows['simple_blog_author_id'];
			} else {
				$data['name'] = $this->customer->getFirstName();
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_author` SET name = '" . $this->db->escape($data['name']) . "', author_user_id = '" . (int)$user_id . "', status='1', date_added=NOW(), date_modified=NOW()");
				$data['simple_blog_author_id'] = $this->db->getLastId();
			}
			$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article` SET simple_blog_author_id='" . (int)$data['simple_blog_author_id'] . "', social_group_id='" . (int)$data['social_group_id'] . "', allow_comment='1', sort_order='0', status='1', date_added=NOW(), date_modified='".date('Y-m-d H:i:s')."',date_created='".date('Y-m-d')."'");
			
			$simple_blog_article_id = $this->db->getLastId();
			
			if (isset($data['image'])) {
                               if($data['comment'] == "video")
				{
					$type = '2';
				}
				else if($data['comment'] == "image")
				{
					$type = '1';
				}
				else
				{
					$type='0';
				}


				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article` SET image = '" . $this->db->escape($data['image']) . "',type='".$type."'  WHERE simple_blog_article_id = '" . (int)$simple_blog_article_id . "'");
			}
		
			// adding article description
			if ($data['comment']) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_description` SET simple_blog_article_id = '" . (int)$simple_blog_article_id . "', language_id = '1', article_title = '', description = '" . $this->db->escape($data['comment']) . "', meta_description = '', meta_keyword = ''");
			}		
			$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_to_store` SET simple_blog_article_id = '" . (int)$simple_blog_article_id . "', store_id = '0'");
	            }
		}*/
                public function addArticle($data) {
		$user_id = isset($this->session->data['customer_id'])? $this->session->data['customer_id'] : $this->session->data['customer_id'];

		$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_author` WHERE author_user_id=".$user_id);
		if( $sql->num_rows > 0 ){
			$author_rows = $sql->row;
		}else{ 
			$data['name'] = $this->customer->getFirstName(); 
			$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_author` SET name = '" . $this->db->escape($data['name']) . "', author_user_id = '" . (int)$user_id . "', status='1', date_added=NOW(), date_modified=NOW()"); 
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_author` WHERE author_user_id=".$user_id);
			$author_rows = $sql->row;
		} 
		if (isset($data['image'])) {
			if($data['comment'] == 'video'){
				$type = "2";
				$check_condtion = '1';
			}else{
				$type = "1";
				$check_condtion = '3';
			}
		}else{
			$type = "1";
			$check_condtion = '3';
		}


		$sql1= "SELECT COUNT(*) as count FROM `" . DB_PREFIX . "simple_blog_article` WHERE simple_blog_author_id=".$author_rows['simple_blog_author_id']." AND  date_created = '".date('Y-m-d')."' AND type=".$type;
			$sql_check = $this->db->query($sql1);
			$author_rows_check = $sql_check->row; 
		if (isset($data['image'])) {
			if($author_rows_check['count'] == $check_condtion) {
				return "error";
			} 
		}
			if($author_rows){
				$data['simple_blog_author_id'] = $author_rows['simple_blog_author_id'];
			} else {
				$data['name'] = $this->customer->getFirstName();
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_author` SET name = '" . $this->db->escape($data['name']) . "', author_user_id = '" . (int)$user_id . "', status='1', date_added=NOW(), date_modified=NOW()");
				$data['simple_blog_author_id'] = $this->db->getLastId();
			}
			$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article` SET simple_blog_author_id='" . (int)$data['simple_blog_author_id'] . "', social_group_id='" . (int)$data['social_group_id'] . "', allow_comment='1', sort_order='0', status='1', date_added=NOW(), date_modified='".date('Y-m-d H:i:s')."',date_created='".date('Y-m-d')."'");
			$simple_blog_article_id = $this->db->getLastId();
			if (isset($data['image'])) {
				if($data['comment'] == "video"){
					$type = '2';
				} else if($data['comment'] == "image") {
					$type = '1';
				} else {
					$type='0';
				}
				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article` SET image = '" . $this->db->escape($data['image']) . "',type='".$type."'  WHERE simple_blog_article_id = '" . (int)$simple_blog_article_id . "'");
			}  
		// adding article description
		if ($data['comment']) { 
			$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_description` SET simple_blog_article_id = '" . (int)$simple_blog_article_id . "', language_id = '1', article_title = '', description = '" . $this->db->escape($data['comment']) . "', meta_description = '', meta_keyword = ''");
		}
		$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_to_store` SET simple_blog_article_id = '" . (int)$simple_blog_article_id . "', store_id = '0'");
		
	}
		
		public function shareArticle($data) {
			$user_id = isset($this->session->data['user_id'])? $this->session->data['user_id'] : $this->session->data['customer_id'];
			$sql = $this->db->query("SELECT * FROM `" . DB_PREFIX . "simple_blog_author` WHERE author_user_id=".$user_id);
			$author_rows = $sql->row;
			if($author_rows){
				$data['simple_blog_author_id'] = $author_rows['simple_blog_author_id'];
			} else {
				$data['name'] = $this->customer->getFirstName();
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_author` SET name = '" . $this->db->escape($data['name']) . "', author_user_id = '" . (int)$user_id . "', status='1', date_added=NOW(), date_modified=NOW()");
				$data['simple_blog_author_id'] = $this->db->getLastId();
			}
			$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article` SET simple_blog_author_id='" . (int)$data['simple_blog_author_id'] . "', article_shared_id='" . (int)$data['share_article_id'] . "', allow_comment='1', sort_order='0', status='1', date_added=NOW(), date_modified=NOW()");
			
			$simple_blog_article_id = $this->db->getLastId();
			
			//add count
			$share_count = $this->addArticleShares($data['share_article_id']);
			
			if (isset($data['image'])) {
				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article` SET image = '" . $this->db->escape($data['image']) . "' WHERE simple_blog_article_id = '" . (int)$simple_blog_article_id . "'");
			}
		
			// adding article description
			if ($data['comment']) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_description` SET simple_blog_article_id = '" . (int)$simple_blog_article_id . "', language_id = '1', article_title = '', description = '" . $this->db->escape($data['comment']) . "', meta_description = '', meta_keyword = ''");
			}		
			$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_to_store` SET simple_blog_article_id = '" . (int)$simple_blog_article_id . "', store_id = '0'");
			
		}
		
		public function addArticleLikes($article_id){
			$likes_count = $this->getTotalLikeandShares($article_id,'likes_count');
			if(!empty($likes_count)){
				$likes_count = $likes_count + 1;
				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article_action` SET likes_count = '" . (int)$likes_count . "' WHERE simple_blog_article_id = '" . (int)$article_id . "'");
			} else {
				$likes_count = 1;
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_action` SET likes_count = '" . (int)$likes_count . "', simple_blog_article_id = '" . (int)$article_id . "'");
			}
			$notification = $this->addNotifications($article_id,'liked');
		}
		
		public function subArticleLikes($article_id){
			$likes_count = $this->getTotalLikeandShares($article_id,'likes_count');
			if(!empty($likes_count)){
				$likes_count = $likes_count - 1;
				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article_action` SET likes_count = '" . (int)$likes_count . "' WHERE simple_blog_article_id = '" . (int)$article_id . "'");
			} 
			$notification = $this->deleteNotifications($article_id,'liked');
		}
		
		public function addArticleShares($article_id){
			$shares_count = $this->getTotalLikeandShares($article_id,'shares_count');
			if(!empty($shares_count)){
				$shares_count = $shares_count + 1;
				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article_action` SET shares_count = '" . (int)$shares_count . "' WHERE simple_blog_article_id = '" . (int)$article_id . "'");
			} else {
				$shares_count = 1;
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_action` SET shares_count = '" . (int)$shares_count . "', simple_blog_article_id = '" . (int)$article_id . "'");
			}
		}
		
		public function addArticleSpams($article_id){
			$spam_count = $this->getTotalLikeandShares($article_id,'spam_count');
			if(!empty($spam_count)){
				$spam_count = $spam_count + 1;
				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article_action` SET spam_count = '" . (int)$spam_count . "' WHERE simple_blog_article_id = '" . (int)$article_id . "'");
			} else {
				$spam_count = 1;
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_action` SET spam_count = '" . (int)$spam_count . "', simple_blog_article_id = '" . (int)$article_id . "'");
			}
			if($spam_count == 10){
				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article` SET status = 0 WHERE simple_blog_article_id = '" . (int)$article_id . "'");
			}
			$notification = $this->addNotifications($article_id,'spamed');
		}
		
		public function subArticleSpams($article_id){
			$spam_count = $this->getTotalLikeandShares($article_id,'spam_count');
			if(!empty($spam_count)){
				$spam_count = $spam_count - 1;
				$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article_action` SET spam_count = '" . (int)$spam_count . "' WHERE simple_blog_article_id = '" . (int)$article_id . "'");
			} 
			$notification = $this->deleteNotifications($article_id,'spamed');
		}
		
		public function addNotifications($article_id,$type) {
			$user_id = $this->session->data['customer_id'];
			$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_article_notification` SET simple_blog_article_id = '" . (int)$article_id . "', simple_blog_user_id = '" . (int)$user_id . "', type = '" . $this->db->escape($type) . "', read_status = '1', created_at=NOW()");
			$simple_blog_notification_id = $this->db->getLastId();
		}
		
		public function deleteNotifications($article_id,$type) {
			$user_id = isset($this->session->data['user_id'])? $this->session->data['user_id'] : $this->session->data['customer_id'];
			$this->db->query("DELETE FROM`" . DB_PREFIX . "simple_blog_article_notification` WHERE simple_blog_article_id = '" . (int)$article_id . "' and simple_blog_user_id = '" . (int)$user_id . "' and  type = '" . $this->db->escape($type) . "'");
		}
		
		public function updateNotifications($notification_id) {
			$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article_notification` SET read_status = '0' WHERE simple_blog_article_notification_id = '".$notification_id."'");
		}
		
		public function getNotifications() {
			$user_id = isset($this->session->data['user_id'])? $this->session->data['user_id'] : $this->session->data['customer_id'];
			$sql = $this->db->query("SELECT n.*,c.firstname as username FROM `" . DB_PREFIX . "simple_blog_article_notification` as n JOIN `" . DB_PREFIX . "simple_blog_article` as b ON n.simple_blog_article_id=b.simple_blog_article_id JOIN `" . DB_PREFIX . "customer` as c ON n.simple_blog_user_id=c.customer_id  WHERE b.simple_blog_author_id='".$user_id."' and n.simple_blog_user_id!='".$user_id."' and n.read_status=1");
			return $sql->rows;
		}
		public function addArticleSpam($simple_blog_article_id, $data) {
			$status = 1;
			
			if($data['reply_id']) {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_spam` SET simple_blog_article_id='" . (int)$simple_blog_article_id . "', simple_blog_article_reply_id='" . (int)$data['reply_id'] . "', author='" . $this->db->escape($data['name']) . "', comment='" . $this->db->escape($data['text']) . "', status='" . (int)$status . "', date_added=NOW(), date_modified=NOW()");
			} else {
				$this->db->query("INSERT INTO `" . DB_PREFIX . "simple_blog_spam` SET simple_blog_article_id='" . (int)$simple_blog_article_id . "', author='" . $this->db->escape($data['name']) . "', comment='" . $this->db->escape($data['text']) . "', status='" . (int)$status . "', date_added=NOW(), date_modified=NOW()");
			}
			$notification = $this->addArticleSpams($simple_blog_article_id);
			
				$this->load->model('account/catalog/seller');      
				$order_info = $this->getArticle($simple_blog_article_id);
				if($order_info){
					
					// Text
					$text  = 'Hi' .$order_info['author_name'].','. "\n\n";
					$text .= 'Your post has been spammed by user ' .$data['name']. ' for the following reason,'. "\n";
					$text .=  $data['name']. "\n";
					$subject = 'Post has been spammed';
					$seller_id = $order_info['author_user_id'];  
					$seller_info = $this->model_account_catalog_seller->getSeller($seller_id);
			  
					$mail = new Mail();
					$mail->protocol = $this->config->get('config_mail_protocol');
					$mail->parameter = $this->config->get('config_mail_parameter');
					$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
					$mail->smtp_username = $this->config->get('config_mail_smtp_username');
					$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
					$mail->smtp_port = $this->config->get('config_mail_smtp_port');
					$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

					$mail->setTo($seller_info['email']);
					$mail->setFrom($this->config->get('config_email'));
					$mail->setSender(html_entity_decode('My Stone Store', ENT_QUOTES, 'UTF-8'));
					$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
					$mail->setHtml($this->load->view('mail/order', $data));
					$mail->setText($text);
					$mail->send();
					
					// Text
					$text  = 'Hi Admin,'. "\n\n";
					$text .= $order_info['author_name'].' post has been spammed by user ' .$data['name']. ' for the following reason,'. "\n";
					$text .=  $data['name']. "\n";
					
					//admin
					$mail = new Mail();
					$mail->protocol = $this->config->get('config_mail_protocol');
					$mail->parameter = $this->config->get('config_mail_parameter');
					$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
					$mail->smtp_username = $this->config->get('config_mail_smtp_username');
					$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
					$mail->smtp_port = $this->config->get('config_mail_smtp_port');
					$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

					$mail->setTo($this->config->get('config_email'));
					$mail->setFrom($this->config->get('config_email'));
					$mail->setSender(html_entity_decode('My Stone Store', ENT_QUOTES, 'UTF-8'));
					$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
					$mail->setHtml($this->load->view('mail/order', $data));
					$mail->setText($text);
					$mail->send();
				}
			
		}
		public function deleteArticalById($article_id) {
			$this->db->query("UPDATE `" . DB_PREFIX . "simple_blog_article` SET status = '0' WHERE simple_blog_article_id = '".$article_id."'");
			return true;
		}
	}
?>