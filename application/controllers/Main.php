
<?php
	defined('BASEPATH') OR exit('No direct script access allowed');


class Main extends CI_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Main_Model');
		$this->load->helper('url');
		$this->load->library('session');
		
		$method = $this->router->fetch_method();
		$methods = array('index','index2','index3','index4','index5','index6');
		if(in_array($method,$methods))
		{
			if(!$this->session->has_userdata('signup_email'))
			{
				redirect(base_url('Main/login'));
			}
		}		
	}

	public function index()
	{
		if($this->session->has_userdata('signup_email'))
		{
			$this->load->view('BKO/index');
		}
	}
	
	public function index2()
	{
		if($this->session->has_userdata('signup_email'))
		{
			$this->load->view('Admin/index');
		}
	}
	
	public function index3()
	{
		if($this->session->has_userdata('signup_email'))
		{
			$this->load->view('Owner/index');
		}
	}

	public function index4()
	{
		if($this->session->has_userdata('signup_email'))
		{
			$this->load->view('CA/index4');
		}
	}
	
	public function index5()
	{
		if($this->session->has_userdata('signup_email'))
		{
			$this->load->view('ICCA/index5');
		}
	}
	
	public function index6()
	{
		if($this->session->has_userdata('signup_email'))
		{
			$this->load->view('ICMA/index6');
		}
	}

	public function login()
	{	
		if($this->session->has_userdata('signup_email'))
		{
			redirect(base_url());
		}
		else
		{
			$this->load->view('login');
		}
	}
	public function login_process()
	{
		$email = $this->input->post('email');
		$pass = $this->input->post('upass');

		$query = $this->Main_Model->login_process($email,$pass);

		if($query == TRUE)
		{
			$this->session->set_userdata('signup_email');
			$session = array(
					'signup_email' => $email 
					);
			$this->session->set_userdata($session);
			redirect(base_url('Main/check_login'));
		}
		else
		{
			$this->session->set_flashdata('error','Invalid Email or Password');
			redirect(base_url('Main/login'));
		}
	}

	public function check_login()
	{
		if($this->session->userdata('signup_email') == 'admin@artt.com')
		{
			redirect(base_url('Main/index2'));	
		}

		elseif($this->session->userdata('signup_email') == 'owner@artt.com')
		{
			redirect(base_url('Main/index3'));	
		}
		
		elseif($this->session->userdata('signup_email') == 'ca@gmail.com')
		{
			redirect(base_url('Main/index4'));	
		}
		
		elseif($this->session->userdata('signup_email') == 'icca@gmail.com')
		{
			redirect(base_url('Main/index5'));	
		}
		
		elseif($this->session->userdata('signup_email') == 'icma@gmail.com')
		{
			redirect(base_url('Main/index6'));	
		}
	
		else
		{
			redirect(base_url('Main/index'));	
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url());
	} 	

	public function show_profile()
	{	
		$this->load->view('BKO/std_profile');
	}


	public function student()
	{
		$data['show_batch_for_new_student'] = $this->Main_Model->show_batch_for_new_student();
		$this->load->view('BKO/student' , $data);
	}

	public function teacher_admin()
	{	
		$this->load->view('Admin/teacher_admin');
	}

public function show_teachers_admin()
	{	
	$query['teachers'] = $this->Main_Model->retrieve_teacher_data();
		$this->load->view('Admin/show_teachers_admin',$query);
	}




public function insert_teacher_admin(){



        $data = $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_teacher($data);
		redirect('Main/show_teachers_admin');


   }

	public function edit_teacher_admin($id){


$data = $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->edit_teacher($data,$id);
		redirect('Main/show_teachers_admin');

	}

	public function teacher()
	{	
		$this->load->view('BKO/teacher');
	}

		public function show_stds()
	{	
		$query['students'] = $this->Main_Model->retrieve_student_data();
		$this->load->view('BKO/show_stds',$query);
	}

	public function show_teachers()
	{
	$query['teachers'] = $this->Main_Model->retrieve_teacher_data();
		$this->load->view('BKO/show_teachers',$query);
	}

	public function show_update_student($id)
	{	
         $query['std_data'] = $this->Main_Model->retrieve_student_data_for_show_stds($id);

	//	$query['show_batch_for_update_student'] = $this->Main_Model->show_batch_for_update_student($id);
	//	$query['show_batch_for_new_student'] = $this->Main_Model->show_batch_for_new_student();
	//	$query['update_student'] = $this->Main_Model->update_student($id);
		$this->load->view('BKO/update_std',$query); 

	
	}





