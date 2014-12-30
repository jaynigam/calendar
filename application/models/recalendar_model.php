<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

//header('Content-type: text/json');
class Recalendar_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->library('session');
		
	}
	function insert_data($data){
	
	foreach($data as $val) {
	$data1['email'] = $val->creator->email;
	$data1['title'] = $val->summary;
	$data1['creation_time'] = $val->created;
	$data1['event_end_time'] = $val->end->dateTime;
	$data1['description'] = $val->location;
	$data1['date'] = $val->start->dateTime;
	$this->db->insert('events',$data1);

	}
	if($this->db->affected_rows() > 0){
	return 1;
	}else{
	return 0;
	}
	}
	
	function update_data(){
	$data = array(
               'is_calendar' => 1
            );

	$this->db->where('user', $this->input->post('email'));
	$this->db->update('users', $data); 
	
	}
}
