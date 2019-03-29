<?php  
 defined('BASEPATH') OR exit('No direct script access allowed');  
 class Crud extends CI_Controller {  
      //functions  
     function __construct(){
      parent::__construct();
      $this->load->model('Crud_model');
     }

     function index(){
      $this->load->view('crud_view');
     }

    function grid_getlists(){
      $data = array();
      $gridparentData = $this->Crud_model->GetRows();

      // $i = $_POST['start'];
      foreach ($gridparentData as $gridDatalist) {
        // $i++;
       $sub_array =array();
       $sub_array[] = $gridDatalist->ID;
       $sub_array[] = $gridDatalist->FirstName;
       $sub_array[] = $gridDatalist->HFCNIC;
       $sub_array[] = $gridDatalist->FatherFirstName;
       $sub_array[] = $gridDatalist->Address1;
       $sub_array[] = $gridDatalist->MainArea;
       $sub_array[] = $gridDatalist->FormStatusFlag;
        
       $data[] = $sub_array;
      }

      $output = array(
        "draw" =>  intval($_POST["draw"]),  
        "recordsTotal" => intval($this->Crud_model->countAll()),  
        "recordsFiltered" => intval($this->Crud_model->countFiltered()),  
        "data" => $data  
      );
       echo json_encode($output); 

    }
 }  