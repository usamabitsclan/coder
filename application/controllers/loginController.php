<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class loginController extends CI_Controller {
	function login(){

		$this->load->view('login');
		
	}


	function canlogin()
      {

      	// echo("here");
      	// exit();
      	//print_r($this->input->post('email'));
      	//print_r($this->input->post('password'));
      	      $this->load->library('form_validation');

        $this->load->model('Car_model');
        $this->form_validation->set_rules('email','Email','required|valid_email');
        $this->form_validation->set_rules('password','Password','required');

        if($this->form_validation->run() == false) {
            $this->load->view('login');
        }
        else {
          //save record in database

          $email = $this->input->post('email');
          $password = $this->input->post('password');
          $query =  $this->Car_model->check($email,$password);
          $data = array();
          $data['users'] = $query;

          if($query['user_role'] == 1)
          {
          	//this is user role
          	$this->load->library('session');
          	$this->session->set_userdata('logged_in',TRUE);
          	//$name = $this->session->userdata('name');
          	//$name = $this->session->userdata('name','logged_in');
          	//print_r($name);

            $this->session->set_flashdata('success','Logged In Successfully as Client!');
            redirect(base_url().'index.php/CarModel/index');
          }
          elseif ($query['user_role'] == 2) {
          	//this is admin role
          	$this->load->library('session');
          	$this->session->set_userdata('logged_in',TRUE);
            $this->session->set_flashdata('success','Logged In Successfully as admin!');
            redirect(base_url().'index.php/CarModel/Adminindex');
          }

          $this->session->set_flashdata('success','Invalid Credentials');
          redirect(base_url().'index.php/CarModel/login');

          $this->session->set_flashdata('success','Logged In Successfully!');
       
        }

      }



}
?>