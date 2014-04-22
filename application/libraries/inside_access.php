<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Inside library
 *  
 * @author Alex Torrison
 */
class Inside_Access {

    /**
     * Constructor
     */
    public function __construct($config = array()) {
        log_message('debug', "Inside_Access Class Initialized");
    }

	// ------------------------------------------------------------------------------ Check Access in Points -------------	
	public function check_access ($point_name, $table = '', $cell_id = 0)
	{
		$CI =& get_instance();
		$CI->load->library('ion_auth');
		
		// Get Access Array
		
		$CI->load->library('session');
		$user_id = intval($CI->session->userdata('user_id'));
		
		$query = $CI->db->query("SELECT * FROM inside_system_zones 
		LEFT JOIN inside_access_system_zones ON system_zones_id=access_system_zones_zone_id
		LEFT JOIN users_groups ON group_id = access_system_zones_group_id
		WHERE system_zones_name = '".$point_name."' AND user_id = ".$user_id."");
		
		$access_result_arr = $query->result_array();
		
		if (isset($access_result_arr[0]))
		{
		$access_result = $access_result_arr[0];
		return true;
		}
		else return false;
		
		
		/*
		switch ($point_name) 
		{
			case "test":
			return true;
			break;
			
			case "inside_index":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;
			
			case "inside_custom":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;
			
			case "inside_table":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;

			case "pdg_view":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;

			case "pdg_edit":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;
		

			case "pdg_add":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;

			// AJAX Admin Answers: CRUD, Add, Copy, Edit, Delete

			case "pdg_ajax_crud":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;
			
			case "pdg_ajax_crud_custom":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;
			
			case "pdg_ajax_edit":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;

			case "pdg_ajax_view":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;

			case "pdg_ajax_add":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;

			// AJAX Admin Requests: Add, Update, Delete

			case "pdg_ajax_edit_request":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;

			case "pdg_ajax_add_request":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;

			case "pdg_ajax_del_request":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			break;

			case "inside_test":
			// Only Root
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}

			case "inside_page_graph":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}

			case "inside_page_news":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}

			case "ajax_inside_pages_news":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			
			case "inside_ekipazh_api":
			if ($CI->ion_auth->in_group($developer_group))
			{
			return true;
			}
			

			break;
		}
		*/
	}

}
