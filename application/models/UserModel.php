<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class UserModel extends CI_Model
{
    /**
     * This function is used to get the user for all data front end
     * all kind of model related to the user to perform there actions
     * this support on UserController
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */

   // references for data base 

    // public function HOD_updateData($userId)
    // {
    //  $this->db->select('*');
    //  $this->db->from('familytree');
    //  $this->db->where('HeadID',$userId);
    //  return $this->db->get()->result_array();
    // }
    // public   function HOF_Get($id)
    // {
    // $this->db->select('*');
    // $this->db->from('headoffamily');
    //  $this->db->where('id',$id);
    // return $this->db->get()->result_array();
    // }


   // User Profile Models
        //insert user information to database
        function UserData_Insert(){
        }
        // fetch user information from database
        function UserData_Fetch(){
            $this->db->where('id',1);
            return $this->db->get('headoffamily')->result();
        }
        // update user information
        function UserData_Update(){

        }
        // insert user family information 
        function UserFamily_Insert(){

        }
        // Fetch user family information 
        function Userfamily_Fetch(){

        }
        // user family information update 
        function UserFamily_Update(){

        }
    // end user profile Models 
    

}