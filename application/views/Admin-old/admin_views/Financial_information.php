<style>

  input:hover{
    background-color: #eef;
    box-shadow: 0px 0px 10px;
  }
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<div class="content-wrapper">
        <div class="right_col" role="main">
                <?php if($this->session->flashdata('success')) { ?>
                <div class="alert alert-success" role='alert'>
                  <h5 style="font-style: italic; font-weight: bold;font-size: 1em;"><?php echo $this->session->flashdata('success'); ?></h5>  
                </div>
              <?php } ?>
              <?php if($this->session->flashdata('error')) { ?>
                <div class="alert alert-danger" role='alert'>
                  <h5><?php echo $this->session->flashdata('error'); ?></h5>  
                </div>
              <?php } ?>
              <div class="row">
                <div class="col-sm-3 col-md-3 col-lg-3" style="display: inline-flex;">
      
       <a href="<?php echo base_url('User/family'); ?>"><button class="btn btn-success " style="min-width: 40%;"  name="button">Previous</button></a>
        <a href="<?php echo base_url('User/financial'); ?>"><button class="btn btn-primary " style="min-width: 40%;"  name="button">Next</button></a>
                </div>
                 <!-- <a href="<?php echo base_url('ORB/PI_show/'.$this->session->userdata('reg_id')); ?>" style="float:right;">
      <button type="button" class="btn btn-info">View</button></a> -->
              </div>
              <hr>
    <!-- --------------------------------Main---------------------------                  -->
    <div id="wizard" class="form_wizard wizard_horizontal" >

                           <ul class="wizard_steps">
                  <li>
                    <a href="">
                      <span class="step_no">1</span>
                      <span class="step_descr">
                                        Step 1<br />
                                        <small></small>
                                    </span>
                    </a>
                  </li>


                  <li>
                    <a href="#step-2">
                      <span class="step_no">2</span>
                      <span class="step_descr" >
                                        Step 2<br />
                                        <small></small>
                                    </span>
                    </a>
                  </li>

                  <li>
                    <a href="#step-3">
                      <span class="step_no">3</span>
                      <span class="step_descr">
                                        Step 3<br />
                                        <small></small>
                                    </span>
                    </a>
                  </li>
                  <li>
                    <a href="#step-4" onclick="popup()">
                      <span class="step_no">4</span>
                      <span class="step_descr">
                                        Step 4<br />
                                        <small></small>
                      </span>
                    </a>
                  </li>

                   <li>
                    <a href="#step-5" onclick="popup()">
                      <span class="step_no" style="background-color: silver;">5</span>
                      <span class="step_descr">
                                        Step 5<br />
                                        <small></small>
                                    </span>
                    </a>
                  </li>


                   <li>
                    <a href="#step-7" onclick="popup()">
                      <span class="step_no" style="background-color: silver;">6</span>
                      <span class="step_descr">
                                        Step 6<br />
                                        <small></small>
                                    </span>
                    </a>
                  </li>

                   <li>
                    <a href="#step-8" onclick="popup()">
                      <span class="step_no" style="background-color: silver;">7</span>
                      <span class="step_descr">
                                        Step 7<br />
                                        <small></small>
                                    </span>
                    </a>
                  </li>

                  <li>
                    <a href="#step-9" onclick="popup()">
                      <span class="step_no" style="background-color: silver;">8</span>
                      <span class="step_descr">
                          Step 8<br />
                          <small></small>
                      </span>
                    </a>
                  </li>
             </ul>


                      <!-- end row -->
         <!-- --------------------------------Main---------------------------                  -->
    <div id="step-4">
      <h1 style="font-size:72px; text-transform: capitalize;margin-left:45px; color:#ccc">This Page Is Under Construction</h1>
                      <!-- step 4 -->
                      <!-- <div class="row" >
                        <div class="col-sm-12 main" >
                      
                        <h2 class="StepTitle"  style="font-family: serif;font-size:22px;margin-left:5px;">Finacial Information</h2>
                        
                  <div class="form-group">                            

                            <div class="col-md-6 col-sm-6 col-xs-12">  
                             <label class="" for="name">Source Of Income <span class="required"></span>
                             </label>
                              <input type="text" id=""  name="rollno"   class="form-control col-md-7 col-xs-12" value="" required="" placeholder="Source of income">
                            </div>                            

                            <div class="col-md-6 col-sm-6 col-xs-12">  
                             <label class="" for="name">Annual Income <span class="required" style="color: red">*</span>
                             </label>
                            <select placeholder="Annual Income"  class="form-control col-md-7 col-xs-12">

                              <option value="">Annual Income</option>
                              <option value="1">0-120K+</option>
                              <option value="2">120K-200K+</option>
                              <option value="3">200K-300K+</option>
                            </select>
                            </div>

                  </div>

                   <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12">  
                             <label class="" for="name">Select Your Home Status <span class="required"></span>
                             </label>
                            <select placeholder="Annual Income"  class="form-control col-md-7 col-xs-12">

                              <option value="">Please Select</option>
                              <option value="1">Owner</option>
                              <option value="2">Rent</option>
                              <option value="3">Partial Owner</option>
                            </select>
                            </div>                            

                            <div class="col-md-6 col-sm-6 col-xs-12">  
                             <label class="" for="name">Personal Assets <span class="required" style="color: red">*</span>
                             </label>
                            <select placeholder="Annual Income"  class="form-control col-md-7 col-xs-12">

                              <option value="">Please Select</option>
                              <option value="1">House </option>
                              <option value="2">Land</option>
                              <option value="3">Shops</option>
                              <option value="4">Vehicles</option>
                              <option value="5">Others</option>
                              

                            </select>
                            </div>
                        
                  </div>

                   <div class="form-group">                            

                            <div class="col-md-6 col-sm-6 col-xs-12 element_wrappe">  
                             <label class="" for="name">Other Assets Name / Worth<span class="required"></span>
                             </label>
                              <input type="text" id=""  name="rollno"   class="form-control col-md-7 col-xs-12 ro" value="" required="" placeholder="Assets Name">
                            </div>                            

                            <div class="col-md-6 col-sm-6 col-xs-12 element_wrappe">  
                             <label class="" for="name">Description <span class="required" style="color: red">*</span>
                             </label>
                              <input type="text" id=""  name="rollno"   class="form-control col-md-7 col-xs-12 ro" value="" required="" placeholder="Description">
                            </div>

