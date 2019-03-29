<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Accordion extends CI_Model {
public function get_data(){
	$this->db->select('*');
	$this->db->from('program');
	$data=$this->db->get();
	return($data);


}
public function get_programs_batch($id){


	//$this->db->where('program_id',$id);
	//$data=$this->db->get();
	$data=$this->db->query("SELECT batch_name,enroll_student.batch_id,SUM(received_amount)AS 'Rcv_Amt',
        SUM(coursefee) AS 'CourseFee',student_id,
        COUNT(enroll_student.course_id) AS 'Total_Courses',enroll_student.`batch_id`
FROM
    `batch`
    INNER JOIN  `enroll_student` 
        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`)
    INNER JOIN `c2p_ims`.`courses` 
        ON (`enroll_student`.`course_id` = `courses`.`course_id`) 
        AND (`enroll_student`.`module_id` = `courses`.`module_id`) 
        AND (`enroll_student`.`program_id` = `courses`.`program_id`)
        WHERE enroll_student.`program_id`=".$id."
        GROUP BY batch_name");
	return($data);


}
public function get_students($id,$batch,$program)
{
	$data=$this->db->query('SELECT student.fname,student.fathername,batch.batch_name,enroll_student.student_id,enroll_student.program_id,
		enroll_student.student_id,enroll_student.`program_id`,enroll_student.`batch_id`,Sum(enroll_student.received_amount) as rec
FROM
    `program`
    INNER JOIN `batch` 
        ON (`program`.`program_id` = `batch`.`program_id`)
    INNER JOIN `enroll_student` 
        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`) AND (`batch`.`program_id` = `enroll_student`.`program_id`)
    INNER JOIN `student` 
        ON (`enroll_student`.`student_id` = `student`.`studentid`) AND (`enroll_student`.`batch_id` = `student`.`batch_id`)
    INNER JOIN `courses` 
        ON (`enroll_student`.`course_id` = `courses`.`course_id`)
        WHERE enroll_student.`batch_id`='.$batch.' AND enroll_student.program_id='.$program.'
        GROUP BY enroll_student.`student_id`'
        );
	return($data);



}
public function get_students_courses($id,$batch,$program)
{
	$data=$this->db->query('SELECT courses.coursename,courses.coursefee,
		enroll_student.received_amount,enroll_student.discount_amount
FROM
    `program`
    INNER JOIN `batch` 
        ON (`program`.`program_id` = `batch`.`program_id`)
    INNER JOIN `enroll_student` 
        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`) AND (`batch`.`program_id` = `enroll_student`.`program_id`)
    INNER JOIN `student` 
        ON (`enroll_student`.`student_id` = `student`.`studentid`) AND (`enroll_student`.`batch_id` = `student`.`batch_id`)
    INNER JOIN `courses` 
        ON (`enroll_student`.`course_id` = `courses`.`course_id`)
        WHERE enroll_student.`batch_id`='.$batch.' And enroll_student.student_id='.
        $id. ' And enroll_student.program_id='.$program
        );
	return($data);






}


}



