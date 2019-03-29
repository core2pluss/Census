<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

class User extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->load->model('Main_Model');
        // $this->load->model('ajax_Model');

        $this->isLoggedIn();   
    }
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        $this->global['pageTitle'] = 'CodeInsect : Dashboard';
        $this->loadViews("dashboard", $this->global,  NULL);
    }
// old data 
    function userListing()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {        
            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;
            
            $this->load->library('pagination');
            
            $count = $this->user_model->userListingCount($searchText);

            $returns = $this->paginationCompress ( "userListing/", $count, 10 );
            
            $data['userRecords'] = $this->user_model->userListing($searchText, $returns["page"], $returns["segment"]);
            
            $this->global['pageTitle'] = 'CodeInsect : User Listing';
            
            $this->loadViews("users", $this->global, $data, NULL);
        }
    }

    /**
     * This function is used to load the add new form
     */
    function addNew()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->model('user_model');
            $data['roles'] = $this->user_model->getUserRoles();
            
            $this->global['pageTitle'] = 'CodeInsect : Add New User';

            $this->loadViews("addNew", $this->global, $data, NULL);
        }
    }

    /**
     * This function is used to check whether email already exist or not
     */
    function checkEmailExists()
    {
        $userId = $this->input->post("userId");
        $email = $this->input->post("email");

        if(empty($userId)){
            $result = $this->user_model->checkEmailExists($email);
        } else {
            $result = $this->user_model->checkEmailExists($email, $userId);
        }

        if(empty($result)){ echo("true"); }
        else { echo("false"); }
    }
    
    /*
     * This function is used to add new user to the system
     */

    function addNewUser()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->library('form_validation');
            
            $this->form_validation->set_rules('fname','Full Name','trim|required|max_length[128]');
            $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
            $this->form_validation->set_rules('password','Password','required|max_length[20]');
            $this->form_validation->set_rules('cpassword','Confirm Password','trim|required|matches[password]|max_length[20]');
            $this->form_validation->set_rules('role','Role','trim|required|numeric');
            $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');
            if($this->form_validation->run() == FALSE)
            {
                $this->addNew();
            }
            else
            {
                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('fname'))));
                $email = strtolower($this->security->xss_clean($this->input->post('email')));
                $password = $this->input->post('password');
                $roleId = $this->input->post('role');
                $mobile = $this->security->xss_clean($this->input->post('mobile'));
         // ORIGNaL S
        // $userInfo = array('email'=>$email, 'password'=>getHashedPassword($password), 'roleId'=>$roleId, 
        // 'name'=> $name,'mobile'=>$mobile, 'createdBy'=>$this->vendorId,'createdDtm'=>date('Y-m-d H:i:s'));
            // ORIGNaL E
                // EDIT BY FaISaL S
       $userInfo = array('email'=>$email, 'password'=>getHashedPassword($password), 'roleId'=>$roleId, 
        'name'=> $name,'mobile'=>$mobile, 'createdBy'=>$this->vendorId,'isDeleted'=>("0"), 'createdDtm'=>date('Y-m-d H:i:s'));
                 // EIDT BY FaISaL E
                $this->load->model('user_model');
                $result = $this->user_model->addNewUser($userInfo);
                
                if($result > 0)
                {
                    $this->session->set_flashdata('success', 'New User created successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'User creation failed');
                }
                
                redirect('addNew');
            }
        }
    }
    
    /**
     * This function is used load user edit information
     * @param number $userId : Optional : This is user id
     */
    function editOld($userId = NULL)
    {
        if($this->isAdmin() == TRUE || $userId == 1)
        {
            $this->loadThis();
        }
        else
        {
            if($userId == null)
            {
                redirect('userListing');
            }
            
            $data['roles'] = $this->user_model->getUserRoles();
            $data['userInfo'] = $this->user_model->getUserInfo($userId);
            
            $this->global['pageTitle'] = 'CodeInsect : Edit User';
            
            $this->loadViews("editOld", $this->global, $data, NULL);
        }
    }
    
    
    /**
     * This function is used to edit the user information
     */

    function editUser()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->library('form_validation');
            $userId = $this->input->post('userId');
            $this->form_validation->set_rules('fname','Full Name','trim|required|max_length[128]');
            $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
            $this->form_validation->set_rules('password','Password','matches[cpassword]|max_length[20]');
            $this->form_validation->set_rules('cpassword','Confirm Password','matches[password]|max_length[20]');
            $this->form_validation->set_rules('role','Role','trim|required|numeric');
            $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');
            
            if($this->form_validation->run() == FALSE)
            {
                $this->editOld($userId);
            }
            else
            {
                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('fname'))));
                $email = strtolower($this->security->xss_clean($this->input->post('email')));
                $password = $this->input->post('password');
                $roleId = $this->input->post('role');
                $mobile = $this->security->xss_clean($this->input->post('mobile'));
                
                $userInfo = array();
                
                if(empty($password))
                {
                    $userInfo = array('email'=>$email, 'roleId'=>$roleId, 'name'=>$name,
                                    'mobile'=>$mobile, 'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));
                }
                else
                {
                    $userInfo = array('email'=>$email, 'password'=>getHashedPassword($password), 'roleId'=>$roleId,
                        'name'=>ucwords($name), 'mobile'=>$mobile, 'updatedBy'=>$this->vendorId, 
                        'updatedDtm'=>date('Y-m-d H:i:s'));
                }
                
                $result = $this->user_model->editUser($userInfo, $userId);
                
                if($result == true)
                {
                    $this->session->set_flashdata('success', 'User updated successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'User updation failed');
                }
                
                redirect('userListing');
            }
        }
    }


    function deleteUser()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $userId = $this->input->post('userId');
            $userInfo = array('isDeleted'=>1,'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));
            
            $result = $this->user_model->deleteUser($userId, $userInfo);
            
            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }
    
    /**
     * Page not found : error 404
     */
    function pageNotFound()
    {
        $this->global['pageTitle'] = 'CodeInsect : 404 - Page Not Found';
        
        $this->loadViews("404", $this->global, NULL, NULL);
    }

    /**
     * This function used to show login history
     * @param number $userId : This is user id
     */
    function loginHistoy($userId = NULL)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $userId = ($userId == NULL ? 0 : $userId);

            $searchText = $this->input->post('searchText');
            $fromDate = $this->input->post('fromDate');
            $toDate = $this->input->post('toDate');

            $data["userInfo"] = $this->user_model->getUserInfoById($userId);

            $data['searchText'] = $searchText;
            $data['fromDate'] = $fromDate;
            $data['toDate'] = $toDate;
            
            $this->load->library('pagination');
            
            $count = $this->user_model->loginHistoryCount($userId, $searchText, $fromDate, $toDate);

            $returns = $this->paginationCompress ( "login-history/".$userId."/", $count, 10, 3);

            $data['userRecords'] = $this->user_model->loginHistory($userId, $searchText, $fromDate, $toDate, $returns["page"], $returns["segment"]);
            
            $this->global['pageTitle'] = 'CodeInsect : User Login History';
            
            $this->loadViews("loginHistory", $this->global, $data, NULL);
        }        
    }

    /**
     * This function is used to show users profile
     */
    function profile($active = "details")
    {
        $data["userInfo"] = $this->user_model->getUserInfoWithRole($this->vendorId);
        $data["active"] = $active;
        
        $this->global['pageTitle'] = $active == "details" ? 'CodeInsect : My Profile' : 'CodeInsect : Change Password';
        $this->loadViews("profile", $this->global, $data, NULL);
    }

    /**
     * This function is used to update the user details
     * @param text $active : This is flag to set the active tab
     */
    function profileUpdate($active = "details")
    {
        $this->load->library('form_validation');
            
        $this->form_validation->set_rules('fname','Full Name','trim|required|max_length[128]');
        $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');
        
        if($this->form_validation->run() == FALSE)
        {
            $this->profile($active);
        }
        else
        {
            $name = ucwords(strtolower($this->security->xss_clean($this->input->post('fname'))));
            $mobile = $this->security->xss_clean($this->input->post('mobile'));
            
            $userInfo = array('name'=>$name, 'mobile'=>$mobile, 'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));
            
            $result = $this->user_model->editUser($userInfo, $this->vendorId);
            
            if($result == true)
            {
                $this->session->set_userdata('name', $name);
                $this->session->set_flashdata('success', 'Profile updated successfully');
            }
            else
            {
                $this->session->set_flashdata('error', 'Profile updation failed');
            }

            redirect('profile/'.$active);
        }
    }

   public function get_module()
    {
         $id=$this->input->post('name');
        // echo $id;
        $result=$this->user_model->getmodeule($id);
        if(!empty($result))
        {
            $option='<option value="">Select Program</option>';
            foreach($result as $k=>$v)
            {
                $option.="<option value='".$v['module_id']."'>".$v['module_name']."</option>";
            }
            echo $option;
        }
        else
        {
            $option='<option value="">Select Program</option>';
            $option.='<option value="">No Module</option>';
            echo $option;

        }
    }
///
/*  NEW PROJECT CENCUS*/

//not used yet
    
    // divisionAjax
    public function get_division()
    {
        $ProvID = $this->input->post('ProvID');
        $divisions = $this->user_model->getDivision($ProvID);
        if(count($divisions)>0)
        {
            $pro_select_box='';
            $pro_select_box .='<option>Select Divisions</option>';
            foreach($divisions as $division){
            $pro_select_box .='<option value="'.$division->DivisionID.'">'.$division->DivisionName.'</option>';
            }
        echo json_encode($pro_select_box);
        }
    }
    // district controller
    public function get_district()
    {
        $DivisionID = $this->input->post('DivisionID');
        $ProvID = $this->input->post('ProvID');
        $districts = $this->user_model->getDistrict($ProvID,$DivisionID);
        if(count($districts)>0)
        {
            $pro_select_box='';
            $pro_select_box .='<option>Select District</option>';
            foreach($districts as $district){
            
            $pro_select_box .='<option value="'.$district->DistrictID.'">'.$district->DistrictName.'</option>';
            }
        echo json_encode($pro_select_box);
        }
    }
    // Tehsil Controller
    public function get_tehsil()
    {
        $ProvID = $this->input->post('ProvID');
        $DivisionID = $this->input->post('DivisionID');
        $DistrictID = $this->input->post('DistrictID');
        $tehsils = $this->user_model->getTehsil($ProvID,$DivisionID,$DistrictID);
        if(count($tehsils)>0)
        {
            $pro_select_box='';
            $pro_select_box .='<option>Select Tehsil</option>';
            foreach($tehsils as $tehsil){
            $pro_select_box .='<option value="'.$tehsil->TehsilID.'">'.$tehsil->TehsilName.'</option>';
        }
        echo json_encode($pro_select_box);
        }
    }
    // Main Area Controller        
    public function get_mainArea()
    {
        $ProvID = $this->input->post('ProvID');
        $DivisionID = $this->input->post('DivisionID');
        $DistrictID = $this->input->post('DistrictID');
        $TehsilID = $this->input->post('TehsilID');
        $mainAreas = $this->user_model->getMainArea($ProvID,$DivisionID,$DistrictID,$TehsilID);
        if(count($mainAreas)>0)
        {
        $pro_select_box='';
        $pro_select_box .='<option>Select Main Area</option>';
        foreach($mainAreas as $mainArea)
        {
        $pro_select_box .='<option value="'.$mainArea->LocationID.'">'.$mainArea->LocationName.'</option>';
        }
        echo json_encode($pro_select_box);
        }
    }
  
   
    public function get_profession()
    {
        $JobID = $this->input->post('JobID');
        $professions = $this->user_model->getProfession1($JobID);
        if(count($professions)>0)
        {
            $pro_select_box='';
            $pro_select_box .='<option>Select</option>';
            foreach($professions as $profession){    
            $pro_select_box .='<option value="'.$profession->JobTitleID.'">'.$profession->JobTitle.'</option>';
            }
        echo json_encode($pro_select_box);
        }
    }

    
    
    //............................................................. end Page2
    public function financial()
    {
        // $this->load->view('includes/header'); 
        $this->loadViews('Financial_information', $this->global, NULL);       
    }

    public function table()
    {  
        // $this->load->view('includes/header');
         $data['headoffamily'] = $this->user_model->gridModel();
        $this->loadViews('table_view',$this->global, $data, NULL);
    }

  public function View_Record_People()
    {
        $this->load->library('pagination');
        $query['students'] = $this->Main_Model->View_Record_model();
        $this->loadViews("View_Record", $this->global,$query,NULL);
    }

    public function Family_Head_Reports_by_range() 
    {
        // $this->load->view('includes/header'); 
        $data['data'] =  $this->user_model->test_model();
        $this->loadviews('Admin/reports/Family_Head_Reports_by_range_view',$this->global, $data, NULL);
        
    }

    public function  Family_Head_Reports_by_province() 
    {
        // $this->load->view('includes/header'); 
        $data['data'] =  $this->user_model->test_model();
        $data['data'] =  $this->user_model->provance_data();
        $this->loadViews('Admin/reports/Family_Head_Reports_by_province_view',$this->global, $data, NULL);
    }

    public function Family_Head_Reports_by_range_pdf_report()
    {
        $start = $this->input->post('start');
        $end = $this->input->post('end');
        $result=$this->user_model->report_data_by_id($start,$end);
        $data['result']=$result;
        $this->load->library('pdf');
        $this->pdf->load_view('Admin/reports/Family_Head_Reports_by_range_pdf_report',$data);
    }


    //-----------------------------------------------------------------------For Front View Tree
    public function Head_child_filter_tree()
    {
        // $this->load->view('includes/header'); 
        $data['data'] =  $this->user_model->test_model();
        $this->loadViews('Admin/reports/Head_child_filter_tree_view', $this->global,$data, NULL);
    }
    //-----------------------------------------------------------------------For Report Tree
    public function Head_child_filter_tree_report()
    {
        $start = $this->input->post('start');
        $result=$this->user_model->report_data_tree($start);// for head of family
        $data['result']=$result;
        $result_tree=$this->user_model->report_familytree($start);;// for familytree
        $data['result_tree']=$result_tree;
        // $this->load->library('pdf');
        $this->loadViews('Admin/reports/Head_child_filter_tree_report',$this->global, $data, NULL);
    }

    public function pdf_report2()
    {
        $start = $this->input->post('start');
        echo $start;
        exit();
        $result=$this->user_model->report_data($start);
        $data['result']=$result;
        $this->load->library('pdf');
        $this->pdf->loadViews('Admin/reports/report2',$this->global, $data, NULL);
    }

    public function pdf_report_loation()
    {
        $start = $this->input->post('start');
        $result=$this->user_model->report_data_by_loation($start);
        $data['result']=$result;
        $this->load->library('pdf');
        $this->pdf->load_view('Admin/reports/report2',$data);
    }
    
    public function pdf_report_division()
    {
        $start = $this->input->post('start');
        $result=$this->user_model->report_data_by_citys($start);
        $data['result']=$result;
        $this->load->library('pdf');
        $this->pdf->loadViews('Admin/reports/report',$this->global, $data, NULL);
    }
    
    public function Family_Head_Reports_by_cities()
    {
        // $this->load->view('includes/header'); 
        $data['data'] =  $this->user_model->division_data();
        $data['data'] =  $this->user_model->mainarea_data();
        $this->loadViews('Admin/reports/Family_Head_Reports_by_cities_view',$this->global,  $data, NULL);
    }

    public function   Report_filter_citys()
    {
        $start = $this->input->post('start');
        $result=$this->user_model->report_data_by_citys($start);
        $data['result']=$result;
        $this->load->library('pdf');
        $this->pdf->loadViews('test_try_citys',$this->global, $data, NULL);
    }

    public function Family_Head_Reports_by_cities_pdf_report()
    {
        $start = $this->input->post('brand');
        $end = $this->input->post('item');
        $result=$this->user_model->report_data__citys($end);
        $data['result']=$result;
        $this->load->library('pdf');
        $this->pdf->loadViews('Admin/reports/Family_Head_Reports_by_city',$this->global, $data, NULL);
    }
// old end



//*  zeeshan Data Grid NEW PROJECT CENCUS*/

//new end




                /*  NEW PROJECT CENCUS*/
    //----------------------------New Methods
//*  Muneeb NEW PROJECT CENCUS*/
       
    public function family() {
        // $this->load->view('Admin/includes/header');
        $data['relationshipmatrix']= $this->user_model->getFamilyRelation();
        $data['maritalmatrix']= $this->user_model->getMarital();
        $data['languagematrix']= $this->user_model->getLanguage();
        $data['educationmatrix']= $this->user_model->getEducation();
        $data['jobstatusmatix']= $this->user_model->getJobStatus();
        $id = $_GET['id']; 
        $data['testing'] = $this->user_model->testing_get_data($id);
        $data['testing1'] = $this->user_model->gridModelNew($id);
        $data['jobtitlematix']= $this->user_model->getProfession();
        $this->loadViews('Admin/admin_form/HeadofFamily_update',$this->global,$data, NULL);
        }

    public function HeadOfFamily(){

        $json = $this->input->post();           
        if($json)
        {
        //Insert

        $this->addNewRecord($json);
        }
        else{
        $this->updateRecordsPage1($json);
        }
        }
    public function addNewRecord($data){
        $temp1 = $this->load->model('user_model');
        $query = $this->user_model->insertRecordsPage1($data);
        if($query)
        {
        $temp = json_encode(1);
        redirect('user/personal_info_create');
        }
        else
        {
        $temp = json_encode(0);
        redirect('user/personal_info_create');
        }
        return $temp; 
        }




                /*  NEW PROJECT CENCUS*/
    //----------------------------New Methods
//*  Muneeb NEW PROJECT CENCUS*/
       
public function family_informationNew() {
    if(isset($_GET['id'])){
        $data['relationshipmatrix']= $this->user_model->getFamilyRelation();
        $data['maritalmatrix']= $this->user_model->getMarital();
        $data['languagematrix']= $this->user_model->getLanguage();
        $data['educationmatrix']= $this->user_model->getEducation();
        $data['jobstatusmatix']= $this->user_model->getJobStatus();
        $data['jobtitlematix']= $this->user_model->getProfession();
        $id = $_GET['id']; 
        $data['testing'] = $this->user_model->HOF_Get($id);
        $data['testing1'] = $this->user_model->gridModelNew($id);
         $this->loadViews('Admin/admin_form/family_informationNew',$this->global,$data, NULL);
        }else{
        $data['relationshipmatrix']= $this->user_model->getFamilyRelation();
        $data['maritalmatrix']= $this->user_model->getMarital();
        $data['languagematrix']= $this->user_model->getLanguage();
        $data['educationmatrix']= $this->user_model->getEducation();
        $data['jobstatusmatix']= $this->user_model->getJobStatus();
        $data['jobtitlematix']= $this->user_model->getProfession();
        $this->loadViews('Admin/admin_form/family_informationNew1',$this->global,$data, NULL);
    }
}
    
public function family_informationSave()
{
    $child_data = $this->input->post('data_table');
    $status = $this->user_model->insertRecordsForm2($child_data);
    $this->output->set_content_type('application/json');
    echo json_encode(array('status' => $status));
}

//*  Muneeb NEW PROJECT CENCUS*/
// datagrid head & child
public function datagrid()
{
      
    $data['childData']= $this->user_model->familytreeModel();
    $this->global['pageTitle'] = 'CodeInsect : User Listing';
    $this->loadViews("Admin/admin_views/datagrid", $this->global, $data, NULL);
}

function datagridfx(){
    $data = $this->user_model->gridModellist();
    $i=0;
    foreach ($data as $flagset) {
        $data2[] = array(
        'ID'=> $flagset->ID,
            'FirstName'=> $flagset->FirstName,
            'HFCNIC'=> $flagset->HFCNIC ,
            'FatherFirstName'=>$flagset->FatherFirstName ,
            'Address1'=>$flagset->Address1  ,
            'MainArea'=> $flagset->MainArea ,
            'FormStatusFlag'=>$flagset->FormStatusFlag,
            'URL' => $this->statusflag($flagset->FormStatusFlag, $flagset->ID )
        );
        $i++;
    }
    
    echo json_encode($data2);
}
function statusflag($flagId, $uid){
    $dataFlag = '';
    $idd=  $uid;
    $flagId = $flagId;
    switch ($flagId) {
        case '0':
            $dataFlag = '<a  href="'.base_url().'personal_info_update?id='.$idd.'"><button class="btn btn-warning">Basic Info Missing</button></a>';
            break;
        case '1':
            $dataFlag = '<a  href="'.base_url().'family_informationNew?id='.$idd.'"> <button class="btn btn-success">Basic Info Complete</button></a>';
            break;
        
        default:
        
            break;
    }
    return $dataFlag;
}
//
// create head  url (personal_info_create) ctrl (personal_info_create) model (HeadofFamily_create)

public function personal_info_create(){   
$data_provance['provance'] =  $this->user_model->getProv();  
$this->loadViews("Admin/admin_form/Personal_information", $this->global,  $data_provance, NULL);
}

public function personal_info_create_fn()
{
    $data = $this->input->post();
    $status = $this->user_model->HeadofFamily_create($data);
    $this->output->set_content_type('application/json');
    redirect(base_url('family_informationNew?id=').$status);
}

/// head  url (personal_info_update) ctrl (personal_info_update_fn) model (HeadofFamily_update)   
public function personal_info_update(){   
      $id = $_GET['id']; 
     $data['Get_HOF'] = $this->user_model->HOF_Get($id);

    //
    $data['provance'] =  $this->user_model->getProv();  
    $this->loadViews("Admin/admin_form/Personal_information_edit", $this->global,  $data, NULL);
}  
public function personal_info_update_fn()
{
    $data = $this->input->post();
    $data_id = $this->input->post('HeadID');
    $status = $this->user_model->HeadofFamily_update($data_id,$data);
    $this->output->set_content_type('application/json');
    echo json_encode(array('status' => $status));
    redirect(base_url('family_informationNew?id=').$data_id);

}





// update head url () ctrl () model ()

// create child url () ctrl () model ()

// update child url () ctrl () model ()

// child to head url (family_informationNew) ctrl (child_to_head_create_fn) model ()

        public function child_to_head_create_fn()
        {

            $data = $this->input->post();
            $querys = $this->user_model->updateheadflag($data['FamilyID']);

            $status = $this->user_model->HeadofFamily_create($data);
            $this->output->set_content_type('application/json');

            if($status && $querys){
                redirect(base_url('family_informationNew?id=').$status);
            }
            else
            {
                redirect(base_url('Family_to_head'));
            }
        }
        public function updateheadfamaly()    
        {        
            $data = $this->input->post();
            print_r($data);
            $userId = $_GET['id'];
            $data= $this->user_model->HOF_updatedata($userId,$data);
            //    $data['provance'] =  $this->user_model->getProv();
            redirect('Admin/admin_form/HeadofFamily_update');
        }


        public function update_head_of_famaly()    
        {        
        $userId = $_GET['id'];
        $data['FamilyID'] = $this->user_model->HOD_updateData($userId);
        $data['provance'] =  $this->user_model->getProv();
        $this->loadViews('Admin/admin_form/HeadofFamily_update',$this->global, $data, NULL);


        }

        public function Family_to_head()
        {   
        // $id = $_GET['id'];
        $data['provance'] =  $this->user_model->getProv();   

        $ftid = $_GET['id'];
        $data['FamilyID'] = $this->user_model->get_familytree_data($ftid);
        
        $data['FInfo'] = $this->user_model->family_HOF_Get($data['FamilyID'][0]['HeadID']);
        //  print_r($data['FInfo']);
        // exit();
        $data['id'] = $this->user_model->testing_get_data1($data['FamilyID'][0]['HeadID']);
        $data['provance'] =  $this->user_model->getProv();   
        $this->loadViews("Admin/admin_form/Family_headofFamily", $this->global, $data, NULL);
        }


   




}

?>