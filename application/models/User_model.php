<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class User_model extends CI_Model
{
    /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function userListingCount($searchText = '')
    {
        $this->db->select('BaseTbl.userId, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, BaseTbl.createdDtm, Role.role');
        $this->db->from('tbl_users as BaseTbl');
        $this->db->join('tbl_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%'
                            OR  BaseTbl.name  LIKE '%".$searchText."%'
                            OR  BaseTbl.mobile  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.roleId !=', 1);
        $query = $this->db->get();
        
        return $query->num_rows();
    }
    
    /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function userListing($searchText = '', $page, $segment)
    {
        $this->db->select('BaseTbl.userId, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, BaseTbl.createdDtm, Role.role');
        $this->db->from('tbl_users as BaseTbl');
        $this->db->join('tbl_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%'
                            OR  BaseTbl.name  LIKE '%".$searchText."%'
                            OR  BaseTbl.mobile  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.roleId !=', 1);
        $this->db->order_by('BaseTbl.userId', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();
        $result = $query->result();        
        return $result;
    }
    
    /**
     * This function is used to get the user roles information
     * @return array $result : This is result of the query
     */
    function getUserRoles()
    {
        $this->db->select('roleId, role');
        $this->db->from('tbl_roles');
        $this->db->where('roleId !=', 1);
        $query = $this->db->get();
        return $query->result();
    }

    public function get_user()
    {
        $this->db->select('*');
        $this->db->from('tbl_users');
        $query=$this->db->get();
        return $query;
    }
    public function get_students()
    {
        $this->db->select('*');
        $this->db->from('student');
        $query=$this->db->get();
        return $query;
    }

    public function sum_earning($id)
    {
        $query=$this->db->query("
        SELECT batch_name,SUM(received_amount)AS 'Rcv_Amt',
                SUM(coursefee) AS 'CourseFee',student_id,
                COUNT(enroll_student.course_id) AS 'Total_Courses',enroll_student.`batch_id`
        FROM
            `artt_db`.`batch`
            INNER JOIN `artt_db`.`enroll_student` 
                ON (`batch`.`batch_id` = `enroll_student`.`batch_id`)
            INNER JOIN `artt_db`.`courses` 
                ON (`enroll_student`.`course_id` = `courses`.`course_id`) 
                AND (`enroll_student`.`module_id` = `courses`.`module_id`) 
                AND (`enroll_student`.`program_id` = `courses`.`program_id`)
                WHERE enroll_student.`program_id`=".$id
         );
                return $query->result_array();
    }
    /**
     * This function is used to check whether email id is already exist or not
     * @param {string} $email : This is email id
     * @param {number} $userId : This is user id
     * @return {mixed} $result : This is searched result
     */
    function checkEmailExists($email, $userId = 0)
    {
        $this->db->select("email");
        $this->db->from("tbl_users");
        $this->db->where("email", $email);   
        $this->db->where("isDeleted", 0);
        if($userId != 0){
            $this->db->where("userId !=", $userId);
        }
        $query = $this->db->get();
        return $query->result();
    }
    
    function addNewUser($userInfo)
    {
        $this->db->trans_start();
        $this->db->insert('tbl_users', $userInfo);
        $insert_id = $this->db->insert_id();
        $this->db->trans_complete();
        return $insert_id;
    }
    /**
     * This function used to get user information by id
     * @param number $userId : This is user id
     * @return array $result : This is user information
     */
    function getUserInfo($userId)
    {
        $this->db->select('userId, name, email, mobile, roleId');
        $this->db->from('tbl_users');
        $this->db->where('isDeleted', 0);
		$this->db->where('roleId !=', 1);
        $this->db->where('userId', $userId);
        $query = $this->db->get();
        return $query->row();
    }
    /**
     * This function is used to update the user information
     * @param array $userInfo : This is users updated information
     * @param number $userId : This is user id
     */
    function editUser($userInfo, $userId)
    {
        $this->db->where('userId', $userId);
        $this->db->update('tbl_users', $userInfo);
        return TRUE;
    }
    /**
     * This function is used to delete the user information
     * @param number $userId : This is user id
     * @return boolean $result : TRUE / FALSE
     */
    function deleteUser($userId, $userInfo)
    {
        $this->db->where('userId', $userId);
        $this->db->update('tbl_users', $userInfo);
        
        return $this->db->affected_rows();
    }
    /**
     * This function is used to match users password for change password
     * @param number $userId : This is user id
     */
    function matchOldPassword($userId, $oldPassword)
    {
        $this->db->select('userId, password');
        $this->db->where('userId', $userId);        
        $this->db->where('isDeleted', 0);
        $query = $this->db->get('tbl_users');
        $user = $query->result();
        if(!empty($user)){
            if(verifyHashedPassword($oldPassword, $user[0]->password)){
                return $user;
            } else {
                return array();
            }
        } else {
            return array();
        }
    }
    
    /**
     * This function is used to change users password
     * @param number $userId : This is user id
     * @param array $userInfo : This is user updation info
     */
    function changePassword($userId, $userInfo)
    {
        $this->db->where('userId', $userId);
        $this->db->where('isDeleted', 0);
        $this->db->update('tbl_users', $userInfo);
        return $this->db->affected_rows();
    }

    /**
     * This function is used to get user login history
     * @param number $userId : This is user id
     */
    function loginHistoryCount($userId, $searchText, $fromDate, $toDate)
    {
        $this->db->select('BaseTbl.userId, BaseTbl.sessionData, BaseTbl.machineIp, BaseTbl.userAgent, BaseTbl.agentString, BaseTbl.platform, BaseTbl.createdDtm');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.sessionData LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        if(!empty($fromDate)) {
            $likeCriteria = "DATE_FORMAT(BaseTbl.createdDtm, '%Y-%m-%d' ) >= '".date('Y-m-d', strtotime($fromDate))."'";
            $this->db->where($likeCriteria);
        }
        if(!empty($toDate)) {
            $likeCriteria = "DATE_FORMAT(BaseTbl.createdDtm, '%Y-%m-%d' ) <= '".date('Y-m-d', strtotime($toDate))."'";
            $this->db->where($likeCriteria);
        }
        if($userId >= 1){
            $this->db->where('BaseTbl.userId', $userId);
        }
        $this->db->from('tbl_last_login as BaseTbl');
        $query = $this->db->get();
        return $query->num_rows();
    }

    /**
     * This function is used to get user login history
     * @param number $userId : This is user id
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function loginHistory($userId, $searchText, $fromDate, $toDate, $page, $segment)
    {
        $this->db->select('BaseTbl.userId, BaseTbl.sessionData, BaseTbl.machineIp, BaseTbl.userAgent, BaseTbl.agentString, BaseTbl.platform, BaseTbl.createdDtm');
        $this->db->from('tbl_last_login as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.sessionData  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        if(!empty($fromDate)) {
            $likeCriteria = "DATE_FORMAT(BaseTbl.createdDtm, '%Y-%m-%d' ) >= '".date('Y-m-d', strtotime($fromDate))."'";
            $this->db->where($likeCriteria);
        }
        if(!empty($toDate)) {
            $likeCriteria = "DATE_FORMAT(BaseTbl.createdDtm, '%Y-%m-%d' ) <= '".date('Y-m-d', strtotime($toDate))."'";
            $this->db->where($likeCriteria);
        }
        if($userId >= 1){
            $this->db->where('BaseTbl.userId', $userId);
        }
        $this->db->order_by('BaseTbl.id', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();
        $result = $query->result();        
        return $result;
    }

    /**
     * This function used to get user information by id
     * @param number $userId : This is user id
     * @return array $result : This is user information
     */
    function getUserInfoById($userId)
    {
        $this->db->select('userId, name, email, mobile, roleId');
        $this->db->from('tbl_users');
        $this->db->where('isDeleted', 0);
        $this->db->where('userId', $userId);
        $query = $this->db->get(); 
        return $query->row();
    }

    /**
     * This function used to get user information by id with role
     * @param number $userId : This is user id
     * @return aray $result : This is user information
     */
    function getUserInfoWithRole($userId)
    {
        $this->db->select('BaseTbl.userId, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, BaseTbl.roleId, Roles.role');
        $this->db->from('tbl_users as BaseTbl');
        $this->db->join('tbl_roles as Roles','Roles.roleId = BaseTbl.roleId');
        $this->db->where('BaseTbl.userId', $userId);
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();
        return $query->row();
    }

    //OSMAM

    function companyprofile($data)
    {
        $this->db->where('companyId', 1);
        $this->db->update('companyprofile', $data);
        return TRUE;
    }
    
    function getcprofile()
    {
        $this->db->select('*');
        $this->db->from('companyprofile');
        return $this->db->get()->result();
    }
    function gridModellist(){
        return $this->db->get('headoffamily')->result();
    }
    public function getmodeule($id)
    {
        $this->db->select('*');
        $this->db->where('program_id',$id);
        $this->db->from('module');
        return $this->db->get()->result_array();
    }
    //New Census Coding 

//Muneeb
    // public function gridModel()
    // {
    //     $gridData = $this->db->get("headoffamily");
    //     return $gridData->result();
    // }

    // ------------------New
    // public function gridModelNew($idNew)
    // {
    //     $this->db->select('*');
    //     $this->db->where('HeadID', $idNew);
    //     $this->db->from('familytree');
    //     return $this->db->get()->result_array();
    // }
    // For Province
    public function getProv()
    {
        $provance = $this->db->get("provance");
        return $provance->result();
        // $cnic = $this->db->get("provance");
        // return $cnic->result();
    }
    // For Division    
    public function getDivision($ProvID)
    {
        $cnic = $this->db->get_where("division", array('ProvID'=>$ProvID));
        return $cnic->result();    
    }
    // For District
    public function getDistrict($ProvID, $DivisionID)
    {
        $cnic = $this->db->get_where("district", array('ProvID'=>$ProvID,'DivisionID'=>$DivisionID));
        return $cnic->result();        
    }
    // For Tehsil
    public function getTehsil($ProvID, $DivisionID,$DistrictID)
    {
        $cnic = $this->db->get_where("tehsil", array('ProvID'=>$ProvID,'DivisionID'=>$DivisionID,'DistrictID'=>$DistrictID));
        return $cnic->result();
    }
    // For MainArea
    public function getMainArea($ProvID, $DivisionID)
    {
        $cnic = $this->db->get_where("mainArea", array('ProvID'=>$ProvID,'DivisionID'=>$DivisionID));
        return $cnic->result();
    }
    
    //------------------------------------------------------- end Page One

    public function getFamilyRelation()
    {
        $query = $this->db->get('relationshipmatrix');
        return $query->result();
    }
    public function getMarital()
    {
        $query = $this->db->get('maritalmatrix');
        return $query->result();
    }
    public function getLanguage()
    {
        $query = $this->db->get('languagematrix');
        return $query->result();
    }
    public function getEducation()
    {
        $query = $this->db->get('educationmatrix');
        return $query->result();
    }
    public function getJobStatus()
    {
        $query = $this->db->get('jobstatusmatix');
        return $query->result();
    }
    public function getProfession()
    {
        $query = $this->db->get('jobtitlematix');
        return $query->result();
    }
    // Ajax Profession

    public function getProfession1($JobID)
    {
        $query = $this->db->get_where("jobtitlematix", array('JobID'=>$JobID));
        return $query->result();
    }
    
    function insertRecordsPage2($data)
    {
        $data = array(
            // 'FamilyID' => $data['FamilyID'],
            'HFCNIC' => $data['HFCNIC'],
            'HeadID' => $data['HeadID'],
            'MemberName' => $data['MemberName'],
            'MemberCNIC' => $data['MemberCNIC'],
            'RelationshipHF' => $data['RelationshipHF'],
            'Gender' => $data['Gender'],
            'Age' => $data['Age'],
            'MaritalStaus' => $data['MaritalStatus'],
            'Religion' => $data['Religion'],
            'Language' => $data['Language'],
            'Nationality' => $data['Nationality'],
            'Education' => $data['Education'],
            'JobStatus' => $data['JobStatus'],
            'Profession' => $data['Profession']
        );
            $query = $this->db->insert('familytree',$data);
        return $query;
    }
   
    public   function testing_get_data($id)
    {
       
      $this->db->select('*');
       $this->db->from('headoffamily');
        $this->db->where('id',$id);
     return $this->db->get()->result_array();
     }
    public function test_model()
    {
        $this->db->select('*');
        $this->db->from('headoffamily');
        return $this->db->get()->result();
    }
    public function provance_data()
    {
        $this->db->select('*');
        $this->db->from('provance');
        return $this->db->get()->result();
    }
   
    public function division_data()
    {
        $this->db->select('*');
        $this->db->from('division');
        return $this->db->get()->result();
    }

    public function mainarea_data()
    {
        $this->db->select('*');
        $this->db->from('mainarea');
        return $this->db->get()->result();
    }
    public function report_data__citys($end)
    {
        $this->db->select('*');
        $this->db->from('headoffamily');
        $this->db->where('MainArea',$end);
        return $this->db->get()->result();
    }

    public function report_data($start)
    {
        $this->db->select('*');
        $this->db->from('headoffamily');
        $this->db->where('ID', $start);
        return $this->db->get()->result();
    }

    public function report_data_by_id($start,$end)
    {
        $this->db->select('*');
        $this->db->from('headoffamily');
        $this->db->where('ID >=', $start);
        $this->db->where('ID <=', $end);
        return $this->db->get()->result();
    }

    public function report_data_tree($start)
    {
        $this->db->select('*');
        $this->db->from('headoffamily');
        $this->db->where('ID', $start);
        return $this->db->get()->result();
    }

    public function report_data_by_loation($start)
    {
        $this->db->select('*');
        $this->db->from('headoffamily');
        $this->db->where('Prov', $start);
        return $this->db->get()->result();
    }
    public function report_data_by_citys($start)
    {
        $this->db->select('*');
        $this->db->from('headoffamily');
        $this->db->where('CityDivision', $start);
        return $this->db->get()->result();
    }
    public function report_familytree($start)
    {
        $this->db->select('*');
        $this->db->from('familytree');
        $this->db->where('HeadID', $start);
        return $this->db->get()->result();
    }

    //------------------------------------------------------------------end page 2
    //------------------------------------------------------------------New Census Coding faisal

    // function userListingCount($searchText = '')
    // {
    //     $this->db->select('BaseTbl.userId, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, BaseTbl.createdDtm, Role.role');
    //     $this->db->from('tbl_users as BaseTbl');
    //     $this->db->join('tbl_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
    //     if(!empty($searchText)) {
    //         $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%'
    //                         OR  BaseTbl.name  LIKE '%".$searchText."%'
    //                         OR  BaseTbl.mobile  LIKE '%".$searchText."%')";
    //         $this->db->where($likeCriteria);
    //     }
    //     $this->db->where('BaseTbl.isDeleted', 0);
    //     $this->db->where('BaseTbl.roleId !=', 1);
    //     $query = $this->db->get();
        
    //     return $query->num_rows();
    // }

//   public function gridModel(){
//         $gridData = $this->db->get("headoffamily");
//         return $gridData->result();
//     }



        // //HOF = head of family
        // function HOF_updatedata($userId, $data)
        //     {
        //         $this->db->where('HeadID', $userId);
        //         $this->db->update('headoffamily', $data);
                
        //         return TRUE;
        //     }
        // function updateheadflag($ftid)
        //     {
        //     $this->db->set('headflag',1);
        //         $this->db->where('FamilyID', $ftid);
        //         $query = $this->db->update('familytree', $data);     
        //         return $query;
        //     }
        // public function HOD_updateData($userId)
        // {
        //     $this->db->select('*');
        //     $this->db->from('headoffamily');
        //     $this->db->where('HeadID',$userId);
        //     return $this->db->get()->result_array();
        // }

    // public function getProv(){
    //     $provance = $this->db->get("provance");
    //     return $provance->result();

    // }

//   public function familytreeModel(){
//     $temp = $this->db->select('*')->from('familytree')->group_start()->where('MaritalStaus >=','2')->where('Gender',1)->group_end()->get();
//     // $familytreeModel = $this->db->get("familytree");
//     return $temp->result();
//     }
//  public   function get_familytree_data($id)
//      {
       
//       $this->db->select('*');
//        $this->db->from('familytree');
//         $this->db->where('FamilyID',$id);
//      return $this->db->get()->result_array();
//      }
//       public   function testing_get_data1($id)
//      {
       
//       $this->db->select('*');
//        $this->db->from('headoffamily');
//         $this->db->where('HeadID',$id);
//      return $this->db->get()->result_array();
//      }
//      public function insertRecordsForm2($child_data) {
//         //pass all data using loop to array
//         for ($x =0; $x < count($child_data); $x++){
//         $data[] = array(
//             // 'no' => $child_data[$x]['no'],
//             'MemberName' => $child_data[$x]['MemberName'],
//             'MemberCNIC' => $child_data[$x]['MemberCNIC'],
//             'RelationshipHF' => $child_data[$x]['RelationshipHF'],
//             'Gender' => $child_data[$x]['Gender'],
//             'Age' => $child_data[$x]['Age'],
//             'MaritalStaus' => $child_data[$x]['MaritalStaus'],
//             // 'Nationality' => $child_data[$x]['Nationality'],
//             'HFCNIC' => $child_data[$x]['HFCNIC'],
//             'HeadID' => $child_data[$x]['HeadID'],
//             // 'FirstName' => $child_data[$x]['FirstName'],
//             'Education' => $child_data[$x]['Education'],
//             'JobStatus' => $child_data[$x]['JobStatus'],
//             'Profession' => $child_data[$x]['Profession'],
//         );
//         }
//         try
//         {
//             //insert
//             for($x =0; $x<count($child_data); $x++)
//             {
//                 $this->db->insert('familytree', $data[$x]); 
//             }
//             return 'success';
//         }
//         catch(Exception $e)
//         {
//             return 'failed';
//         }
//     }



    //*  Muneeb NEW PROJECT CENCUS*/
// create head
function insertRecordsPage1($data)
    {
        $data = array(
            'FirstName' => $data['FirstName'],
            'MiddleName' => $data['MiddleName'],
            'LastName' => $data['LastName'],
            'HFCNIC' => $data['HFCNIC'],
            'FatherFirstName' => $data['FatherFirstName'],
            'FatherMiddleName' => $data['FatherMiddleName'],
            'FatherLastName' => $data['FatherLastName'],
            'FatherCNIC' => $data['FatherCNIC'],
            'HeadID' => $data['HeadID'],
            'MobileNo' => $data['MobileNo'],
            'Email' => $data['Email'],
            'Prov' => $data['Prov'],
            'CityDivision' => $data['CityDivision'],
            'District' => $data['District'],
            'Tehsil' => $data['Tehsil'],
            'PostalCode' => $data['PostalCode'],
            'Block' => $data['BlockArea'],
            'Address1' => $data['Address1'],
            'Address2' => $data['Address2'],
            'mainArea' => $data['mainArea']         
        );
        $query = $this->db->insert('headoffamily',$data);       
        return $query;
    }

// update head
// create child
// update child
// child to head






    //------------------------------------------------------------------end page 2
    //------------------------------------------------------------------New Census Coding faisal

    // function userListingCount($searchText = '')
    // {
    //     $this->db->select('BaseTbl.userId, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, BaseTbl.createdDtm, Role.role');
    //     $this->db->from('tbl_users as BaseTbl');
    //     $this->db->join('tbl_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
    //     if(!empty($searchText)) {
    //         $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%'
    //                         OR  BaseTbl.name  LIKE '%".$searchText."%'
    //                         OR  BaseTbl.mobile  LIKE '%".$searchText."%')";
    //         $this->db->where($likeCriteria);
    //     }
    //     $this->db->where('BaseTbl.isDeleted', 0);
    //     $this->db->where('BaseTbl.roleId !=', 1);
    //     $query = $this->db->get();
        
    //     return $query->num_rows();
    // }

//   public function gridModel(){
//         $gridData = $this->db->get("headoffamily");
//         return $gridData->result();
//     }



       
    // public function getProv(){
    //     $provance = $this->db->get("provance");
    //     return $provance->result();

    // }

    public function familytreeModel(){
        $temp = $this->db->select('*')->from('familytree')->group_start()->where('MaritalStaus >=','1')->where('Gender',1)->group_end()->get();
        // $familytreeModel = $this->db->get("familytree");
        return $temp->result();
        }
        public   function get_familytree_data($id)
         {
           
          $this->db->select('*');
           $this->db->from('familytree');
            $this->db->where('FamilyID',$id);
         return $this->db->get()->result_array();
         }
          public   function testing_get_data1($id)
         {
           
          $this->db->select('*');
           $this->db->from('headoffamily');
            $this->db->where('HeadID',$id);
         return $this->db->get()->result_array();
         }
         public function insertRecordsForm2($child_data) {
            //pass all data using loop to array
            for ($x =0; $x < count($child_data); $x++){
            $data[] = array(
                // 'no' => $child_data[$x]['no'],
                'MemberName' => $child_data[$x]['MemberName'],
                'MemberCNIC' => $child_data[$x]['MemberCNIC'],
                'RelationshipHF' => $child_data[$x]['RelationshipHF'],
                'Gender' => $child_data[$x]['Gender'],
                'Age' => $child_data[$x]['Age'],
                'MaritalStaus' => $child_data[$x]['MaritalStaus'],
                // 'Nationality' => $child_data[$x]['Nationality'],
                'HFCNIC' => $child_data[$x]['HFCNIC'],
                'HeadID' => $child_data[$x]['HeadID'],
                // 'FirstName' => $child_data[$x]['FirstName'],
                'Education' => $child_data[$x]['Education'],
                'JobStatus' => $child_data[$x]['JobStatus'],
                'Profession' => $child_data[$x]['Profession'],
            );
            }
            try
            {
                //insert
                for($x =0; $x<count($child_data); $x++)
                {
                    $this->db->insert('familytree', $data[$x]); 
                }
                return 'success';
            }
            catch(Exception $e)
            {
                return 'failed';
            }
        }
    
    
    
        //*  Muneeb NEW PROJECT CENCUS*/
    // create head
        function HeadofFamily_create($data)
        {
            $query = $this->db->insert('headoffamily',$data); 
            $insert_id = $this->db->insert_id();      
            return  $insert_id;
        }
    // update head
    
    function HeadofFamily_update($id, $data_update)
    {
        $this->db->where('id',$id );
        $this->db->update('headoffamily', $data_update);
        return $this->db->affected_rows();
    }
    // person_info_create
    
    // create child
    // update child
    // child to head
     //HOF = head of family
     function HOF_updatedata($userId, $data)
     {
         $this->db->where('HeadID', $userId);
         $this->db->update('headoffamily', $data);
         return TRUE;
     }
    function updateheadflag($ftid)
     {
     $this->db->set('headflag',1);
         $this->db->where('FamilyID', $ftid);
         $query = $this->db->update('familytree');     
         return $query;
     }
    public function HOD_updateData($userId)
    {
     $this->db->select('*');
     $this->db->from('headoffamily');
     $this->db->where('HeadID',$userId);
     return $this->db->get()->result_array();
    }
    public   function HOF_Get($id)
    {
    $this->db->select('*');
    $this->db->from('headoffamily');
     $this->db->where('id',$id);
    return $this->db->get()->result_array();
    }
    public   function family_HOF_Get($id)
    {
    $this->db->select('*');
    $this->db->from('headoffamily');
     $this->db->where('id',$id);
    return $this->db->get()->result_array();
    }
    public function gridModelNew($idNew)
    {
      $this->db->select('*');
      $this->db->where('HeadID', $idNew);
      $this->db->from('familytree');
      return $this->db->get()->result_array();
    }

}