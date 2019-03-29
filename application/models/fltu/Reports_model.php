<?php if(!defined('BASEPATH')) exit('No direct script access allowed');




class Reports_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }


function std_record($artt_id,$batch_id)
        {

            $query = $this->db->query("SELECT student.* , courses.* , enroll_student.*,batch.* FROM enroll_student 
                        INNER JOIN student ON enroll_student.student_id = student.studentid
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id 
                        INNER JOIN batch ON enroll_student.batch_id = batch.batch_id
                        WHERE enroll_student.student_id = '".$artt_id."' and enroll_student.batch_id = '".$batch_id."'
                        ");
                    
                    return $query->result();
        }



function std_record_by_id($id)
        {

            $query = $this->db->query("SELECT student.* , courses.* , enroll_student.* FROM enroll_student 
                        INNER JOIN student ON enroll_student.student_id = student.studentid
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id 
                       
                        WHERE enroll_student.student_id = '".$id."'
                        ");
                    
                    return $query->result();
        }
function std_record_by_id1($id,$id2)
    {

        $query = $this->db->query("SELECT student.* , courses.* , enroll_student.* FROM enroll_student 
                        INNER JOIN student ON enroll_student.student_id = student.studentid
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id 
                       
                        WHERE enroll_student.student_id BETWEEN $id AND $id2
                        ");

        return $query->result();
    }






    public function show_courses()
    {
        $query = $this->db->query('select * from courses inner join program on courses.program_id = program.program_id inner join module on courses.module_id = module.module_id');
        return $query->result();
    }

    public function show_enrolled_student($id)
    {

        $query = $this->db->query("SELECT student.*, program.*, courses.*, enroll_student.* FROM enroll_student 
                     	INNER JOIN student ON enroll_student.student_id = student.studentid
                        INNER JOIN program ON enroll_student.program_id = program.program_id
                        INNER JOIN courses ON enroll_student.course_id =courses.course_id
                                   WHERE enroll_student.student_id = ".$id);


        return $query;
    }


    //reports_start
    public function show_paid_reports($id)
    {

        $query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* , batch.*
        	                       FROM enroll_student 
        	            INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid 
                        INNER JOIN batch ON enroll_student.batch_id = batch.batch_id  
                                   WHERE Paid = 1 and batch.batch_id ='.$id);

        return $query->result();
    }
    public function show_all_reports_paid()
    {

        $query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
                                   FROM enroll_student 
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid 
                                   WHERE Paid = 1');

        return $query->result();
    }


public function show_all_reports_unpaid()
    {

        $query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
                                   FROM enroll_student 
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid 
                                   WHERE Paid = 0');

        return $query->result();
    }



    public function show_all_reports_freeze()
    {

        $query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
                                   FROM enroll_student 
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid 
                                   WHERE Freez= "Freeze"');

        return $query->result();
    }


    public function show_all_reports_unfreeze()
    {

        $query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
                                   FROM enroll_student 
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid 
                                   WHERE Freez= "UnFreeze"');

        return $query->result();
    }



    public function show_unpaid_reports($id)
    {

        $query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* , batch.*
        	                       FROM enroll_student 
        	            INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid 
                        INNER JOIN batch ON enroll_student.batch_id = batch.batch_id  
                                   WHERE Paid = 0 and batch.batch_id ='.$id);

        return $query->result();
    }


    public function show_freeze_reports($id)
    {

        $query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* , batch.*
        	                       FROM enroll_student 
        	            INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid 
                        INNER JOIN batch ON enroll_student.batch_id = batch.batch_id  
                                   WHERE Freez= "Freeze" and batch.batch_id ='.$id);

        return $query->result();
    }

    public function show_unfreeze_reports($id)
    {

        $query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* , batch.*
        	                       FROM enroll_student 
        	            INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid 
                        INNER JOIN batch ON enroll_student.batch_id = batch.batch_id  
                                   WHERE Freez= "UnFreeze" and batch.batch_id ='.$id);

        return $query->result();
    }

     public function getstudentlist()

     {
        $this->db->select('*');
        $this->db->from('student');
        $query = $this->db->get();
         return $query->result_array();
     }

function fetch_courses($batch_id)
    {
       $output= $this->db->query("SELECT * FROM courses WHERE module_id =
        (SELECT module_id FROM batch WHERE batch_id ='".$batch_id."')");



        return $output;
    }


    function fetch_batch()
    {
        $this->db->order_by("batch_name", "ASC");
        $query = $this->db->get("batch");
        return $query->result();
    }



public function show_course_based_reports_all_courses($batch)

    {

        $query = $this->db->query("SELECT t.coursecode,t.coursename,t.Total_Student,t.Total_CourseFee,t.TotRcvFeeAmt,
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

WHERE `enroll_student`.`batch_id` = " . $batch . "
GROUP BY `enroll_student`.`course_id`,`courses`.`coursename`
) AS t
ORDER BY t.coursecode");

        return $query->result();

    }





    public function show_course_based_reports($batch,$course)

    {

        $query = $this->db->query("SELECT t.coursecode,t.coursename,t.Total_Student,t.Total_CourseFee,t.TotRcvFeeAmt,
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

WHERE `enroll_student`.`batch_id` = " . $batch . "
AND  `enroll_student`.`course_id` = " . $course . "
GROUP BY `enroll_student`.`course_id`,`courses`.`coursename`
) AS t
ORDER BY t.coursecode");

        return $query->result();

    }











    //reports_end

    public function show_discount_reports()
    {
        $query = $this->db->query('select discount.*,student.* FROM discount 
                                    left JOIN student ON discount.student_id = student.studentid');
        return $query->result();
    }

    public function show_disct()
    {
        $query = $this->db->query("SELECT * FROM discount INNER JOIN student ON 
				discount.student_id = student.studentid
				");
        return $query->result();
    }


    public function show_stds()
    {
        $query = $this->db->query('select * from student inner join batch on student.batch_id = batch.batch_id');
        return $query->result();
    }

    public function show_teachers()
    {
        $query = $this->db->get('teacher');
        return $query->result();
    }

    public function show_pro()
    {
        $query = $this->db->get('program');
        return $query->result();
    }

    public function show_bat()
    {
        $query = $this->db->get('batch');
        return $query->result();
    }


    public function show_batch()
    {
        $query = $this->db->query("SELECT  batch.*  , module.* , program.* FROM batch
                                       INNER JOIN module ON batch.module_id = module.module_id
                                       INNER JOIN program ON batch.program_id = program.program_id");
        return $query->result();
    }

    public function show_batch_for_new_batch(){

        $query = $this->db->query('SELECT * FROM batch');
        return $query->result() ;

    }

    public function show_batch_for_update_student($id){

        $query = $this->db->query("SELECT student.* , batch.* FROM student 
                              INNER JOIN batch on student.batch_id = batch.batch_id 
	                             WHERE studentid = '".$id."' ");
        return $query->result() ;

    }
    public function show_batch_for_new_student(){

        $query = $this->db->query('SELECT * FROM batch ORDER BY batch_id desc');
        return $query->result() ;

    }

    public function show_program_for_update_batch($id){

        $query = $this->db->query("SELECT program.* , batch.* FROM program 
                              INNER JOIN batch on program.program_id = batch.program_id 
	                             WHERE batch_id = '".$id."' ");
        return $query->result() ;


    }
    public function show_mod_for_update_batch($id){

        $query = $this->db->query("SELECT module.* , batch.* FROM module 
                              INNER JOIN batch on module.module_id = batch.module_id 
	                             WHERE batch_id = '".$id."' ");
        return $query->result() ;


    }































    function get_cinfo()
    {
        $this->db->select('*');
        $this->db->from('companyprofile');
        $query = $this->db->get();

        return $query->result();
    }

 function get_report_master_data(){

        $this->db->select('*');
        $this->db->from('program');
        $this->db->join('module','module.program_id = program.program_id');
        $query = $this->db->get();
        return $query->result();
}


       function getstudentduesInfo(){


       }

















    public function get_report_master($Tid,$mrno)
    {
        $this->db->select('*');
        $this->db->from('lab_report_master');
        $this->db->join('lab_report_detail', 'lab_report_master.Tid = lab_report_detail.Tid');
        $this->db->where('lab_report_master.Tid', $Tid);
        $this->db->where('mrno', $mrno);
        $this->db->group_by("lab_report_master.Tid");
        $query = $this->db->get();
        return $query->result();
    }


    public function get_report_details($Tid,$mrno)
    {
        $this->db->select('*');
        $this->db->from('lab_report_master');
        $this->db->join('lab_report_detail', 'lab_report_master.Tid = lab_report_detail.Tid');
        $this->db->where('lab_report_master.Tid', $Tid);
        $this->db->where('mrno', $mrno);
//	$this->db->group_by("patient_name");
//	$this->db->limit(1);
        $query = $this->db->get();
        return $query->result();
    }

    public function get_report_xray($cno,$mrno){
        $this->db->select('*');
        $this->db->from('xray_report');
        $this->db->where('cno', $cno);
        $this->db->where('mrno', $mrno);
        $this->db->order_by("report_date", "DESC");
//	$this->db->limit(1);
        $query = $this->db->get();
        return $query->result();
    }

    public function get_report_audio($mrno){
        $this->db->select('*');
        $this->db->from('audiometry_report_master');
        $this->db->join('audiometry_report_lear', 'audiometry_report_master.cno = audiometry_report_lear.cno');
        $this->db->join('audiometry_report_rear', 'audiometry_report_master.cno = audiometry_report_rear.cno');
        $this->db->where('mrno', $mrno);
        $this->db->order_by("report_date", "DESC");
        $this->db->limit(1);
        $query = $this->db->get();
        return $query->result();
    }


    public function get_report_ett($cno,$mrno){
        $this->db->select('*');
        $this->db->from('ett_report');
        $this->db->where('cno', $cno);
        $this->db->where('mrno', $mrno);
//		$this->db->order_by("report_date", "DESC");
//		$this->db->limit(1);
        $query = $this->db->get();
        return $query->result();
    }


    public function thirdparty_insert($data){
        return $this->db->insert('test',$data);
    }

    public function get_footer_info(){
        $query = $this->db->get('dah_report_footer');
        return $query->result();
    }

    public function thirdpartyfile($mrno,$Tid){

        $this->db->select('external_file_path');
        $this->db->from('lab_report_master');
        $this->db->where('mrno', $mrno);
        $this->db->where('Tid', $Tid);
        $query = $this->db->get();
        return $query->result();

    }

    public function thirdpartyxrayfile($mrno,$Tid){

        $this->db->select('external_file_path');
        $this->db->from('xray_report');
        $this->db->where('mrno', $mrno);
        $this->db->where('cno', $Tid);
        $query = $this->db->get();
        return $query->result();

    }

    public function thirdpartyaudiofile($mrno,$Tid){

        $this->db->select('external_file_path');
        $this->db->from('audio_report_main');
        $this->db->where('mrno', $mrno);
        $this->db->where('cno', $Tid);
        $query = $this->db->get();
        return $query->result();

    }

    public function thirdpartyettfile($mrno,$Tid){

        $this->db->select('external_file_path');
        $this->db->from('ett_report');
        $this->db->where('mrno', $mrno);
        $this->db->where('cno', $Tid);
        $query = $this->db->get();
        return $query->result();

    }
    public function getbatch(){

        $this->db->select('*');
        $this->db->from('batch');

        $query = $this->db->get();
        return $query->result_array();

    }





}

?>

