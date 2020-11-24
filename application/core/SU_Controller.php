<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class SU_Controller extends CI_Controller {
	public function __construct(){
		parent::__construct();
        // Your own constructor code

		if( ! $this->session->userdata('logged_in'))
		{	
			$this->session->set_flashdata('success','You must Log in first!');
			redirect('/loginController/login');
			exit();
                	// $this->load->helper('url');

		}
	}



}
?>