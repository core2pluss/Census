<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Stat_model extends CI_Model {

	public function get_roles_stat($role){
		$this->db->select('COUNT(userId) as num');
  $this->db->from('tbl_users');
  $this->db->where(array('roleId' => $role));
  $query = $this->db->get();
  return $query->result_array();




	}
	public function get_role_text($role)
	{
		$data=$this->db->get_where('tbl_roles',array('roleid'=>$role));
		return($data->result_array());


	}




    public function get_course_data2($program,$batch)
    {
        $result=$this->db->query("SELECT t.coursecode,t.coursename,t.Total_Student,t.Total_CourseFee,t.TotRcvFeeAmt,
    (t.Total_CourseFee-t.TotRcvFeeAmt) Bal_1,
    (t.Total_CourseFee)-(t.TotRcvFeeAmt + t.Frz_Rcv_Amt + t.Discount_Amt) Bal_2,
    t.Reg_Student,t.Reg_Rcv_Amt,
    t.Frz_Student,t.Frz_Rcv_Amt,UnFrz_Student,UnFrz_Rcv_Amt,t.Discount_Case,t.Discount_Amt
FROM (
SELECT
  `enroll_student`.`course_id`,
  `courses`.`coursecode` AS coursecode,
  `courses`.`coursename` AS coursename,
  SUM(`courses`.`coursefee`) AS Total_CourseFee,
  COUNT(`enroll_student`.`student_id`) AS Total_Student,
  SUM(`enroll_student`.`received_amount`) AS TotRcvFeeAmt ,
  
  SUM(IF(`Freez`='','1','0')) AS Reg_Student,
  SUM(IF(`Freez`='',`received_amount`,0))  AS Reg_Rcv_Amt,
  
  SUM(IF(`Freez`='Freez','1','0')) AS Frz_Student,
  SUM(IF(`Freez`='Freez',`received_amount`,0)) AS Frz_Rcv_Amt,
  
  SUM(IF(`Freez`='UnFreez','1','0')) AS UnFrz_Student,
  SUM(IF(`Freez`='UnFreez',`received_amount`,0))  AS UnFrz_Rcv_Amt,
  
  SUM(IF(`discount_per`<>'','1','0'))  AS Discount_Case,
  SUM(IF(`discount_per`<>'',`discount_amount`,0))  AS Discount_Amt
       
FROM
  `artt_db`.`enroll_student`
  INNER JOIN `artt_db`.`courses`
    ON (`enroll_student`.`course_id` = `courses`.`course_id`)
WHERE `enroll_student`.`program_id` = ".$program."
  AND `enroll_student`.`batch_id` = ".$batch."
GROUP BY `enroll_student`.`course_id`,`courses`.`coursename`
) AS t
ORDER BY t.coursecode");
        return $result->result_array();



    }







    
	public function get_roles_data()
	{
		$data=$this->db->query('SELECT NAME,role,email,mobile,createddtm FROM `artt_db`.`tbl_users`INNER JOIN `artt_db`.`tbl_roles` 
        ON (`tbl_users`.`roleId` = `tbl_roles`.`roleId`)');
        return $data->result_array();


	}
	public function get_roles_total()
	{
		

$data=$this->db->get('tbl_users');
return($data);

	}
	public function get_data_by_sp_type($type)
	{
		$data=$this->db->get_where('tbl_roles',array('role'=>$type));
        return $data->result_array();



	}
	public function get_data_by_roleid($roleid)
	{
		$data=$this->db->get_where('tbl_users',array('roleId'=>$roleid));
        return $data->result_array();





	}
	public function get_program(){
		$data=$this->db->get('program');
		return $data->result_array();


	}
	public function get_data_by_program($id)
	{
		$data=$this->db->get_where('module',array('program_id'=>$id));
		return $data->result_array();
		





	}
	public function get_count($module_id)
	{
		$data=$this->db->query('select count(course_id) as count from courses where module_id='.$module_id);
		return $data->result_array();


	}


		public function get_data_by_module1($id)
	{
		$data=$this->db->get_where('courses',array('module_id'=>$id));
		return $data->result_array();



	}
	public function get_data_by_program_batch($id)
	{
		//$data=$this->db->get_where('batch',array('program_id'=>$id));
		$data=$this->db->query("
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
        WHERE enroll_student.`program_id`=".$id."
        GROUP BY batch_name;
        ");
		return $data->result_array();


	}
	public function get_batch_total($id)
	{
		$this->db->select('sum(received_amount) as received');
            $this->db->from('enroll_student');
            $this->db->where('batch_id', $id);
            $data=$this->db->get();
            return $data->result_array();

	}
	public function get_batch_course($id)
	{
		$this->db->select('*');
            $this->db->from('enroll_student');
            $this->db->where('batch_id', $id);
            $data=$this->db->get();
            return $data->result_array();

	}
	public function get_course_name($id)
	{
		$this->db->select('*');
            $this->db->from('courses');
            $this->db->where('course_id', $id);
            $data=$this->db->get();
            return $data->result_array();

	}
	public function get_course_fee($courseid)
	{
		$this->db->select('coursefee');
            $this->db->from('courses');
            $this->db->where('course_id', $courseid);
            $data=$this->db->get();
            return $data->result_array();


	}
	public function get_student_number($courseid,$batchid)
	{
		$this->db->select('count(Distinct student_id) as student');
		$this->db->from('enroll_student');
            $this->db->where('course_id', $courseid);
            $this->db->where('batch_id', $batchid);
            $data=$this->db->get();
            return $data->result_array();



	}
	public function get_paid_amount($courseid,$batchid)
	{
		$this->db->select('sum(received_amount) as received');
            $this->db->from('enroll_student');
            $this->db->where('batch_id', $batchid);
            $this->db->where('course_id', $courseid);
            $data=$this->db->get();
            return $data->result_array();




	}
	public function get_total_paid($id)
	{
		$this->db->select('sum(received_amount) as received');
            $this->db->from('enroll_student');
            $this->db->where('batch_id', $id);
            $data=$this->db->get();
            return $data->result_array();

	}
	public function get_student_total($program,$batchid)
	{
		$this->db->select('count(Distinct student_id) as student');
		$this->db->from('enroll_student');
            $this->db->where('program_id', $program);
            $this->db->where('batch_id', $batchid);
            $data=$this->db->get();
            return $data->result_array();



	}
	
	public function getData_batch($id){
		$data=$this->db->query("
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
        WHERE enroll_student.`batch_id`=".$id
        
        );
        return $data->result_array();

		


	}
	public function getData_batch_detail($id){
		$data=$this->db->query("
SELECT batch_name,received_amount ,coursename,
        coursefee,student.fname,
        enroll_student.course_id 
FROM
 `artt_db`.`batch`
    INNER JOIN `artt_db`.`enroll_student` 
        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`) AND (`batch`.`program_id` = `enroll_student`.`program_id`)
    INNER JOIN `artt_db`.`courses` 
        ON (`enroll_student`.`course_id` = `courses`.`course_id`)
    INNER JOIN `artt_db`.`student` 
        ON (`enroll_student`.`student_id` = `student`.`studentid`)
        WHERE enroll_student.batch_id=".$id
        
        
        
        );
        return $data->result_array();

		


	}

	public function get_fee($course_id)
	{
		$this->db->select('coursefee');
		$this->db->from('courses');
            $this->db->where('course_id', $course_id);
            $data=$this->db->get();
            return $data->result_array();

	}

	public function get_course_data($program,$batch)
	{
		$result=$this->db->query('SELECT
    `courses`.`coursecode`
    , `courses`.`coursename`
    , `batch`.`batch_name`
    , SUM(`courses`.`coursefee`) AS TotalCourseFees
     , SUM(`enroll_student`.`received_amount`) AS TotalRCV_AMT
    , COUNT(`enroll_student`.`student_id`) AS No_Of_Stu
FROM
    `courses`
    INNER JOIN `enroll_student` 
        ON (`courses`.`course_id` = `enroll_student`.`course_id`) AND (`courses`.`program_id` = `enroll_student`.`program_id`) AND (`courses`.`module_id` = `enroll_student`.`module_id`)
    INNER JOIN `batch` 
        ON (`courses`.`module_id` = `batch`.`module_id`) AND (`courses`.`program_id` = `batch`.`program_id`)
        WHERE batch.`batch_id`="'.$batch.'" AND enroll_student.`program_id`="'.$program.'"
        GROUP BY `courses`.`coursecode`    , `courses`.`coursename`, `batch`.`batch_name`');
        return $result->result_array();



	}


	public function get_batches1($id)
	{
		$this->db->select('*');
		$this->db->from('batch');
            $this->db->where('program_id', $id);
            $data=$this->db->get();
            return $data;

	}




	public function get_students_data(){
		$result=$this->db->query("SELECT
    `program`.`program_name`
    , `module`.`module_name`
    , `batch`.`batch_name`
    , COUNT(DISTINCT(`enroll_student`.`student_id`))AS No_Of_Student
     , SUM(`enroll_student`.`received_amount`) Rcv_Amt
FROM
    `artt_db`.`program`
    INNER JOIN `artt_db`.`module` 
        ON (`program`.`program_id` = `module`.`program_id`)
    INNER JOIN `artt_db`.`batch` 
        ON (`module`.`module_id` = `batch`.`module_id`)
    INNER JOIN `artt_db`.`enroll_student` 
        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`)
        GROUP BY `program`.`program_name`");
        return $result->result_array();



	}
	public function get_students_data1(){
		$result=$this->db->query("SELECT t.program_name,t.module_name,t.batch_name,
MAX(t.Freez_Status) AS Freez_Status,
SUM(t.Freez_Student) AS Freez_Student,
SUM(t.Freez_Amount) AS Freez_Amount,
MAX(t.UnFreez_Status) AS UnFreez_Status,
SUM(t.UnFreez_Student) AS UnFreez_Student,
SUM(t.UnFreez_Amount) AS UnFreez_Amount,
MAX(t.Reg_Status) AS Reg_Status,
SUM(t.Reg_Student) AS Reg_Student,
SUM(t.Reg_Amount) AS Reg_Amount

FROM (
SELECT
    `program`.`program_name`
    , `module`.`module_name`
    , `batch`.`batch_name`
    , `enroll_student`.`Freez` AS Freez_Status
    , COUNT(DISTINCT(`enroll_student`.`student_id`))AS Freez_Student
    , SUM(`enroll_student`.`received_amount`) Freez_Amount
    , 0 AS UnFreez_Status
    , 0 AS UnFreez_Student
    , 0 AS UnFreez_Amount
    , 0 AS Reg_Status
    , 0 AS Reg_Student
    , 0 AS Reg_Amount
FROM
    `artt_db`.`program`
    INNER JOIN `artt_db`.`module` 
        ON (`program`.`program_id` = `module`.`program_id`)
    INNER JOIN `artt_db`.`batch` 
        ON (`module`.`module_id` = `batch`.`module_id`)
    INNER JOIN `artt_db`.`enroll_student` 
        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`)
        WHERE `enroll_student`.`Freez`='Freez'
       GROUP BY `program`.`program_name`
    , `module`.`module_name`
    , `batch`.`batch_name`
    , `enroll_student`.`Freez`
UNION ALL
SELECT
    `program`.`program_name`
    , `module`.`module_name`
    , `batch`.`batch_name`
    , 0 AS Freez_Status
    , 0 AS Freez_Student
    , 0 AS Freez_Amount
    , `enroll_student`.`Freez` AS UnFreez_Status
    , COUNT(DISTINCT(`enroll_student`.`student_id`))AS UnFreez_Student
    , SUM(`enroll_student`.`received_amount`) UnFreez_Amount
    , 0 AS Reg_Status
    , 0 AS Reg_Student
    , 0 AS Reg_Amount
FROM
    `artt_db`.`program`
    INNER JOIN `artt_db`.`module` 
        ON (`program`.`program_id` = `module`.`program_id`)
    INNER JOIN `artt_db`.`batch` 
        ON (`module`.`module_id` = `batch`.`module_id`)
    INNER JOIN `artt_db`.`enroll_student` 
        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`)
        WHERE `enroll_student`.`Freez`='UnFreez'
       GROUP BY `program`.`program_name`
    , `module`.`module_name`
    , `batch`.`batch_name`
    , `enroll_student`.`Freez`
UNION ALL
    SELECT
    `program`.`program_name`
    , `module`.`module_name`
    , `batch`.`batch_name`
    , 0 AS Freez_Status
    , 0 AS Freez_Student
    , 0 AS Freez_Amount
    , 0 AS UnFreez_Status
    , 0 AS UnFreez_Student
    , 0 AS UnFreez_Amount
    , 'Regular' AS Reg_Status
    , COUNT(DISTINCT(`enroll_student`.`student_id`))AS Reg_Student
    , SUM(`enroll_student`.`received_amount`) Reg_Amount
 FROM
    `artt_db`.`program`
    INNER JOIN `artt_db`.`module` 
        ON (`program`.`program_id` = `module`.`program_id`)
    INNER JOIN `artt_db`.`batch` 
        ON (`module`.`module_id` = `batch`.`module_id`)
    INNER JOIN `artt_db`.`enroll_student` 
        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`)
        WHERE `enroll_student`.`Freez`=''
       GROUP BY `program`.`program_name`
    , `module`.`module_name`
    , `batch`.`batch_name`
    , `enroll_student`.`Freez` ) t");
        return $result->result_array();

	}

}