public function edit_student($id){
	

	$data = $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->edit_student($data,$id);
		redirect('Main/show_stds');


}

	public function update_teacher($id)
	{	
		$query['update_teacher'] = $this->Main_Model->update_teacher($id);
		$this->load->view('BKO/update_teacher',$query); 
	}


	public function update_teacher_admin($id){


		$query['update_teacher'] = $this->Main_Model->update_teacher($id);
		$this->load->view('Admin/update_teacher_admin',$query); 
	}


	public function edit_teacher($id){


$data = $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->edit_teacher($data,$id);
		redirect('Main/show_teachers');

	}

	public function enroll_std()
	{	
		$data['all_stds'] = $this->Main_Model->show_stds();
		$data['all_pro'] = $this->Main_Model->show_pro();
		$data['all_bat'] = $this->Main_Model->show_bat();
		$data['all_mod'] = $this->Main_Model->show_mod();
		$data['show_courses'] = $this->Main_Model->show_courses();
		$this->load->view('BKO/enroll_std',$data);
	}

	public function enroll_teacher()
	{	
		$data['all_teacher'] = $this->Main_Model->show_teachers();
		$data['all_pro'] = $this->Main_Model->show_pro();
		$data['show_courses'] = $this->Main_Model->show_courses();
		$this->load->view('BKO/enroll_teacher',$data);
	}
	
	public function show_all_enrolled_students(){

        $query['enroll_student'] = $this->Main_Model->show_all_enrolled_students();
		$this->load->view('BKO/show_all_enrolled_students',$query);

	}

	public function show_enrolled_teachers(){

        $query['enroll_teacher'] = $this->Main_Model->show_enrolled_teachers();
		$this->load->view('BKO/show_enrolled_teachers',$query);

	}


public function show_admin_index(){


   $this->load->view('Admin/index');

}	

	public function bko()
	{
		$data['all_bko'] = $this->Main_Model->show_bko(); 
		$this->load->view('Admin/all_bko',$data);
	}

	public function insert_bko()
	{
		$this->load->view('Admin/insert_bko');
	}
/*
// Reports_start
	public function show_paid_reports(){


		$data['show_paid_reports'] = $this->Main_Model->show_paid_reports(); 
		$this->load->view('Admin/show_paid_reports',$data);
	}

	public function show_unpaid_reports(){


		$data['show_unpaid_reports'] = $this->Main_Model->show_unpaid_reports(); 
		$this->load->view('Admin/show_unpaid_reports',$data);
	}

	public function show_freeze_reports(){


		$data['show_freeze_reports'] = $this->Main_Model->show_freeze_reports(); 
		$this->load->view('Admin/show_freeze_reports',$data);
	}



	public function show_discount_reports(){


		$data['show_discount_reports'] = $this->Main_Model->show_discount_reports(); 
		$this->load->view('Admin/show_discount_reports',$data);
	}


// Reports_End

	*/


	public function insert_bkofficer()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_bkofficer($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is inserted..');
			redirect(base_url('Main/bko'));
		}
		else
		{
			$this->session->set_flashdata('error','Record is not inserted..yet');
			redirect(base_url('Main/bko'));	
		}
	}


	public function show_bko($id)
	{
		$data['all_bko'] = $this->Main_Model->show_bko($id);
		$this->load->view('Admin/update_bko',$data);
	}

	public function update_bko($id)
	{
		$data['all_bko'] = $this->Main_Model->upd_bko($id);
		$this->load->view('Admin/update_bko',$data);
	}

	public function update_bkofficer()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->update_bkofficer($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is inserted..');
			redirect(base_url('Main/bko'));
		}
		else
		{
			$this->session->set_flashdata('error','Record is not inserted..yet');
			redirect(base_url('Main/bko'));	
		}
	}
	

	public function delete_bko($id)
	{
		$query = $this->Main_Model->delete_bko($id);
		if($query == TRUE)
		{
			$this->session->set_flashdata('success','Record is deleted..');
			redirect(base_url('Main/bko'));	
		}
		else
		{
			$this->session->set_flashdata('error','Record is not deleted..yet');
			redirect(base_url('Main/bko'));	
		
		}
	}

	public function programs()
	{
		$data['all_pro'] = $this->Main_Model->show_pro();
		$this->load->view('Admin/all_programs',$data);
	}
	public function all_batchs()
	{
		$data['all_bat'] = $this->Main_Model->show_bat();
		$this->load->view('Admin/all_batchs',$data);
	}
	public function new_batch()
	{
		$this->load->view('Admin/new_batch');
	}

	public function insert_pro()
	{
		$this->load->view('Admin/insert_pro');
	}

	public function insert_program()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_program($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is inserted..');
			redirect(base_url('Main/programs'));
		}
		else
		{
			$this->session->set_flashdata('error','Record is not inserted..yet');
			redirect(base_url('Main/programs'));	
		}
	}
	
	public function update_pro($id)
	{
		$data['all_pro'] = $this->Main_Model->upd_pro($id);
		$this->load->view('Admin/update_pro',$data);
	}

	public function delete_pro($id)
	{
		$query = $this->Main_Model->delete_pro($id);
		if($query == TRUE)
		{
			$this->session->set_flashdata('success','Record is deleted..');
			redirect(base_url('Main/programs'));	
		}
		else
		{
			$this->session->set_flashdata('error','Record is not deleted..yet');
			redirect(base_url('Main/programs'));	
		
		}
	}
	public function update_program()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->update_program($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is inserted..');
			redirect(base_url('Main/programs'));
		}
		else
		{
			$this->session->set_flashdata('error','Record is not inserted..yet');
			redirect(base_url('Main/programs'));	
		}
	}

	public function batchs()
	{
		$data['show_batch'] = $this->Main_Model->show_batch(); 
		$this->load->view('BKO/allbatch',$data);
	}

    

    public function insert_enroll_student(){

    		$course_name=$this->input->post('course_id[]');
    		$count=count($course_name);
    		for($i=0; $i<$count; $i++){
    		$data = array(

				'student_id' => $this->input->post('student_id'),
				'program_id'  => $this->input->post('program_id'),
				'module_id'  => $this->input->post('module_id'),
				'course_id' => $course_name[$i],
				'batch_id' => $this->input->post('batch_id'),
				'status' => $this->input->post('status'),
				'enrolled_status' => 1 ,
				'Paid' => $this->input->post('Paid'),	
				
			);
		$query = $this->db->insert('enroll_student',$data);
	}

		redirect('Main/show_all_enrolled_students');



    }


  
    public function show_data_to_update_enroll_student($id){

    	$data['all_stds'] = $this->Main_Model->show_stds();
		$data['all_pro'] = $this->Main_Model->show_pro();
		$data['show_courses'] = $this->Main_Model->show_courses();

  
		$this->load->view('BKO/update_enrolled_student',$data);


     

    }

      public function insert_enrolled_teachers(){


      $data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_enrolled_teachers($data);
		redirect('Main/show_enrolled_teachers');



    }
   

	public function newbatch()
	{
		$data['all_pro'] = $this->Main_Model->show_pro();
		$data['show_mod'] = $this->Main_Model->show_mod();
		$this->load->view('BKO/newbatch',$data);
	}

	public function insert_batch()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_batch($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is inserted..');
			redirect(base_url('Main/batchs'));
		}

		else
		{
			$this->session->set_flashdata('error','Record is not inserted..yet');
			redirect(base_url('Main/batchs'));	
		}
	}
