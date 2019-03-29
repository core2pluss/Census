<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//require APPPATH."reports/student/PivotArttStudents.php";

require APPPATH."reports/census/FamilyHead.php";
// require APPPATH."reports/student/PivotArttStudents.php";


class census extends CI_Controller {

	
	public function index()
	{
		$report = new FamilyHead;
		$report->run()->render();
		//$report->run()->export()->pdf(array
		//	("format"=>"A4", "orientation"=>"portrait") )->toBrowser("FamilyHead.pdf");
						
		// $report = new PivotArttStudents;
		//$report = new PivotArttStudents(array("BatchID"=>64));
		
		//$this->load->view('welcome_message');
	}

	public function headpdf()
	{
		
		//require_once "FamilyHead.php";
		$report = new FamilyHead;

		$report->run()
			->export('FamilyHeadPdf')
			->pdf(array(
    		"format"=>"A4",
    		"orientation"=>"portrait",
    	))
		->toBrowser("Family_Head.pdf");

	}
}

