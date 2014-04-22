<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Description of News
 *
 * @author Alex Torrison
 */
class Main_Model extends CI_Model
{
	// Main Inside News
	public function index() {   

	$this->load->library('inside_access');
	if ($this->inside_access->check_access('ajax_inside_pages_news'))
		{
		$table_name = 'inside_news';
		// Load Libs and Models
		$this->load->library('inside_lib');
		// Filtering POST data		
		$filter['limit'] = $this->input->post('pdg_limit');
		$filter['page'] = $this->input->post('pdg_page');
		$filter['pdg_fsearch'] = $this->input->post('pdg_fsearch');
		// Get Array
		$table_arr = $this->get_news_arr($filter);
		$input_view_data['table_arr'] = $table_arr['res'];
		
		// Wear view
		$this->load->view('inside/custom_interfaces/news/news', $input_view_data);	
		}
	else $this->load->view('inside/access_denied');			
				
	}
	
	public function news_comments() { 
    	$this->load->library('inside_access');
		if ($this->inside_access->check_access('inside_news_comments'))
		{	
		
		ob_start();
?>
<form id="add_comment">
<textarea style="width:380px; height: 60px;" name="comment"></textarea>
<a class="btn btn-success white add_comment" new_id="<?php echo $this->input->post('new_id');?>">Send</a>
</form>
<div class="comments_holder">
<?php 
$query = $this->db->query('SELECT * FROM inside_news_comments WHERE news_comments_invisible = 0 AND news_comments_new_id = '.intval($this->input->post('new_id')).' ORDER BY news_comments_datetime DESC');

foreach ($query->result_array() as $row) { ?>
<div style="padding: 5px; margin-bottom: 10px; border-bottom: 1px dotted #777;">
	<b><?php echo $row['news_comments_user_name'];?></b> <i class="gray">[<?php echo $row['news_comments_datetime'];?>]</i>: <?php echo $row['news_comments_content'];?>
</div>
<?php }?>
</div>
<?php  	
		echo ob_get_clean();
		}
		else $this->load->view('inside/access_denied');
	}
	
	public function news_comments_add() {
    	$this->load->library('inside_access');
		if ($this->inside_access->check_access('inside_news_add_comment'))
		{				
			// Load Libs and Models
			$this->load->library('inside_lib');
			$this->load->model('inside_model');

			// User Info Array (Empty Hash is not bad, its session style)
			$user_info_arr = $this->inside_lib->get_user_info($this->session->userdata('user_id'));
			
					
		$comment = $this->input->post('comment');
		$datetime = date("Y-m-d H:i:s");
		
		$comment = $this->inside_lib->defend_filter(1, $comment);
		$what_replace   = array("\r\n", "\n", "\r");
		$replace = '<br />';
		$comment = str_replace($what_replace, $replace, $comment);
		
		$input['news_comments_new_id'] = intval ($this->input->post('new_id'));
		$input['news_comments_user_name'] = $user_info_arr['users']['first_name']." ".$user_info_arr['users']['last_name'];
		$input['news_comments_user_id'] = intval ($user_info_arr['users']['id']);		
		$input['news_comments_content'] = $comment;
		$input['news_comments_datetime'] = $datetime;		
		
		$this->db->insert('inside_news_comments', $input);
		
		ob_start();
?>
<div style="padding: 5px; margin-bottom: 10px; border-bottom: 1px dotted #777;">
	<b><?php echo $user_info_arr['users']['first_name']." ".$user_info_arr['users']['last_name']; ?></b> <i class="gray">[<?php echo $datetime;?>]</i>: <?php echo $comment;?>
</div>
<?php  	
		echo ob_get_clean();
			// ------------------------------------------------------------------------------------------------------
		}
		else $this->load->view('inside/access_denied');
	}
	
	
	
	
	
	public function get_news_arr($filter)
	{
	// Load lib
	$this->load->library('inside_lib');

	$where = '';
	$limit = '';
	// Prepare Limit and Page parametrs
	if ( (isset($filter['page'])) && ($filter['page'] > 0) ) $filter['page']--;	
	if ( (isset($filter['limit'])) && ($filter['limit'] > 0) ) $limit = " LIMIT ".$filter['page']*$filter['limit'].",".$filter['limit'];
	if ( (isset($filter['pdg_fsearch'])) && (strlen($filter['pdg_fsearch']) > 2) ) $where = " WHERE inside_news_name LIKE '%".$filter['pdg_fsearch']."%' OR inside_news_text LIKE '%".$filter['pdg_fsearch']."%' ";

	
	
	// Make Request
	$query = $this->db->query('SELECT n.*, (SELECT COUNT(*) FROM inside_news_comments c WHERE c.news_comments_new_id = n.inside_news_id) inside_news_comments_count
	FROM inside_news n'.$where." ORDER by inside_news_datetime DESC ".$limit);	
	$return['res'] = $query->result_array();
	return $return;
	
	}
	
//>>// Function for Get table Cell from DB -------------------------------------  SELECT 1 row by ID ------
	public function get_table_cell_arr($table_name, $cell_id)
	{
		// Load Config
		include ('application/config/pdg_tables/'.$table_name.'.php');
		
		// Make Request
		$query = $this->db->query("SELECT * FROM ".$table_name." WHERE ".$table_config['key']." = ".$cell_id." LIMIT 1");	
		$array = $query->result_array();
		// Return One Row!
		return $array[0];
	}
	
}