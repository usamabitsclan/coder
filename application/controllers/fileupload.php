<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class fileupload extends CI_Controller {

  public function __construct(){

    parent::__construct();
    $this->load->helper('url');

  }

  public function index(){

    // load view
    $this->load->view('uploadfile');

  }

  // File upload
  public function fileUpload(){
    $this->load->model('File');

   if(!empty($_FILES['file']['name'])){

     // Set preference
     $config['upload_path'] = 'uploads/';
     $config['allowed_types'] = 'jpg|jpeg|png|gif';
     $config['max_size'] = '1024'; // max_size in kb
     $config['file_name'] = $_FILES['file']['name'];

     //Load upload library
     $this->load->library('upload',$config);

     // File upload
     if($this->upload->do_upload('file')){
       
       // Get data about the file
       $fileData = $this->upload->data();
       $uploadData['file_name'] = $fileData['file_name'];
       $uploadData['uploaded_on'] = date("Y-m-d H:i:s");

                // Insert files info into the database
       $insert = $this->File->insert($uploadData);
     }

       
   }

 }

}