public function insert_batch1()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_batch1($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is inserted..');
			redirect(base_url('Main/all_batchs'));
		}

		else
		{
			$this->session->set_flashdata('error','Record is not inserted..yet');
			redirect(base_url('Main/all_batchs'));	
		}
	}

	public function update_batch($id)
	{
		$data['all_pro'] = $this->Main_Model->show_pro();
		$data['show_mod'] = $this->Main_Model->show_mod();
		$data['show_program_for_update_batch'] = $this->Main_Model->show_program_for_update_batch($id);
		$data['show_mod_for_update_batch'] = $this->Main_Model->show_mod_for_update_batch($id);
		$data['all_batch'] = $this->Main_Model->update_batch($id);
		$this->load->view('BKO/updbatch',$data);
	}
	
     public function show_student_profile($id){


$data['show_student_profile'] = $this->Main_Model->show_student_profile($id);
$data['show_fee_details_in_student_profile2'] = $this->Main_Model->show_fee_details_in_student_profile2($id);
	

		$this->load->view('BKO/show_student_profile',$data);


    }

    public function show_teacher_profile($id){

$data['show_teacher_profile'] = $this->Main_Model->show_teacher_profile($id);
		$this->load->view('BKO/show_teacher_profile',$data);


    }

	public function update_bat()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->update_bat($data,$id);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is updated..');
			redirect(base_url('Main/batchs'));
		}
		else
		{
			$this->session->set_flashdata('error','Record is not updated..yet');
			redirect(base_url('Main/batchs'));	
		}
	}
	
	public function delete_batch($id)
	{
		$query = $this->Main_Model->delete_batch($id);
		if($query == TRUE)
		{
			$this->session->set_flashdata('success','Record is not deleted..');
			redirect(base_url('Main/batchs'));	
		}
		else
		{
			$this->session->set_flashdata('error','Record is not deleted..yet');
			redirect(base_url('Main/batchs'));	
		}
	}
	

	public function courses()
	{
		$data['show_courses'] = $this->Main_Model->show_courses();
		$this->load->view('BKO/allcourse',$data);
	}

	public function NewCourse()
	{
		$data['all_pro'] = $this->Main_Model->show_pro();
		$data['all_mod'] = $this->Main_Model->show_mod();
		$this->load->view('BKO/Newcourse',$data);
	}

	public function insert_course()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_course($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is inserted..');
			redirect(base_url('Main/courses'));
		}
		else
		{
			$this->session->set_flashdata('error','Record is not inserted..yet');
			redirect(base_url('Main/courses'));	
		}
	}

	public function update_course($id)
	{
		$data['all_course'] = $this->Main_Model->update_course($id);
		$data['all_pro'] = $this->Main_Model->show_pro();
		$data['all_mod'] = $this->Main_Model->show_mod();
		
		$this->load->view('BKO/updcourse',$data);
	}
	
	public function update_cor()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->update_cor($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is updated..');
			redirect(base_url('Main/courses'));
		}
		else
		{
			$this->session->set_flashdata('error','Record is not updated..yet');
			redirect(base_url('Main/courses'));	
		}
	}
	

	public function delete_course($id)
	{
		$query = $this->Main_Model->delete_course($id);
		if($query == TRUE)
		{
			$this->session->set_flashdata('success','Record is not deleted..');
			redirect(base_url('Main/courses'));	
		}
		else
		{
			$this->session->set_flashdata('error','Record is not deleted..yet');
			redirect(base_url('Main/courses'));	
		}
	}
	
	
	public function modules()
	{
		$data['show_modules'] = $this->Main_Model->show_modules();
		$data['program_from_module'] = $this->Main_Model->program_from_module();
		$this->load->view('module',$data);
	}

	public function newmodule()
	{
		$data['all_pro'] = $this->Main_Model->show_pro();
		$data['all_bat'] = $this->Main_Model->show_bat();	
		$this->load->view('BKO/Newmodule',$data);
	}

	public function insert_module()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_module($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is inserted..');
			redirect(base_url('Main/modules'));
		}
		else
		{
			$this->session->set_flashdata('error','Record is not inserted..yet');
			redirect(base_url('Main/modules'));	
		}
	}

	public function update_module($id)
	{
		$data['all_module'] = $this->Main_Model->update_module($id);
		$data['all_pro'] = $this->Main_Model->show_pro();
		$this->load->view('BKO/updmodule',$data);
	}
	
	public function update_mod()
	{
		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->update_mod($data);
		if($query==TRUE)
		{
			$this->session->set_flashdata('success','Record is updated..');
			redirect(base_url('Main/modules'));
		}
		else
		{
			$this->session->set_flashdata('error','Record is not updated..yet');
			redirect(base_url('Main/modules'));	
		}
	}
	

	public function delete_module($id)
	{
		$query = $this->Main_Model->delete_module($id);
		if($query == TRUE)
		{
			$this->session->set_flashdata('success','Record is not deleted..');
			redirect(base_url('Main/modules'));	
		}
		else
		{
			$this->session->set_flashdata('error','Record is not deleted..yet');
			redirect(base_url('Main/modules'));	
		}
	}
	

 public function insert_teacher(){



        $data = $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_teacher($data);
		redirect('Main/show_teachers');


   }