---------------------------start------------------------- -->
                        <!-- <div>
                          <div class="element_wrappe">
                              <div class="ro">
                              <label class="" for="name">Description <span class="required" style="color: red">*</span>
                              </label>
                                <input type="text" id=""  name="rollno"   class=" col-md-5 col-xs-12 temp2" value="" required="" placeholder="Source of income">

                                Details:<input type="text" name="" class=" col-md-3 col-sm-3 col-xs-6">

                                <button class="btn btn-primary temp2" style="color:#fff; position: relative">+
                                </button>

                                <button class="btn btn-danger temp1" style="color:#fff;">X
                                </button>
                              </div>
                            
                            </div>

                         </div> 
 -------------------------End---------------------------- 
                    </div>
            </div>
        </div>
                    
                          <input type="submit" id="submit_personal" class="btn btn-success btn-md" style="margin-top: 2%; margin-left:90%">

                        </form>

                        <div id="personal_result"></div>
                      
     
       </div>
      </div>
    </div>
  </div>
<?//php $this->load->view('includes/footer'); ?>





<script type="text/javascript">
  function title_change()
  {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open('GET',"ajax?title="+document.getElementById('title_tb').value,false);
    xmlHttp.send(null);
  document.getElementById('sub_title').innerHTML=xmlHttp.responseText;
  //alert(xmlHttp.responseText);
  }

function displayVals() {
  var singleValues = $( "#sub_title" ).val();

 if((singleValues =="Bachelor of Business Administration (BBA)") || (singleValues =="Master of Business Administration (MBA)")){
  $( "#selectme" ).css("display","block");
}else{
  $( "#selectme" ).css("display","none");
}
}
 
$( "select" ).change( displayVals );
displayVals();
     
     // start dynamic textBox

     // create new row

     $(document).on("click", ".temp2",function(){
      var ad =$(".ro").eq(0).clone().show();
      $(".element_wrappe").append(ad);
     });  

     //remove dynamic textBox    
     $(document).on("click", ".temp1",function(){
      var index = $(".temp1").index(this);
      console.log(index);
      $(".ro").eq(index).remove();
     });



     // end dynamic textBox

     // start popup
    function popup()
    {
      alert('Notice: You Must have to fill First Personal Information Page to access this page...!');
        }
     // end popup
</script>
 -->