<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

class UserController extends CI_Controller
{
    /**
     * This is default constructor of the class
     */
    public function __construct() 
    {
        parent::__construct();
        $this->load->model('UserModel','UM');
        // $this->load->model('Main_Model');
    }
    function loadViews_User($viewName = "", $headerInfo = NULL, $pageInfo = NULL, $footerInfo = NULL)
    {
        $this->load->view('User/includes/header', $headerInfo);
        $this->load->view($viewName, $pageInfo);
        $this->load->view('User/includes/footer', $footerInfo);
        // $this->load->view($viewName, $pageInfo);
    }
    // Index load 
    public function index()
    {
        $this->loadViews_User("User/dashboard");
    }
        // user registration load view 
    public function registration()
    {
        $this->loadViews_User("User/registration_view");
    }

// user personal profile 
        //loadview
    public function User_Personal_Profile(){
        $data['user'] = $this->UM->UserData_Fetch();
        // echo"<pre>";
        // print_r($User);
        $this->loadViews_User("User/user_view/profile",$data);
    }
        // controller for insert data to model 
    public function personal_profile_insert(){   
    }
        // controller to fetch data from model
    public function personal_profile_fetch(){   
    }
// end user personal profile



}
?>