public function insert_student(){


        $data = $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_student($data);
		$this->Main_Model->total_fees($data);
		redirect('Main/courses_register_student');


   }

   
   public function courses_register_student()
   {
   	$data['retrieve_student_id'] =  $this->Main_Model->retrieve_student_id_to_assign_courses();
   	$data['show_batch_for_new_student'] = $this->Main_Model->show_batch_for_new_student();
	$this->load->view('BKO/courses_register_student',$data);



   }
    public function edit_courses_register_student()

   {
   	$data['retrieve_student_id'] =  $this->Main_Model->retrieve_student_id_to_assign_courses();
   	$data['show_batch_for_new_student'] = $this->Main_Model->show_batch_for_new_student();
$this->load->view('BKO/edit_courses_register_student',$data);



   }
   public function insert_student_courses(){



    	  $course_id = $this->input->post('course_id[]');
    	  $count = count($course_id);
    	  for($i=0; $i<$count;$i++)
    	  {
    	  	$datainsert = array(
    	  	'student_id' =>$this->input->post('std_id'),
    	  	'program_id' =>$this->input->post('program_id'),
    	  	'batch_id' =>$this->input->post('batch_id'),
    	  	'enrolled_status' => 1 ,

    	  	'module_id' =>$this->input->post('module_id'),
    	  	'course_id' =>$course_id[$i]
    	  	);
    	  	$query = $this->db->insert('enroll_student',$datainsert);

    	  }

           $this->db->query(" UPDATE enroll_student SET Freez = ( SELECT fstatus FROM student  HAVING MAX(studentid))
           	                WHERE enroll_student.student_id=(SELECT MAX(studentid) FROM student)");


    	  	$std_id = $this->input->post('std_id');
    	  		$batch_id = $this->input->post('batch_id');
    	  		$query = $this->db->query("update student set batch_id = '".$batch_id."' WHERE studentid = '".$std_id."' ");
   redirect('Main/show_stds');
   }

   public function edit_insert_student_courses(){



    	  $course_id = $this->input->post('course_id[]');
    	  $count = count($course_id);
    	  	$std_id = $this->input->post('std_id');
    	  $this->db->query('DELETE FROM enroll_student WHERE student_id = "'.$std_id.'"');
    	  for($i=0; $i<$count;$i++)

    	  {
    	  	$datainsert = array(
    	  	'student_id' =>$this->input->post('std_id'),
    	  	'program_id' =>$this->input->post('program_id'),
    	  	'batch_id' =>$this->input->post('batch_id'),
    	  	'module_id' =>$this->input->post('module_id'),
    	  	'course_id' =>$course_id[$i]
    	  	);
    	  	 $this->db->insert('enroll_student',$datainsert);
    	  	
			 

    	  }

    	  	$std_id = $this->input->post('std_id');
    	  		$batch_id = $this->input->post('batch_id');
    	  		$query = $this->db->query("update student set batch_id = '".$batch_id."' WHERE studentid = '".$std_id."' ");
   redirect('Main/show_stds');
   }
	

	public function all_data_of_student(){

		$this->load->view('BKO/show_stds',$query);

	}

	public function insert_freeze_from_student_profile(){

			$id=$this->input->get('id');
			$id2=$this->input->get('id2');
        	$datas = array(

				
				'Freez' => 'Freez',
				'freezdate' => date("d-m-y")

				);
        	$this->db->where('enrollment_id',$id);
        	$this->db->update('enroll_student',$datas);
        	
        	
        	redirect('Main/show_student_profile/'.$id2);
	

	}
			public function show_freeze_from_student_profile(){

			$id=$this->input->get('id');
			$id2=$this->input->get('id2');
			$id3=$this->input->get('id3');
        	$this->load->model('Main_Model');
			$query['show_student'] = $this->Main_Model->show_freez_form($id,$id2);
			$query['batch'] = $this->Main_Model->show_batch_for_new_batch_transfer($id3);
			$this->load->view('BKO/show_freez_form',$query);

        	
        
	

	}
		public function edit_freeze_from_student_profile(){

			$id=$this->input->get('id');
			$id2=$this->input->get('id2');
        	$datas = array(

				'batch_id' => $this->input->post('batch_id'),
				'Freez' => 0,
				'unfreezdate' => date("d-m-y")

				);
        	$this->db->where('enrollment_id',$id);
        	$this->db->update('enroll_student',$datas);
        	
        	
        	redirect('Main/show_student_profile/'.$id2);
	

	}
	/// discount 
	public function discount_std()
	{
		
		$query['students'] = $this->Main_Model->retrieve_student_data();
		
		//$data['all_assign'] = $this->Main_Model->show_assign();
		$this->load->view('BKO/discount_std',$query);
	}
		public function discount_insert($id)
	{
		
		$query['discount_student'] = $this->Main_Model->discount_student($id);
		$query['discount_batch'] = $this->Main_Model->discount_batch($id);


		$this->load->view('BKO/discount_insert',$query);
	}


	///end discount
public function insert_discount($id)
	{

		$data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_discount($data,$id);
		if($query==TRUE)
		{
			
			redirect(base_url('Main/show_stds'));
		}
		else
		{
			
			redirect(base_url('Main/show_stds'));	
		}	
	}
	//discount
	public function all_discount()
	{
		
		$data['all_disct'] = $this->Main_Model->show_disct();
		$this->load->view('BKO/all_discount',$data);
	}
		public function decline($id)
	{
			$datas = array(

				'decline'  => 2
			
			);
		$this->db->where('discount_id',$id);
		$this->db->update('discount',$datas);
		$this->load->view('BKO/all_discount',$data);
		redirect("Main/show_discount_reports");
	}
			public function approve($id)
	{
			$datas = array(

				'decline'  => 1
			
			);
		$this->db->where('discount_id',$id);
		$this->db->update('discount',$datas);
		$this->load->view('BKO/all_discount',$data);
		redirect("Main/show_discount_reports");
	}

	public function view_note($id)
	{
		
		$data['view_note'] = $this->Main_Model->view_note($id);
		$this->load->view('BKO/view_note',$data);
	}
//discount end



	public function show_enrolled_student($id)
		{

        $query['enroll_student'] = $this->Main_Model->show_enrolled_student($id);

		$this->load->view('BKO/show_enrolled_student',$query);

		}


		public function delete_student($id){

          $this->Main_Model->delete_student($id);

           redirect	('Main/show_stds');

		}

		public function delete_enroll_students($id){

           
           $this->Main_Model->delete_enroll_student($id);

           redirect	('Main/show_all_enrolled_students');

		}

		public function delete_enroll_student($id){

           
           $this->Main_Model->delete_enroll_student($id);

           redirect	('Main/show_enrolled_student/'.$id);

		}

		public function insert_voucher($id){


$data['show_student_details'] = $this->Main_Model->show_student_details($id);
//$data['show_student_profile'] = $this->Main_Model->show_student_profile($id);
$data['show_fee_details_in_student_profile'] = $this->Main_Model->show_fee_details_in_student_profile($id);
$data['show_discount_details_in_voucher'] = $this->Main_Model->show_discount_details_in_voucher($id);

//$data['show_student_profile_discount'] = $this->Main_Model->show_student_profile_discount($id);
	

		$this->load->view('BKO/fees_voucher',$data);


        /* $data = $this->input->post();
		
		$this->Main_Model->insert_voucher($data);
		$query['fees']=$this->Main_Model->show_voucher($data);*/
		//$this->load->model('Main_Model');
		//$query['std_details']=$this->Main_Model->show_student_data_for_voucher($data);


		



		}
			public function batchajax(){

		$this->load->view('BKO/batchajax');

		}
			public function stdajax(){

		$this->load->view('BKO/stdajax');

		}


public function ajax_courses(){



	$this->load->view('BKO/ajax_courses');
}

public function ajax_student_courses(){



	$this->load->view('BKO/ajax_student_courses');
}
	public function detailed_course($id){


	$data['detailed_course'] = $this->Main_Model->detailed_course($id);
	//$data['show_fee_details_in_student_profile'] = $this->Main_Model->show_fee_details_in_student_profile($id);
	//$data['show_student_profile_discount'] = $this->Main_Model->show_student_profile_discount($id);
	

		$this->load->view('BKO/detailed_course',$data);


    }

    public function voucher_insert($id)
    {

		$total_fees = $this->input->post('total_fees');
		$student_id = $this->input->post('studentid');
		$pay_amount = $this->input->post('pay_amount');
    	$remain_fees = $this->input->post('remain_fees');
    	$batch_name = $this->input->post('batch_name');
    	$current_date = $this->input->post('current_date');
    	$due_date = $this->input->post('due_date');
    	$pay_with = $this->input->post('pay_with');
    	$cheque_number = $this->input->post('cheque_number');
    

            $data1 = array(
                'total_fees' => $total_fees,
                'student_id' => $student_id,
                'remain_fees' => $remain_fees,
                'batch_name' => $batch_name,
                'current_date' => $current_date,
                'due_date' => $due_date,
                'pay_with' => $pay_with,
                'cheque_number' => $cheque_number,
                'pay_amount' => $pay_amount
            );
        
            $this->db->insert('master_vocher',$data1);


    	  
		$course_id = $this->input->post('course_id[]');
		$student_id = $this->input->post('student_id[]');
    	$received_amount = $this->input->post('received_amount[]');
    	$voucher_amount = $this->input->post('voucher_amount[]');
    	$count = count($received_amount);

        for($i=0; $i<$count; $i++) {

            $data = array(
                'received_amount' => $received_amount[$i]+$voucher_amount[$i],
                 'voucher_amt' => $voucher_amount[$i]
                
            );
            $this->db->where('student_id',$student_id[$i]);
            $this->db->where('course_id',$course_id[$i]);
            $this->db->update('enroll_student',$data);

        }

		$data['print_voucher'] = $this->Main_Model->print_voucher($id);
		$data['print_voucher1'] = $this->Main_Model->print_voucher1($id,$pay_amount,$remain_fees);
        $this->load->view('BKO/print_voucher',$data);

    }


    public function voucher_insert_discount($id){

$total_fees = $this->input->post('total_fees');
		$student_id = $this->input->post('studentid');
		$pay_amount = $this->input->post('pay_amount');
    	$remain_fees = $this->input->post('remain_fees');
    	$batch_name = $this->input->post('batch_name');
    	$current_date = $this->input->post('current_date');
    	$due_date = $this->input->post('due_date');
    	$pay_with = $this->input->post('pay_with');
    	$cheque_number = $this->input->post('cheque_number');
    

            $data1 = array(
                'total_fees' => $total_fees,
                'student_id' => $student_id,
                'remain_fees' => $remain_fees,
                'batch_name' => $batch_name,
                'current_date' => $current_date,
                'due_date' => $due_date,
                'pay_with' => $pay_with,
                'cheque_number' => $cheque_number,
                'pay_amount' => $pay_amount
            );
        
            $this->db->insert('master_vocher',$data1);


    	  
		$course_id = $this->input->post('course_id[]');
		$student_id = $this->input->post('student_id[]');
    	$received_amount = $this->input->post('received_amount[]');
    	$voucher_amount = $this->input->post('voucher_amount[]');
    	$count = count($received_amount);

        for($i=0; $i<$count; $i++) {

            $data = array(
                'received_amount' => $received_amount[$i]+$voucher_amount[$i],
                 'voucher_amt' => $voucher_amount[$i]
                
            );
            $this->db->where('student_id',$student_id[$i]);
            $this->db->where('course_id',$course_id[$i]);
            $this->db->update('enroll_student',$data);

        }

		$data['print_voucher'] = $this->Main_Model->print_voucher($id);
		$data['print_voucher1'] = $this->Main_Model->print_voucher1($id,$pay_amount,$remain_fees);
        $this->load->view('BKO/print_voucher',$data);








    }

    public function print_voucher(){




    	
    }

 //expense_start


	    public function all_expense(){


	    	$data['all_expense'] = $this->Main_Model->all_expense();
	    	$this->load->view('BKO/expense',$data);
	    }

	    public function show_insert_expense(){


	    	$this->load->view('BKO/add_expense');
	    }

	    public function insert_expense(){


        $data= $this->input->post();
		$this->load->model('Main_Model');
		$query = $this->Main_Model->insert_expense($data);
		redirect('Main/all_expense');


	    }
	    public function show_expense_details($id)
	    {
             
           $query['data'] =  $this->Main_Model->show_expense_details($id); 
           $this->load->view('BKO/show_expense_details',$query);



	    }
	      public function admin_show_expense_details($id)
	    {


	    	$query['data'] =  $this->Main_Model->admin_show_expense_details($id); 
           $this->load->view('Admin/admin_show_expense_details',$query);


	    }

	    public function admin_all_expense(){

   $data['all_expense'] = $this->Main_Model->all_expense();
	$this->load->view('Admin/admin_all_expense',$data);
}




public function approve_expense($id){
	
 $this->Main_Model->approve_expense($id);
	redirect('Main/admin_all_expense');

}
public function deny_expense($id){
	

$dataaa['dataa'] = $this->Main_Model->deny_expense($id);
	$this->load->view('Admin/deny_message',$dataaa);




	

}


public function insert_deny_message($id)
{
	$data= $this->input->post();
		$this->load->model('Main_Model');
		$this->Main_Model->insert_deny_message($id,$data);


	

	redirect('Main/admin_all_expense');



}
public function undo_approve($id){

	$this->load->model('Main_Model');
		$this->Main_Model->undo_approve($id);


	redirect('Main/admin_all_expense');


}

public function undo_deny($id){


	$this->load->model('Main_Model');
		$this->Main_Model->undo_deny($id);


	redirect('Main/admin_all_expense');	
	
}

public function pay_expense($id){


		$this->load->model('Main_Model');
		$this->Main_Model->pay_expense($id);
	
	redirect('Main/all_expense');


}
public function show_deny_message($id)


{

	$this->load->model('Main_Model');
		$this->Main_Model->show_deny_message($id);

$dataa['data'] = 	$this->Main_Model->show_deny_message($id);

$this->load->view('BKO/show_deny_message',$dataa);


}
	    //expense_ENd
//report_START
public function show_paid_reports(){


		$data['show_paid_reports'] = $this->Main_Model->show_paid_reports(); 
		$this->load->view('Admin/show_paid_reports',$data);
	}

	

	public function show_unpaid_reports(){


		$data['show_unpaid_reports'] = $this->Main_Model->show_unpaid_reports(); 
		$this->load->view('Admin/show_unpaid_reports',$data);
	}

	public function show_freeze_reports(){


		$data['show_freeze_reports'] = $this->Main_Model->show_freeze_reports(); 
		$this->load->view('Admin/show_freeze_reports',$data);
	}



	public function show_discount_reports(){


		$data['show_discount_reports'] = $this->Main_Model->show_discount_reports(); 
		$this->load->view('Admin/show_discount_reports',$data);
	}


	public function show_paid_reports_bko(){

     $data['show_paid_reports'] = $this->Main_Model->show_paid_reports(); 
		$this->load->view('BKO/show_paid_reports_bko',$data);


	}
	public function show_unpaid_reports_bko(){


		$data['show_unpaid_reports'] = $this->Main_Model->show_unpaid_reports(); 
		$this->load->view('BKO/show_unpaid_reports_bko',$data);
	}

	public function show_freeze_reports_bko(){


		$data['show_freeze_reports'] = $this->Main_Model->show_freeze_reports(); 
		$this->load->view('BKO/show_freeze_reports_bko',$data);
	}



	public function show_discount_reports_bko(){


		$data['show_discount_reports'] = $this->Main_Model->show_discount_reports(); 
		$this->load->view('BKO/show_discount_reports_bko',$data);
	}

	public function show_expense_reports_bko(){


	$data['all_expense'] = $this->Main_Model->all_expense(); 
		$this->load->view('BKO/show_expense_reports_bko',$data);

	}
		public function show_expense_reports_bko_for_print(){


	$data['all_expense'] = $this->Main_Model->all_expense(); 
		$this->load->view('BKO/show_expense_reports_bko_for_print',$data);

	}

	public function show_voucher_reports_bko(){

$data['show_voucher_reports_bko'] = $this->Main_Model->show_voucher_reports(); 
		$this->load->view('BKO/show_voucher_reports_bko',$data);


	}

	public function show_voucher_reports_bko_for_print(){
$data['show_voucher_reports_bko'] = $this->Main_Model->show_voucher_reports(); 
$data['show_voucher_reports_current_date'] = $this->Main_Model->show_voucher_reports_current_date();
$data['show_voucher_reports_due_date'] = $this->Main_Model->show_voucher_reports_due_date();  
		$this->load->view('BKO/show_voucher_reports_bko_for_print',$data);


	}

	public function show_expense_reports_print_ajax(){

$this->load->view('BKO/show_expense_reports_print_ajax');


	}
	public function show_expense_reports_print_due_date_ajax(){

$this->load->view('BKO/show_expense_reports_print_due_date_ajax');


	}
	public function show_voucher_reports_print_ajax()
		{

$this->load->view('BKO/show_voucher_reports_print_ajax');

		}


		public function show_voucher_reports_print_due_datee_ajax(){


$this->load->view('BKO/show_voucher_reports_print_due_datee_ajax');

		}

		public function show_paid_reports_bko_for_print(){


        $data['show_paid_reports'] = $this->Main_Model->show_paid_details_for_print(); 
		$this->load->view('BKO/show_paid_reports_bko_for_print',$data);



		}

public function show_paid_reports_print_ajax(){


		$this->load->view('BKO/show_paid_reports_print_ajax');
}


public function show_unpaid_reports_bko_for_print(){


        $data['show_paid_reports'] = $this->Main_Model->show_paid_details_for_print(); 
		$this->load->view('BKO/show_unpaid_reports_bko_for_print',$data);



		}

public function show_unpaid_reports_print_ajax(){


		$this->load->view('BKO/show_unpaid_reports_print_ajax');
}





//report_END



//Discount_Start



public function approve_discount($id){



$this->Main_Model->approve_discount($id);
	redirect('Main/show_discount_reports');






}

public function undo_approve_discount($id)
{

$this->Main_Model->undo_approve_discount($id);
	redirect('Main/show_discount_reports');

}


public function deny_discount($id)
{

 $dataaa['dataa'] = $this->Main_Model->deny_discount($id);
	 
	$this->load->view('Admin/deny_dicount_message',$dataaa);


}
public function deny_discount_message($id)
{

$this->Main_Model->deny_discount($id);
	
	$this->load->view('Admin/deny_dicount_message',$dataaa);


}


public function undo_deny_discount($id)
{
$this->Main_Model->undo_deny_discount($id);


	$datas = array(

'admin_note' => ""
		);

	$this->db->where('discount_id',$id);
	$this->db->update('discount',$datas);


	redirect('Main/show_discount_reports');
}





public function insert_deny_message_discount($id)
{
	$data= $this->input->post();
		$this->load->model('Main_Model');
		$this->Main_Model->insert_deny_message_discount($id,$data);


	

	redirect('Main/show_discount_reports');



}

public function show_deny_message_discount($id)

{




$this->load->model('Main_Model');
	

$dataa['data'] = $this->Main_Model->show_deny_message_discount($id);

$this->load->view('BKO/show_deny_message_discount',$dataa);

}




//Dicount_End





   





  public function insert_new_enroll_student($id)
    {

         	$data['show_data_for_insert_new_enroll_student'] = $this->Main_Model->insert_new_enroll_student($id);

         	$data['courses_for_insert_new_enroll_student'] = $this->Main_Model->courses_for_insert_new_enroll_student($id);  
		$this->load->view('BKO/insert_new_enroll_student',$data);

    }

    public function update_new_enroll_student($id)
    {


$course_name=$this->input->post('checkbox_courses[]');
    		$count=count($course_name);
    		for($i=0; $i<$count; $i++){
    		$data = array(

				'student_id' => $this->input->post('student_id'),
				'program_id'  => $this->input->post('program_id'),
				'module_id'  => $this->input->post('module_id'),
				'course_replace_remarks' => $this->input->post('course_replace_remarks'),
				'course_id' => $course_name[$i],
				'batch_id' => $this->input->post('batch_id'),
				'Freez' => $this->input->post('Freez'),
				
				'enrolled_status' => 1
			);
				
		$query = $this->db->insert('enroll_student',$data);
	}

		redirect(base_url()."Main/show_enrolled_student/".$id);


    }

public function update_enroll_student(){



			$id=$this->input->get('id');
			$id2=$this->input->get('id2');

	$data['show_data_for_insert_new_enroll_student'] = $this->Main_Model->insert_new_enroll_student($id);

         	$data['courses_for_insert_new_enroll_student'] = $this->Main_Model->courses_for_insert_new_enroll_student($id);  
		$this->load->view('BKO/edit_new_enroll_student',$data);

}

   

   public function update_update_new_enroll_student(){


$id=$this->input->get('id');
			$id2=$this->input->get('id2');


$check = $this->db->query('SELECT enrollment_id FROM enroll_student
	                       WHERE student_id =   "'.$id.'" AND course_id = "'.$id2.'"  ');

$a = 0;

 foreach($check->result() as $key){

 $a = $key->enrollment_id;

}

$data = array(

				'student_id' => $this->input->post('student_id'),
				'program_id'  => $this->input->post('program_id'),
				'module_id'  => $this->input->post('module_id'),
				'course_id' => $this->input->post('course_id'),
				'batch_id' => $this->input->post('batch_id'),
				'status' => $this->input->post('status'),
				'course_replace_remarks' => $this->input->post('course_replace_remarks'),
				'Paid' => $this->input->post('Paid'),
				'enrolled_status' => 1
			);


	$this->db->where("enrollment_id",$a);
			$this->db->update('enroll_student',$data);

				redirect(base_url()."Main/show_enrolled_student/".$id);




 }

    		

public function delete_enroll_student_courses(){

$id=$this->input->get('id');
			$id2=$this->input->get('id2');

         
$this->Main_Model->delete_enroll_student_courses($id);
redirect(base_url()."Main/show_enrolled_student/".$id2);

}

   


}
