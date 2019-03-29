<?php if(!defined('BASEPATH')) exit('No direct script access allowed');
require APPPATH . '/libraries/BaseController.php';

class Validation_controller extends BaseController
{



 public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
         $this->load->model('Main_Model');
        $this->isLoggedIn();   
    }
    public function index(){
    	echo "OK";


    }
    public function validate_program()
    {


    	$this->form_validation->set_rules('program','','required|is_unique[program.program_name]');
    	if($this->form_validation->run())
    	{
    		echo 'true';



    	}
    	else{
    		echo 'false';
    	}



    }
       public function validate_module()
    {


    	$this->form_validation->set_rules('module','','required|is_unique[module.module_name]');
    	if($this->form_validation->run())
    	{
    		echo 'true';



    	}
    	else{
    		echo 'false';
    	}



    }
     public function validate_code()
    {


    	$this->form_validation->set_rules('code','','required|is_unique[courses.coursecode]');
    	if($this->form_validation->run())
    	{
    		echo 'true';



    	}
    	else{
    		echo 'false';
    	}



    }
         public function validate_name()
    {


    	$this->form_validation->set_rules('name','','required|is_unique[courses.coursename]');
    	if($this->form_validation->run())
    	{
    		echo 'true';



    	}
    	else{
    		echo 'false';
    	}



    }
    




}
