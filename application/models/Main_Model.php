<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main_Model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();		
	}

	public function get_select()
	{
		$this->load->database();
		$query = $this->db->query("select * from roll");
		return $query->result();
	}

	public function insert_bkofficer($data)
	{
		
		$data = array(

			'signup_name' => $data['name'],
			'signup_email'  => $data['email'],
			'signup_password' => $data['password'],
			'position' => $data['position'],
			'roll_id' => 3,
			'status'  => 1
		);
		$query = $this->db->insert('signup',$data);
		return $query;
	}

	public function show_bko()
	{
		$query = $this->db->get('signup');
		return $query->result();
	}

	public function delete_bko($id)
	{
		$this->db->where('signup_id',$id);
		$query = $this->db->delete('signup');
		return $query;
	}

	public function update_bkofficer($data)
	{
		$id = $this->input->post('text_hid');

		$datas = array(

			'signup_name' => $data['name'],
			'signup_email' => $data['email'],
			'signup_password' => $data['password'],
			'position' => $data['position']

			);

		$this->db->where("signup_id",$id);
		$this->db->update('signup',$datas);
		//return $query->result();

		if($this->db->affected_rows()> 0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	public function upd_bko($id)
	{
		$this->db->where('signup_id',$id);
		$query = $this->db->get('signup');
		return $query->result();

		if($query->num_rows() > 0)
		{
			return $query->row_array();
		}
		else
		{
			return false;
		}
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
                                   LEFT JOIN module ON batch.module_id = module.module_id
                                   LEFT JOIN program ON batch.program_id = program.program_id");
		return $query->result();
	}
	public function show_batch_for_new_batch_transfer($id3)
	{
		$query = $this->db->query('SELECT * FROM batch Where module_id="'.$id3.'"');
		return $query->result() ;
	}
//OSMAN

	public function print_voucher_refund($id,$course_id)
    {
        $query = $this->db->query("SELECT enroll_student.* , student.* , courses.*  FROM enroll_student 
						left JOIN student ON enroll_student.`student_id` = student.`studentid`
						left JOIN courses ON enroll_student.`course_id` = courses.`course_id`
						WHERE student.`studentid` = '" . $id . "' and courses.`course_id` = '" . $course_id . "' ");
        return $query;
    }

    public function print_voucher1_refund($id, $pay_amount, $remain_fees)
    {
        $query = $this->db->query("SELECT *  FROM master_vocher
						WHERE student_id = '" . $id . "' AND  pay_amount='" . $pay_amount . "' AND  remain_fees='" . $remain_fees . "'");
        return $query;
    }

    public function show_fee_details_in_student_profile1($id,$cid)
    {
        $query = $this->db->query("SELECT student.* , courses.* , enroll_student.* FROM enroll_student 
                        INNER JOIN student ON enroll_student.student_id = student.studentid
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id 
                        WHERE enroll_student.student_id = '" . $id . "' 
                        AND enroll_student.course_id = '" . $cid . "' 
                        ");
        return $query->result();
    }

    public function update_refund_status($data,$id)
	{
	    $refundtbl = array(
	        'student_id' => $id,
	        'batch_id' => $data['batch_id'],
	        'remarks' => $data['msg'],
	        'percentage' => $data['per'],
	        'refund_amount' => $data['refund_amount']
	    );
	    $query = $this->db->insert('refund', $refundtbl);
	    $datas = array(

	        'Paid' => 2,
	        'refund_amount' => $data['refund_amount'],
	        'refund_per' => $data['per']
	    );
	    $this->db->where('student_id',$id);
	    $this->db->where('course_id',$data['courseid']);
	    $this->db->update('enroll_student',$datas);
	}
		//OSMAN	
	public function show_batch_for_new_batch()
	{
		$query = $this->db->query("SELECT * FROM batch ");
		return $query->result() ;
	}

	public function show_batch_for_update_student($id)
	{
		$query = $this->db->query("SELECT student.* , batch.* FROM student 
                              INNER JOIN batch on student.batch_id = batch.batch_id 
	                             WHERE studentid = '".$id."' ");
		return $query->result() ;
	}
	
	public function show_batch_for_new_student()
	{
		$query = $this->db->query('SELECT * FROM batch ORDER BY batch_id desc');
		return $query->result() ;
	}
	public function show_program_for_update_batch($id)
	{
		$query = $this->db->query("SELECT program.* , batch.* FROM program 
                              		INNER JOIN batch on program.program_id = batch.program_id 
	                        		WHERE batch_id = '".$id."' ");
		return $query->result();
		}
		public function show_mod_for_update_batch($id){

$query = $this->db->query("SELECT module.* , batch.* FROM module 
                              INNER JOIN batch on module.module_id = batch.module_id 
	                             WHERE batch_id = '".$id."' ");
			return $query->result() ;


		}

		
	public function insert_program($data)
	{
			$data = array(
				'program_name' => $data['name'],
				'startdate'  => $data['doj'],
				'enddate' => $data['doe'],
				'status'  => 1
			);
			$query = $this->db->insert('program',$data);
			return $query;
	}	

		public function upd_pro($id)
		{
			$this->db->where('program_id',$id);
			$query = $this->db->get('program');
			return $query->result();

			if($query->num_rows() > 0)
			{
				return $query->row_array();
			}
			else
			{
				return false;
			}
		}
		
		public function update_program($data)
		{
			$id = $this->input->post('text_hid');

			$datas = array(

				'program_name' => $data['name'],
				'startdate'  => $data['doj'],
				'enddate' => $data['doe'],
				'status'  => 1

				);

			$this->db->where("program_id",$id);
			$this->db->update('program',$datas);
			//return $query->result();

			if($this->db->affected_rows()> 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		public function delete_pro($id)
		{
			$this->db->where('program_id',$id);
			$query = $this->db->delete('program');
			return $query;
		}

		public function insert_batch($data)
		{
			
			$data = array(
				'program_id' => $data['program_id'],
				'module_id' => $data['module_id'],
				'batch_name' => $data['batch_name'],
				'startdate'  => $data['doj'],
				'enddate' => $data['doe'],
				'status'  => $data['sel1']
			);
			$query = $this->db->insert('batch',$data);
			return $query;
		}

		public function insert_batch1($data)
		{
			
			$data = array(

				'batch_name' => $data['batch_name'],
				'startdate'  => $data['doj'],
				'enddate' => $data['doe']
				);
			$query = $this->db->insert('batch',$data);
			return $query;
		}

		public function delete_batch($id)
		{
			$this->db->where('batch_id',$id);
			$query = $this->db->delete('batch');
			return $query;
		}

		public function update_batch($id)
		{
			$this->db->where('batch_id',$id);
			$query = $this->db->get('batch');
			return $query->result();

			if($query->num_rows() > 0)
			{
				return $query->row_array();
			}
			else
			{
				return false;
			}
		}
		
		public function update_bat($data,$id)
		{
			$id = $this->input->post('text_hid');

			$datas = array(

				'program_id' => $data['program_id'],
				'module_id' => $data['module_id'],
				'batch_name' => $data['name'],
				'startdate'  => $data['doj'],
				'enddate' => $data['doe'],
				'status'  => $data['sel1']

				);

			$this->db->where("batch_id",$id);
			$this->db->update('batch',$datas);
			//return $query->result();

			if($this->db->affected_rows()> 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
		public function show_co()
		{
			$query = $this->db->get('courses');
			return $query->result();
		}

		public function show_mod()
		{
			$query = $this->db->get('module');
			return $query->result();
		}

		//


public function show_modul($program_id)
		{
			$query = $this->db->query("SELECT * FROM `module` WHERE `program_id` = '$program_id' ");
			return $query->result();
		}


		//

		public function show_modules()
		{
		  
        $query = $this->db->query('SELECT module.* , program.* FROM module INNER JOIN program on module.program_id = program.program_id');
			return $query->result();
		}

		public function insert_module($data)
		{
			$data = array(

				
				'program_id' => $data['program_name'],
			
				'module_name' => $data['moduleName'],
		
				'mod_status' => $data['modstatus']
				
				);

			$query = $this->db->insert('module',$data);
			return $query;
		}


		public function update_module($id)
		{
			$this->db->where('module_id',$id);
			$query = $this->db->get('module');
			return $query->result();

			if($query->num_rows() > 0)
			{
				return $query->row_array();
			}
			else
			{
				return false;
			}
		}
		
		public function update_mod($data)
		{
			$id = $this->input->post('text_hid');

			$datas = array(

				'program_id' => $data['program_id'],
				'module_name' => $data['name'],
	
				'mod_status'  => $data['sel1']

				);

			$this->db->where("module_id",$id);
			$this->db->update('module',$datas);
			//return $query->result();

			if($this->db->affected_rows()> 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		

		public function delete_module($id)
		{
			$this->db->where('module_id',$id);
			$query = $this->db->delete('module');
			return $query;
		}

		public function login_process($email,$pass)
		{
			$this->db->where('signup_email',$email);
			$this->db->where('signup_password',$pass);
			
			$query = $this->db->get('signup');
			
			if($query->num_rows() > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		public function show_courses()
		{
			$query = $this->db->query('select courses.* , program.* , module.*	 from courses LEFT join program on courses.program_id = program.program_id LEFT join module on courses.module_id = module.module_id');
			return $query->result();
		}

		public function insert_course($data)
		{
			
			$data = array(

				'program_id' => $data['program_id'],
				'module_id' => $data['module_id'],
				'coursename' => $data['name'],
				'coursecode' => $data['code'],
				'coursefee' => $data['fees'],
				'co_duration' => $data['duration'],
				'co_status' => $data['sel1']
				
				);

			$query = $this->db->insert('courses',$data);
			return $query;
		}


		public function update_course($id)
		{
			$this->db->where('course_id',$id);
			$query = $this->db->get('courses');
			return $query->result();

			if($query->num_rows() > 0)
			{
				return $query->row_array();
			}
			else
			{
				return false;
			}
		}
		
		public function update_cor($data)
		{
			$id = $this->input->post('text_hid');

			$datas = array(

				'program_id' => $data['program_id'],
				'module_id' => $data['module_id'],
				'coursename' => $data['name'],
				'coursecode' => $data['code'],
				'coursefee' => $data['fees'],
				
				'co_duration' => $data['duration'],
				'co_status' => $data['sel1']

				);

			$this->db->where("course_id",$id);
			$this->db->update('courses',$datas);
			//return $query->result();

			if($this->db->affected_rows() > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		

		public function delete_course($id)
		{
			$this->db->where('course_id',$id);
			$query = $this->db->delete('courses');
			return $query;
		}

		public function retrieve_student_data_for_show_stds($id){

			$query = $this->db->query('SELECT * FROM student WHERE studentid = "'.$id.'" ');
	return $query;
		}
	

             public function insert_student($data)
		{
			$target_dir = "./assets/images";
        $target_file = $target_dir.time().basename($_FILES["image_student"]["name"]);
        $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
        $imgName = time().basename($_FILES["image_student"]["name"]);
            move_uploaded_file($_FILES["image_student"]["tmp_name"], $target_file);
			
			$data = array(
                'artt_id' => $data['artt_id'],
                'cr' => $data['cr'],
				'fname' => $data['fname'],
				'fathername' => $data['father_name'],
				'CNIC' => $data['CNIC'],
				'fstatus' =>  $data['fstatus'],
				'freeze_note' => $data['freeze_note'],
				'DOB'  => $data['DOB'],
				'email' => $data['email'],
				'gender' => $data['optradio'],
				'permanent_address' => $data['paddress'],
				
				'phone' => $data['number'],
				'permanent_address' => $data['permanent_address'],
					'father_cnic' => $data['father_cnic'],
						'father_email' => $data['father_email'],
							'father_phone' => $data['father_phone'],
								'father_profession' => $data['father_profession'],
				'image' => $imgName
			);



			$query = $this->db->insert('student',$data);




			


			$this->db->query('UPDATE student SET artt_id = ( 
SELECT CONCAT("ARTT-",studentid) AS student_id 
  ) WHERE studentid = (SELECT MAX(studentid) );
				              ');
			return $query;





		}



public function retrieve_student_id_to_assign_courses(){

	$query = $this->db->query('SELECT MAX(studentid) AS student_id FROM student');

	return $query;
}


public function edit_student($data,$id)
		{
        // $target_dir = "assets/images/users/";
        // $target_file = $target_dir.time().basename($_FILES["image_student"]["name"]);
        // $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
        // $imgName = time().basename($_FILES["image_student"]["name"]);
        //     move_uploaded_file($_FILES["image_student"]["tmp_name"], $target_file);
			
			
          $image_exact_path = $data['image'];
          $img = explode('student/', $image_exact_path);
          $newpath = $img[1];



			$datas = array(
'artt_id' => $data['artt_id'],
                   'cr' => $data['cr'],
                
				'fname' => $data['fname'],
			
				'fathername' => $data['father_name'],
				'cnic' => $data['cnic'],
				'DOJ'  => $data['DOJ'],
				'DOB'  => $data['DOB'],
				'email' => $data['email'],
				'gender' => $data['optradio'],
				'phone' => $data['number'],
				
				'permanent_address' => $data['permanent_address'],
				'father_cnic' => $data['father_cnic'],
				'father_email' => $data['father_email'],
				'father_phone' => $data['father_phone'],
				'father_profession' => $data['father_profession'],


				'image' => $newpath
			);
             $this->db->where('studentid',$id);
			 $query = $this->db->update('student',$datas);

		}


public function edit_student1($data,$id)
		{
        // $target_dir = "assets/images/users/";
        // $target_file = $target_dir.time().basename($_FILES["image_student"]["name"]);
        // $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
        // $imgName = time().basename($_FILES["image_student"]["name"]);
        //     move_uploaded_file($_FILES["image_student"]["tmp_name"], $target_file);
			
			
          



			$datas = array(
						'artt_id' => $data['artt_id'],
                   		'cr' => $data['cr'],
						'fname' => $data['fname'],
						'fathername' => $data['father_name'],
						'cnic' => $data['cnic'],
						'DOJ'  => $data['DOJ'],
						'email' => $data['email'],
						'gender' => $data['optradio'],
						'phone' => $data['number'],
						'permanent_address' => $data['permanent_address'],
						'father_cnic' => $data['father_cnic'],
						'father_email' => $data['father_email'],
						'father_phone' => $data['father_phone'],
						'father_profession' => $data['father_profession'],
						'fstatus' => $data['fstatus']
				
			);
             $this->db->where('studentid',$id);
			 $query = $this->db->update('student',$datas);
			 return $query;

		}


         public function update_student($id){

			$query= $this->db->query("select * from student where studentid='".$id."'");
			return $query;
		}



		  public function retrieve_student_data(){

		  $query= $this->db->query("SELECT
    `student`.`artt_id`
    , `student`.`studentid`
    , `student`.`fname`
    , `student`.`cr`
    , `student`.`email`
    , `student`.`fstatus`
    , `student`.`phone`
    , `batch`.`batch_name`
    , `student`.`batch_id`
FROM
    `artt_db`.`student`
    INNER JOIN `artt_db`.`batch` 
        ON (`student`.`batch_id` = `batch`.`batch_id`)
        WHERE `student`.`studentid` 
        -- IN (SELECT `student_id` FROM enroll_student ) 
        ORDER BY `student`.`studentid` DESC   " );
			return $query;
		}

     

			public function insert_teacher($data)
		{
			$target_dir = "assets/images/users/";
        $target_file = $target_dir.time().basename($_FILES["image"]["name"]);
        $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
        $imgName = time().basename($_FILES["image"]["name"]);
            move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
			
			$data = array(

				'first_name' => $data['first_name'],
				
				'father_name' => $data['father_name'],
	
				'dob'  =>  $data['dob'],
				'cnic' => $data['cnic'],
				'doj'  => $data['doj'],
				'email' => $data['email'],
				'gender' => $data['optradio'],
				'number' => $data['number'],
				'main_courses' => $data['main_courses'],
				'permanent_address' => $data['permanent_address'],
				'image' => $imgName
			);
			$query = $this->db->insert('teacher',$data);
			return $query;
		}

	     public function retrieve_teacher_data(){

		$query= $this->db->query("select * from teacher");
			return $query;



		}


		public function update_teacher($id)
	{	
		$query= $this->db->query("select * from teacher where teacher_id='".$id."'");
			return $query;
	
	}

		public function getdeal()
	{	
			$query=$this->db->get("batch");
            return $query->result();
	}

		public function getdeal_Cours()
	{	
			$query=$this->db->get("courses");
            return $query->result();
	}


	 public function batch_get_report_data($cours)
	{
      $result=$this->db->query(" 
      SELECT
                    `program`.`program_name` AS  program_name
                    , `batch`.`batch_name`   AS  batch_name
                    , `student`.`artt_id`    AS  artt_id
                     , `student`.`cr`    AS  cr
                      , `student`.`gender`    AS  gender
                        , `student`.`phone`    AS phone
                         , `student`.`DOJ`    AS DOJ

                    , `student`.`fname`      AS  fname
                    , concat(artt_id,' [ ',fname,' ]') AS Name
                    , concat(`courses`.`coursecode` ,'   ', `courses`.`coursename`) AS  coursename
                    , `courses`.`coursefee`  AS  coursefee
                     , `enroll_student`.`received_amount` AS received_amount
                     ,  ( coursefee - received_amount) BalanceAmount
                     
                    FROM
                    `artt_db`.`program`
                    INNER JOIN `artt_db`.`batch` 
                        ON (`program`.`program_id` = `batch`.`program_id`)
                    INNER JOIN `artt_db`.`student` 
                        ON (`batch`.`batch_id` = `student`.`batch_id`)
                    INNER JOIN `artt_db`.`enroll_student` 
                        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`) 
                        AND (`student`.`studentid` = `enroll_student`.`student_id`)
                    INNER JOIN `artt_db`.`courses` 
                        ON (`enroll_student`.`course_id` = `courses`.`course_id`)

         where `student`.`batch_id` ='".$cours."'
        ;");

            

 

   // $result=$this->db->query("SELECT * from student where batch_id = '$cours'" );
   // $result=$this->db->query("SELECT * FROM `student` WHERE batch_id = '$cours' ");

	  return $result->result_array();
	}

public function cours_get_report_data($cours)
	{
      $result=$this->db->query(" 
      SELECT
                    `program`.`program_name` AS  program_name
                    , `batch`.`batch_name`   AS  batch_name
                    , `student`.`artt_id`    AS  artt_id
                     , `student`.`cr`    AS  cr
                      , `student`.`gender`    AS  gender
                        , `student`.`phone`    AS phone
                         , `student`.`DOJ`    AS DOJ

                    , `student`.`fname`      AS  fname
                    , concat(artt_id,' [ ',fname,' ]') AS Name
                    , concat(`courses`.`coursecode` ,'   ', `courses`.`coursename`) AS  coursename
                    , `courses`.`coursefee`  AS  coursefee
                     , `enroll_student`.`received_amount` AS received_amount
                     ,  ( coursefee - received_amount) BalanceAmount
                     
                    FROM
                    `artt_db`.`program`
                    INNER JOIN `artt_db`.`batch` 
                        ON (`program`.`program_id` = `batch`.`program_id`)
                    INNER JOIN `artt_db`.`student` 
                        ON (`batch`.`batch_id` = `student`.`batch_id`)
                    INNER JOIN `artt_db`.`enroll_student` 
                        ON (`batch`.`batch_id` = `enroll_student`.`batch_id`) 
                        AND (`student`.`studentid` = `enroll_student`.`student_id`)
                    INNER JOIN `artt_db`.`courses` 
                        ON (`enroll_student`.`course_id` = `courses`.`course_id`)

         where `courses`.`course_id` ='".$cours."'
        ;");

            

 

   // $result=$this->db->query("SELECT * from student where batch_id = '$cours'" );
   // $result=$this->db->query("SELECT * FROM `student` WHERE batch_id = '$cours' ");

	  return $result->result_array();
	}

		
         public function edit_teacher($data,$id)
		{
        $target_dir = "assets/images/users/";
        $target_file = $target_dir.time().basename($_FILES["image"]["name"]);
        $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
        $imgName = time().basename($_FILES["image"]["name"]);
            move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
			
			$datas = array(

				'first_name' => $data['first_name'],
				
				'father_name' => $data['father_name'],
	
				'dob'  =>  $data['dob'],
				'cnic' => $data['cnic'],
				'doj'  => $data['doj'],
				'email' => $data['email'],
				'gender' => $data['optradio'],
				'number' => $data['number'],
				'main_courses' => $data['main_courses'],
				'permanent_address' => $data['permanent_address'],
				'image' => $imgName
			);
            $this->db->where('teacher_id',$id);
			$query = $this->db->update('teacher',$datas);

		}

		public function show_stds1($id,$pid,$bid,$mid)
		{
			$query = $this->db->query('SELECT
    `course_id`
    , `coursecode`
    , `coursename`,MODULE_ID
FROM
    `artt_db`.`courses`
    WHERE PROGRAM_ID="'.$pid.'"
    AND MODULE_ID="'.$mid.'"');
			return $query->result();
		}




		public function show_all_enrolled_students()
		{

			$query = $this->db->query('SELECT s.studentid ,es.batch_id,es.student_id,es.program_id, s.`fname`,b.`batch_name`,p.`program_name`, m.module_name,es.module_id,es.enrollment_id
					FROM enroll_student es,student s,batch b, program p, module m
					WHERE es.student_id=s.studentid
					AND es.batch_id=b.`batch_id`
					AND es.program_id=p.program_id
					AND es.module_id=m.module_id
					GROUP BY es.batch_id,es.student_id,es.program_id');

			return $query;
				/*$query = $this->db->query('SELECT es.batch_id,es.student_id,es.program_id, s.`fname`,s.fstatus,b.`batch_name`,p.`program_name`, m.module_name, es.enrollment_id
					FROM enroll_student es,student s,batch b, program p, module m
					WHERE es.student_id=s.studentid
					AND es.batch_id=b.`batch_id`
					AND es.program_id=p.program_id
					AND es.module_id=m.module_id
					GROUP BY es.batch_id,es.student_id,es.program_id');*/


        	/*$query = $this->db->query('SELECT student.*, program.*, courses.*, module.*,batch.*, enroll_student.* FROM enroll_student 
                	INNER JOIN student ON enroll_student.student_id = student.studentid
                    INNER JOIN program ON enroll_student.program_id = program.program_id
                    inner join module on enroll_student.module_id = module.module_id
                    INNER JOIN courses ON enroll_student.course_id =courses.course_id
                    INNER JOIN batch ON enroll_student.batch_id =batch.batch_id

                    ');
        	/*	
                     $query = $this->db->query("
						select student_id,program_id,batch_id from enroll_student group by student_id, program_id, batch_id

						");
        	*/
        		return $query;
		}

		public function show_enrolled_teachers()
		{

        	return $query;

		}

//insert student
    	public function insert_enroll_student($data)
    	{

			$query = $this->db->insert('enroll_student',$data);
			
			if ($this->db->affected_rows() == '1')
    		{
        		return TRUE;
    		} 
    			return FALSE;
    	}
        
        public function total_fees($data)
        {

    		$data = array(
    			'artt_id'=> $data['artt_id']
				);
			$query = $this->db->insert('total_fees',$data);
					
    	}
 


    //end insert student 


		public function program_from_module()
		{

 			$query = $this->db->query("SELECT program.*
 	                        FROM program 
 	        	INNER JOIN module ON program.program_id = module.program_id");
 				return $query->result();
		}



	 	public function insert_enrolled_teachers($data)
	 	{

    		$data = array(
                
				'teacher_id' => $data['teacher_id'],
				'program_id'  => $data['program_id'],
				'course_id' => $data['course_id'],
				'status' => $data['status'] ,

			);
			$query = $this->db->insert('enroll_teacher',$data);
			return $query;
    	}

    //show_student_profile
        public function show_student_profile($id)
    	{

			
			$query = $this->db->query("SELECT student.*,program.*
                           FROM student   
                           	LEFT JOIN program ON student.`program_id` = program.`program_id`            
            WHERE student.studentid = '".$id."' "); 
			return $query;
}
public function show_student_details($id){
$query = $this->db->query("
		SELECT  student.*  , batch.* 
		FROM student 
	
	LEFT JOIN batch ON student.`batch_id` = batch.`batch_id`
	WHERE student.`studentid` = '".$id."' "); 
					return $query;

}

      	public function show_student_profile_discount($id)
    	{
					$query = $this->db->query("SELECT discount.* 
                    FROM discount               
                    WHERE student_id = '".$id."' "); 
					return $query;
    	}

   



 		public function show_fee_details_in_student_profile($id)
 		{

			$query = $this->db->query("

				SELECT student.* , courses.* , enroll_student.* FROM enroll_student 
                        INNER JOIN student ON enroll_student.student_id = student.studentid
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id 
                        WHERE enroll_student.student_id = '".$id."' 
                        
                        ");
					
					return $query->result();
		}
	 //end show_student_profile
	 	public function show_teacher_profile($id)
	 	{

			$query = $this->db->query("select * from teacher where teacher_id = '".$id."'");
			return $query;
		}

		public function show_program_for_student_profile()
		{

			$query = $this->db->query("SELECT program.program_name
			FROM program
			INNER JOIN enroll_student ON program.program_id = enroll_student.program_id;");

				return $query;
		}


		public function insert_freeze_from_student_profile($id)
		{

			$datas = array(

				'Freez' => $data['name'],
				'signup_email' => $data['email'],
				'signup_password' => $data['password'],
				'position' => $data['position']

				);

			$this->db->where("course_id",$id);
			$this->db->update('enroll_student',$datas);

		}


/*
//reports_start
		public function show_paid_reports()
		{
		  
        	$query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
        	                       FROM enroll_student 
        	            INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid  
                                   WHERE Paid = 1');
					
					return $query->result();
		}

		public function show_unpaid_reports()
		{
		  
        	$query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
        	                       FROM enroll_student 
        	            INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid  
                                   WHERE Paid = 0');
					
					return $query->result();
		}


		public function show_freeze_reports()
		{
		  
        	$query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
        	                       FROM enroll_student 
        	          	INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid  
                                   WHERE Freez = 1');
					
					return $query->result();
		}

		//reports_end
		*/
		public function show_disct()
		{
			$query = $this->db->query("SELECT * FROM discount INNER JOIN student ON 
				discount.student_id = student.studentid
				");
			return $query->result();
		}


		public function show_discount_reports()
		{
         	$query = $this->db->query('select discount.*,student.* FROM discount 
                                    left JOIN student ON discount.student_id = student.studentid');
				return $query->result();
		}

		public function show_assign()
		{
			$query = $this->db->query("
			SELECT * FROM discount d 
			INNER JOIN(
				SELECT a.`assigncourse_id` FROM assigncourse a
				INNER JOIN student s ON a.`student_id` = s.`studentid`
				INNER JOIN courses c ON a.`course_id` = c.`course_id`
				) m ON (d.`assigncourse_id` = m.`assigncourse_id`)");
			
			return $query->result();
		}

		public function insert_discount($data,$id)
		{
			$data = array(


				'student_id' => $id,
				'batch_id' => $data['batch_id'],
				
				'note'  => $data['note'],
				'percentage'  => $data['percentage']
			
			);
			$query = $this->db->insert('discount',$data);


			$data2 = array(


				
				'discount_per'  => $data['percentage']
			
			);
			 $this->db->where('student_id',$id);
			 $this->db->update('enroll_student',$data2);

			
		}


		public function show_enrolled_student($id)
		{
					
       $query = $this->db->query("SELECT  `student`.`artt_id`
    , `student`.`studentid`
    , `student`.`fname`
    , `student`.`cr`
    , `student`.`email`
    , `student`.`fstatus`
    , `student`.`phone`
    , `batch`.`batch_name`
    , `student`.`batch_id`, program.*, courses.*, enroll_student.* FROM enroll_student 
                     	INNER JOIN student ON enroll_student.student_id = student.studentid
                     	INNER JOIN batch ON enroll_student.batch_id = batch.`batch_id`
                        INNER JOIN program ON enroll_student.program_id = program.program_id
                        INNER JOIN courses ON enroll_student.course_id =courses.course_id
                                   WHERE enroll_student.student_id = '".$id."'");  

        			return $query;
		}

		
		public function view_note($id)
		{
         	$query = $this->db->query("SELECT student.* , discount.* FROM discount
                        INNER JOIN student ON discount.student_id = student.studentid
                                    WHERE discount_id = '".$id."' ");
					return $query->result();
		}	

        public function delete_student($id)
        {

  			$query = $this->db->query("DELETE FROM student 
                                    WHERE studentid = '".$id."' ");
  			$query = $this->db->query("DELETE FROM enroll_student 
                                    WHERE student_id = '".$id."' ");

        }


        public function delete_enroll_student($id)
        {

            $query = $this->db->query("DELETE FROM enroll_student
                                    WHERE enrollment_id = '".$id."' ");
             
        }
//vocher
		public function insert_voucher($data)
		{

    		$data = array(
                
				'student_id' =>$data['student_id'],
				'unpaid_fees'  => $data['unpaid_fees'],
				'freezed_amount' => $data['freezed_amount'],
				'discount_amount' => $data['discount_amount'] 

			);
			$query = $this->db->insert('voucher',$data);
			return $query;
		}

		public function show_voucher($data)
		{

			$query = $this->db->query("select * from voucher where student_id='".$data['student_id']."'");
			return $query;
		}
//vocher end

		 public function detailed_course($id)
    	{

			$query = $this->db->query("SELECT * FROM courses
			inner join program on courses.program_id = program.program_id
			inner join module on courses.module_id = module.module_id
			              
            WHERE course_id = '".$id."' "); 
			return $query;

	    }
	    public function print_voucher($id)
	    {

	    	$query = $this->db->query("SELECT enroll_student.* , student.* , courses.		 *  FROM enroll_student 
						left JOIN student ON enroll_student.`student_id` = student.`studentid`
						left JOIN courses ON enroll_student.`course_id` = courses.`course_id`
						WHERE student.`studentid` = '".$id."' ");
	    	return $query ; 
	    }
	        public function print_voucher1($id,$pay_amount,$remain_fees)
	    {

	    $query = $this->db->query("SELECT *  FROM master_vocher
		WHERE student_id = '".$id."' AND  pay_amount='".$pay_amount."' AND  remain_fees='".$remain_fees."'");
	

	    	return $query ; 
	    }


	  //expense_start
public function show_voucher_reports(){



	$query=  $this->db->query("SELECT student.* , master_vocher.*  FROM student
		INNER JOIN master_vocher ON student.studentid = master_vocher.student_id
		");
	return $query->result();
}

	    public function all_expense(){


	    	$query = $this->db->query('SELECT * FROM expense');
	    	return $query;
	    }

	       public function insert_expense($data){
             
             $data = array(
                
				'expense_title' =>$data['expense_title'],
				'expense_sub_title'  => $data['expense_sub_title'],
				'expense_details' => $data['expense_details'],
				'amount' => $data['amount'] ,
				'today_date' => $data['today_date'] ,
				'due_date' => $data['due_date'] 

			);
			$query = $this->db->insert('expense',$data);


	       }

	        public function show_expense_details($id)
	    {
	    	$query = $this->db->query("SELECT * FROM expense WHERE expense_id = '".$id."' ");
	    	return $query;
	    }

	      public function admin_show_expense_details($id)
	    {
	    	$query = $this->db->query("SELECT * FROM expense WHERE expense_id = '".$id."' ");
	    	return $query;

	    }
	    public function approve_expense($id)
	    {


	    	$datas = array(

		'approve_status' => 1

     
		);

	$this->db->where('expense_id',$id);
	$this->db->update('expense',$datas);

	    }

	    public function deny_expense($id)
	    {

	    	$datas = array(

		'approve_status' => 2

     
		);


	$this->db->where('expense_id',$id);
	$this->db->update('expense',$datas);
 $query = $this->db->query("SELECT * FROM expense WHERE expense_id = '".$id."' ");
	    	return $query;



	    }

	    public function insert_deny_message($id,$data)
{
	$datas = array(

		'deny_message' => $data['deny_message']

     
		);


	$this->db->where('expense_id',$id);
	$this->db->update('expense',$datas);


	}
public function undo_approve($id){

$datas2 = array(
	'pay_status' => 0

     
		);

	$this->db->where('expense_id',$id);
	$this->db->update('expense',$datas2);
$datas = array(

		'approve_status' => 0

     
		);

	$this->db->where('expense_id',$id);
	$this->db->update('expense',$datas);

}
public function undo_deny($id){
$datas3 = array(
	'deny_message' => ""

     
		);


	$this->db->where('expense_id',$id);
	$this->db->update('expense',$datas3);


	$datas2 = array(
	'pay_status' => 0

     
		);

	$this->db->where('expense_id',$id);
	$this->db->update('expense',$datas2);



$datas = array(

		'approve_status' => 0

     
		);

	$this->db->where('expense_id',$id);
	$this->db->update('expense',$datas);


}


public function pay_expense($id){
$datas = array(
	'pay_status' => 1

     
		);

	$this->db->where('expense_id',$id);
	$this->db->update('expense',$datas);



}

public function show_deny_message($id)


{
$query = $this->db->query("SELECT * FROM expense WHERE expense_id = '".$id."' ");
	    	return $query;

}

	    //expense_ENd

//reports_start

public function show_voucher_reports_current_date(){
		  
        	$query = $this->db->query('SELECT DISTINCT master_vocher.current_date as c_date FROM master_vocher ');

							return $query->result();
		}


		public function show_voucher_reports_due_date(){
		  
        	$query = $this->db->query('SELECT DISTINCT master_vocher.due_date FROM master_vocher');

							return $query->result();
		}
		public function show_paid_reports()
		{
		  
        	$query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
        	                       FROM enroll_student 
        	            INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid  
                                   WHERE enroll_student.`received_amount` = courses.`coursefee`
                                   or Paid = 1 	');

							return $query->result();
		}

		public function show_unpaid_reports()
		{
		  
        	$query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
        	                       FROM enroll_student 
        	            INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid  
                                   WHERE enroll_student.`received_amount` < (courses.`coursefee`) + (enroll_student.`discount_amount`)
                                   ');
					
					return $query->result();
		}


		public function show_freeze_reports()
		{
		  
        	$query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
        	                       FROM enroll_student 
        	          	INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid  
                                   WHERE Freez = 1');
					
					return $query->result();
		}
		public function show_freez_form($id,$id2)
		{
		  
        	$query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
        	                       FROM enroll_student 
        	          	INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid  
                                   WHERE student_id ="'.$id2.'" AND enrollment_id="'.$id.'"');
					
										return $query;

		}


		public function show_paid_details_for_print(){


                        $query = $this->db->query('SELECT courses.* , enroll_student.*  , student.* 
        	                       FROM enroll_student 
        	            INNER JOIN courses ON enroll_student.course_id = courses.course_id
                        INNER JOIN student ON enroll_student.student_id = student.studentid  
                                   WHERE enroll_student.`received_amount` = courses.`coursefee`
                                   OR Paid = 1');
					
					return $query->result();


		}

		//reports_end
		///
	public function discount_student($id)
	{
		$this->load->database('artt');
		$query = $this->db->query("select * from student where studentid='".$id."'");
		return $query;
	}
	public function discount_batch($id)
	{
		$this->load->database('artt');
		$query = $this->db->query("select enroll_student.*,batch.*,courses.* from enroll_student 
			INNER JOIN batch ON enroll_student.batch_id = batch.batch_id
			INNER JOIN courses ON enroll_student.course_id = courses.course_id

			where enroll_student.student_id='".$id."'");
		return $query;
	}

	//Discount_Start









    public function approve_discount($id)
	    {


	    	$datas = array(

		'approve' => 1

     
		);

	$this->db->where('discount_id',$id);
	$this->db->update('discount',$datas);

	    }

	    public function undo_approve_discount($id)
{

$datas = array(

		'approve' => 0

     
		);

	$this->db->where('discount_id',$id);
	$this->db->update('discount',$datas);
	
}


public function deny_discount($id)
{

$datas = array(

		'approve' => 2

     
		);

	$this->db->where('discount_id',$id);
	$this->db->update('discount',$datas);

	    
 $query = $this->db->query("SELECT * FROM discount WHERE discount_id = '".$id."' ");
	    	return $query;

	
}
public function undo_deny_discount($id)
{

$datas = array(

		'approve' => 0

     
		);

	$this->db->where('discount_id',$id);
	$this->db->update('discount',$datas);

	
}



 public function insert_deny_message_discount($id,$data)
{
	$datas = array(

		'admin_note' => $data['admin_note']

     
		);


	$this->db->where('discount_id',$id);
	$this->db->update('discount',$datas);


	}
public function show_deny_message_discount($id){


$query = $this->db->query("SELECT student.* , discount.*
 FROM student INNER JOIN discount ON
 student.studentid = discount.student_id  WHERE discount_id = '".$id."' ");
	    	return $query;


}






//Dicount_End



public function show_discount_details_in_voucher($id){


$query = $this->db->query("SELECT approve FROM discount INNER JOIN enroll_student
                           ON discount.student_id = enroll_student.student_id
                           WHERE enroll_student.student_id = '".$id."' ");
	    	return $query;









}




  public function insert_new_enroll_student($id)
    {

         	$query = $this->db->query("SELECT enroll_student.*  , module.* , courses.* , program.* ,  student.* , batch.*
FROM enroll_student INNER JOIN courses ON enroll_student.`course_id` = courses.`course_id`
                    INNER JOIN program ON enroll_student.`program_id` = program.`program_id`
                    INNER JOIN student ON enroll_student.`student_id` = student.`studentid`
                    INNER JOIN batch ON enroll_student.`batch_id` = batch.`batch_id`
                    INNER JOIN `module` ON enroll_student.`module_id` = `module`.`module_id`
                    WHERE enroll_student.`student_id` = '".$id."' ");
         	return $query;

    }

    public function courses_for_insert_new_enroll_student($id)
    
    {

	$query = $this->db->query("  SELECT courses.* FROM courses
                           WHERE module_id = 
                                 (SELECT module_id FROM batch WHERE batch_id = 
                                   (SELECT enroll_student.batch_id FROM enroll_student INNER JOIN batch
                                  ON enroll_student.`batch_id` = batch.`batch_id`
                                  WHERE enroll_student.`student_id` = '".$id."'
                                  GROUP BY enroll_student.batch_id))
                                  AND courses.course_id NOT IN
                                    (
                                  SELECT course_id
                                  FROM enroll_student
                                  WHERE student_id = '".$id."'
                                  AND enroll_student.batch_id = (SELECT enroll_student.`batch_id`
                                   FROM enroll_student
                               WHERE enroll_student.`student_id` = '".$id."' GROUP BY batch_id )) ");
         	return $query;



    }



/* public function show_student_profile($id)
    	{

			$query = $this->db->query("SELECT student.* 
                           FROM student               
            WHERE student.studentid = '".$id."' "); 
			return $query;

	    }

*/
public function show_fee_details_in_student_profile2($id)
 		{

			$query = $this->db->query("SELECT student.* , courses.* , enroll_student.* FROM enroll_student 
                        INNER JOIN student ON enroll_student.student_id = student.studentid
                        INNER JOIN courses ON enroll_student.course_id = courses.course_id 
                        WHERE enroll_student.student_id = '".$id."' 
                        ");
					return $query->result();
		}


/*
 	public function show_student_profile_discount($id)
    	{

			$query = $this->db->query("SELECT discount.* 
                           FROM discount               
                    WHERE student_id = '".$id."' "); 
					return $query;
    	}
*/

public function delete_enroll_student_courses($id)


{

$this->db->query("DELETE FROM enroll_student WHERE enrollment_id =  '".$id."'  ");

}



	public function freez(){


			$query = $this->db->query("SELECT t.`artt_id`,t.`studentid`,t.`fname`, t.`batch_name` , t.`program_name`, t.`module_name`
				FROM ( SELECT
    							`student`.`artt_id`
    							, `student`.`fname`
    							, `student`.`studentid`
    							, `student`.`fathername`
    							, `enroll_student`.`course_id`
    							, `enroll_student`.`received_amount`
    							, `courses`.`coursefee`
    							, `batch`.`batch_name`
    							, `program`.`program_name`
    							, `module`.`module_name`
    							, `courses`.`coursecode`
    							, `courses`.`coursename`
							FROM
    							 `student`
						    INNER JOIN  `enroll_student` 
						        ON (`student`.`studentid` = `enroll_student`.`student_id`)
						    INNER JOIN  `courses` 
						        ON (`enroll_student`.`course_id` = `courses`.`course_id`)
						    INNER JOIN  `batch` 
						        ON (`enroll_student`.`batch_id` = `batch`.`batch_id`)
						    INNER JOIN  `program` 
						        ON (`enroll_student`.`program_id` = `program`.`program_id`)
						    INNER JOIN  `module` 
						        ON (`enroll_student`.`module_id` = `module`.`module_id`)
						         WHERE enroll_student.`Paid` = 0
						         ) AS t
						         GROUP BY t.`artt_id`,t.`studentid`,t.`fname`, t.`batch_name` , t.`program_name`, t.`module_name`");
					
					return $query->result_array();
		
	}



		public function show_program($pid){
	$this->db->select('program_name');
	$this->db->from('program');
	$this->db->where('program_id',$pid);
	$result=$this->db->get();
	return $result->result_array();



}
public function show_batch1($bid){
	$this->db->select('batch_name');
	$this->db->from('batch');
	$this->db->where('batch_id',$bid);
	$result=$this->db->get();
	return $result->result_array();



}
public function show_student($id){
	$this->db->select('*');
	$this->db->from('student');
	$this->db->where('studentid',$id);
	$result=$this->db->get();
	return $result->result_array();



}


// NEW PROJECTS 

public function View_Record_model(){

	$this->db->select('*');
	$this->db->from('family_information');
	$result=$this->db->get();
	return $result->result_array();
}

 





}
