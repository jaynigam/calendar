<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Recalendar extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('form');
		$this->load->helper('url');
		$this->load->library('session');
		$this->load->library('ftp');
		$this->load->library('upload');
		
		}
		
		function index(){
		$this->load->view('details');
		}
		
		function get_data(){
			$this->load->library('gcal');
			$events = $this->gcal->listEvents(array(
			'ispublic' => false,  // defaults to false
			'calendarId' => $this->input->post('email'),   // required
			'redirectURI' => 'http://localhost:8080/recalendar/index.php/recalendar/get_data'  // defaults to the URL of the current page
	
			));
			echo '<pre>';

			
		$this->load->model('recalendar_model');
		$this->recalendar_model->update_data();
		$result = $this->recalendar_model->insert_data($events->items);
		if($result == 0){
		$this->session->set_flashdata('message', 'No events on your google calendar');
		redirect('recalendar/index');
		}else{
		$this->session->set_flashdata('message', 'You have successfully imported your google calendar events');
		redirect('recalendar/index');
		}
		exit;
		
		
		}
		
}

