<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
<div class="content-wrapper">
    <div class="right_col" role="main">
            <?php if($this->session->flashdata('error')) { ?>
      <div class="alert alert-danger" role='alert'> <h5><?php echo $this->session->flashdata('error'); ?></h5>
      </div> <?php } ?>
      <div class="row">

          <div class="col-sm-3 col-md-3 col-lg-3" style="display: inline-flex;">
    
          <a href="<?php echo base_url('User/grid'); ?>"><button class="btn btn-success " style="min-width: 40%;"  name="button">Previous</button></a>
          <a href="<?php echo base_url('User/family'); ?>"><button class="btn btn-primary " style="min-width: 40%;"  name="button">Next</button></a>
          </div>
          
          <div class="col-md-9">
      <!--             <a href="<?php echo base_url('user/PI_show/'.$this->session->userdata('reg_id')); ?>" style="float:right;">
                   
                  <button type="button" class="btn btn-info">View</button></a>
       -->          
          </div>
        
          <hr>

          <div id="wizard" class="form_wizard wizard_horizontal col-sm-12 col-md-12 col-xs-12" style="height:auto">

            <!-- --------------------------------Main--------------------------- -->
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
                    <a href="#step-2"  onclick="popup()">
                      <span class="step_no">2</span>
                      <span class="step_descr" >
                                        Step 2<br />
                                        <small></small>
                                    </span>
                    </a>
                  </li>

                  <li>
                    <a href="#step-3" onclick="popup()">
                      <span class="step_no" style="background-color: silver;">3</span>
                      <span class="step_descr">
                                        Step 3<br />
                                        <small></small>
                                    </span>
                    </a>
                  </li>
                  <li>
                    <a href="#step-4" onclick="popup()">
                      <span class="step_no" style="background-color: silver;">4</span>
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
          </div>

          <div id="step-1">
                    <!-- step 1 -->
            <div class="row">
              
              <div class="col-sm-12 main" >

                <h4 class="StepTitle"  style="font-family: serif;margin-left:5px;">Family Head Info</h4>         
                <form  action="<?php echo base_url() ?>addNewRecord" method="post">
                  <div class="form-group col-sm-8 col-md-8 col-xs-12 personal">
                    <h5 class="headings">Personal Informaion</h5>
                              
                    <div class="col-md-3 col-sm-3 col-xs-12">
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Name of Head <span class="required" style="color:red">*</span>
                      </label>
                      <input type="text" id="first_name1" name="FirstName" placeholder="First Name" required="required" class="form-control col-md-7 col-xs-12 input-sm" value="<?php echo set_value('FirstName'); ?>">
                    </div>                            

                    <div class="col-md-3 col-sm-3 col-xs-12">
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Middle Name <span class="required" style="color:red">*</span>
                      </label>
                      <input type="text" id="middle_name1"  name="MiddleName" placeholder="Middle Name" required="required" class="form-control col-md-7 col-xs-12 input-sm" value="<?php echo set_value('MiddleName'); ?>">
                    </div>    
                         
                    <div class="col-md-3 col-sm-3 col-xs-12">
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Last Name <span class="required" style="color:red"></span>
                      </label>
                      <input type="text" placeholder="Last Name" value="<?php echo set_value('LastName'); ?>" id="last_name1"  name="LastName"  class="form-control col-md-7 col-xs-12 input-sm">
                    </div>
                    
                    <div class="col-md-3 col-sm-3 col-xs-12">
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">CNIC <span style="color: red">*</span>
                      </label>
                      <input type="text" id="cnic2" name="HFCNIC" class="form-control col-md-7 col-xs-12 input-sm" data-mask="00000-0000000-0" required placeholder="xxxxx-xxxxxxx-x"  value="<?php echo set_value('HFCNIC'); ?>">
                    </div>
                              
                              
                    <div class="col-md-3 col-sm-3 col-xs-12">
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Father Name <span class="required" style="color:red">*</span>
                      </label>
                      <input type="text" id="first_name2"  name="FatherFirstName" placeholder="First Name" required="required" class="form-control col-md-7 col-xs-12 input-sm" value="<?php echo set_value('FatherFirstName'); ?>">
                    </div>                            
                              
                    <div class="col-md-3 col-sm-3 col-xs-12">
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Middle Name <span class="required" style="color:red">*</span>
                      </label>
                      <input type="text" id="middle_name2"  name="FatherMiddleName" placeholder="Middle Name" class="form-control col-md-7 col-xs-12 input-sm" value="<?php echo set_value('FatherMiddleName'); ?>"  required>
                    </div>
                         
                             
                    <div class="col-md-3 col-sm-3 col-xs-12">
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Last Name <span class="required" style="color:red"></span>
                      </label>
                      <input type="text" placeholder="Last Name" id="last_name2"  name="FatherLastName"  class="form-control col-md-7 col-xs-12 input-sm" value="<?php echo set_value('FatherLastName'); ?>">
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12 temp_change">  
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">CNIC <span class="required" style="color: red">*</span>
                      </label>
                      <input type="text" id="cnic2"  name="FatherCNIC" class="form-control col-md-7 col-xs-12 input-sm" data-mask="00000-0000000-0" placeholder="xxxxx-xxxxxxx-x" value="<?php echo set_value('FatherCNIC'); ?>"  required>
                    </div>
                  </div>
                    
                  <div class="form-group col-sm-4 col-md-4 col-xs-12 personal box2">
                        
                    <h5 class="headings">Contact Informaion</h5>
                    <div class="col-md-6 col-sm-6 col-xs-12">  
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Head ID <span class="required" style="color: red"></span>
                      </label>
                      <input type="text" id="HeadID"  name="HeadID"  class="form-control col-md-7 col-xs-12 input-sm" value="<?php echo set_value('HeadID'); ?>" placeholder="Generating by System" readonly>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">  
                    
                  </div>

                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Contact # <span class="required" style="color: red">*</span>
                    </label>
                    <input type="text" id="contact1"  name="MobileNo"   class="form-control col-md-7 col-xs-12 input-sm" required="" data-mask="(+92) 000-0000000" placeholder="(+92) xxx xxxxxxx" value="<?php echo set_value('MobileNo'); ?>">
                  </div>

                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Contact # 2 <span class="required" style="color: red"></span>
                    </label>
                    <input type="text" id="contact1"  name="MobileNo"   class="form-control col-md-7 col-xs-12 input-sm" required="" data-mask="00000000000" placeholder="xxxxxxxxxxx" value="<?php echo set_value(''); ?>">
                  </div>

                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Email <span id="showEmail" style="color:red;font-size: 9px"></span>
                    </label>
                              
                    <input type="text" id="email"  name="Email"   class="form-control col-md-7 col-xs-12 input-sm" onkeyup="newEmail()" placeholder=" Not Mandatory" value="<?php echo set_value('Email'); ?>">
                  </div>

                </div>

                <div class="form-group  col-sm-12 col-md-12 col-xs-12 personal">
                  <h5 class="headings">Address</h5>
                    <div class="col-md-3 col-sm-3 col-xs-12">  
                                                        
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Address 1 <span class="required" style="color: red">*</span>
                      </label>
                      <!-- data-mask="A-9999" -->
                      <input type="text" id="address1"  name="Address1"  placeholder="A-1234" class="form-control col-md-2 col-xs-12  input-sm" value="<?php echo set_value('Address1'); ?>" required></input>
                    </div>
              
                    <div class="col-md-3 col-sm-3 col-xs-12">  
                                                        
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Address 2 <span class="required" style="color: red;font-size: 10px">If needed</span>
                      </label>
                      <!-- data-mask="A-9999" -->
                      <input type="text" id="address2"  name="Address2"  placeholder="A-1234" class="form-control col-md-2 col-xs-12  input-sm" value="<?php echo set_value('Address2'); ?>"></input>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">  
                                                        
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Block <span class="required" style="color: red">*</span>
                      </label>
                      <!-- data-mask="Block / AAAA" -->
                      <input type="text" id="address"  name="BlockArea"  placeholder="Block/1234" class="form-control col-md-2 col-xs-12  input-sm" value="<?php echo set_value('BlockArea'); ?>" required=""></input>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">  
                                                        
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Postal Code <span class="required" style="color: red"></span>
                      </label>
                      
                      <input type="text" id="postal"  name="PostalCode"  placeholder="Enter Postal" class="form-control col-md-2 col-xs-12 input-sm" data-mask="00000" value="<?php echo set_value('PostalCode'); ?>"></input>
                    </div>
  
                    <div class="col-md-3 col-sm-3 col-xs-12">  
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Province <span class="required" style="color: red">*</span>
                      </label>

                        <select class="form-control col-md-7 col-xs-12  input-sm" id="provance" name="Prov" required >
                          
                            <option value="">Please Select Province </option>                              
                          <?php
                          foreach ($provance as $data_provance):?>
                            <option value="<?php echo $data_provance -> ProvID;?>">
                                 <?php echo $data_provance -> ProvName;?>
                              </option>
                          <?php
                            endforeach;
                          ?>
                          </select>
                     
                    </div>
                              
                    <div class="col-md-3 col-sm-3 col-xs-12">
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">City / Division <span class="required" style="color: red" id="newCity">*</span>
                      </label>

                      <select class="form-control col-md-7 col-xs-12 input-sm" id="division" disabled name="CityDivision" required>
                          
                          <option value=""> Please Select City </option>
                            <?php
                          foreach ($division as $data_division):
                            ?>
                            <option value="<?php echo $data_division -> DivisionID;?>">
                                 <?php echo $data_division -> DivisionName;?>
                              </option>
                          <?php
                            endforeach;
                          ?> 

                      </select>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">  
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">District <span class="required" style="color: red">*</span>
                      </label>

                      <select class="form-control col-md-7 col-xs-12 input-sm" id="district"  disabled name="District" required>

                            <option value="">Please Select District </option>                              
                          <?php
                          foreach ($district as $data_district) 
                            {?>
                            <option value="<?php echo $data_district -> DistrictID;?>">
                                 <?php echo $data_district -> DistrictName;?>
                              </option>
                          <?php
                            }
                          ?>

                      </select>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">  
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Tehsil (Sub-district) <span class="required" style="color: red"></span>
                      </label>
                      
                      <select class="form-control col-md-7 col-xs-12 input-sm" id="tehsil" disabled="" name="Tehsil" required>
                            
                            <option value="">Please Select Tehsil </option>                              

                              <?php
                              foreach ($tehsil as $data_tehsil) 
                                {?>
                                <option value="<?php echo $data_tehsil -> TehsilID;?>">
                                     <?php echo $data_tehsil -> TehsilName;?>
                                  </option>
                              <?php
                                }
                              ?>
 
                      </select>                            
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">  
                                                        
                      <label class="col-md-12 col-sm-12 col-xs-12" for="name">Main Area <span class="required" style="color: red"></span>
                      </label>
                      <select class="form-control col-md-7 col-xs-12 input-sm" id="mainArea" disabled="" name="mainArea">
                            
                            <option value="">Please Select Near Location </option>
                              <?php
                              foreach ($mainArea as $data_mainArea) 
                                {?>
                                <option value="<?php echo $data_mainArea -> LocationID;?>">
                                     <?php echo $data_mainArea -> LocationName;?>
                                </option>
                              <?php
                                }
                              ?>
                      </select>
                    </div>
                  <div class="col-md-9 col-sm-9 col-xs-12">                                    
                      <label class="col-md-12 col-sm-12 col-xs-12">Fore Father Information(State + Tehsil + Village) <span class="required" style="color: red"></span>
                      </label>
                      
                      <input type="text" id="postal"  name="PostalCode"  placeholder="Please type as required" class="form-control col-md-2 col-xs-12 input-sm" value=""></input>
                    </div>
                  </div>
                </div>
              
              </div>
              <div style=" margin-left:85%">
                  
                  <input type="submit" id="submit_personal" name="submit1" class="btn btn-success btn-md">
                  
                  <input type="reset" class="btn btn-info" value="Reset">
              </div>
              
                    
             </div>             
             
             </form>
            </div>
        </div>
         <!-- end row -->
      </div>
    </div>
<script type="text/javascript">


 function newEmail(){

  var re=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  var text = document.getElementById("email");
  
  if(!text.value.match(re)) 
  {
    document.getElementById("showEmail").innerHTML = "Incorrect Format";

  }
  else{
    document.getElementById("showEmail").innerHTML = "  ";
  }
}
                                  
// Email validaion

//  ajax Check

// For Division
$(document).ready(function(){
  $('#provance').on('change', function()
    {
       //alert('WORKing....')
      
      var ProvID = $(this).val();
      //alert(ProvID);
      
      if(ProvID == '')
      {
        $('#division').prop('disabled', true);
      }
      else{
        $('#division').prop('disabled', false);
        $.ajax({
          url:"<?php echo base_url()?>user/get_division",
          type:"POST",
          data:{'ProvID':ProvID},
          dataType:'json',
          success: function(data){
          console.log(data);
           
           $('#division').html(data);
          },
          error: function(){
           $('#division').prop('disabled', true);
          }
        });

      }


    });
// end For Division

// For District
$('#division').on('change', function()
    {
      
      var ProvID = $('#provance').val();
      var DivisionID = $(this).val();

        $('#district').prop('disabled', false);
        $.ajax({
          url:"<?php echo base_url()?>user/get_district",
          type:"POST",
          data:{'ProvID': ProvID,'DivisionID':DivisionID},
          dataType:'json',
          success: function(data){
            //alert(data);           
           $('#district').html(data);
          },
          error: function(){
            
            alert("Error Loading District....");
          }
        });
    });
// end For District

// For Tehsil
$('#district').on('change', function()
    {
      var ProvID = $('#provance').val();
      var DivisionID = $('#division').val();
      var DistrictID = $(this).val();
        $('#tehsil').prop('disabled', false);
        $.ajax({
          url:"<?php echo base_url()?>user/get_tehsil",
          type:"POST",
          data:{'ProvID':ProvID,'DivisionID':DivisionID,'DistrictID':DistrictID},
          dataType:'json',
          success: function(data){
            //alert(data);           
           $('#tehsil').html(data);
          },
          error: function(){
            alert("Error Loading Data....");
          }
        });   
    });

// For Main Area
$('#tehsil').on('change', function()
    {
      var ProvID = $('#provance').val();
      var DivisionID = $('#division').val();
      var DistrictID = $('#district').val();
      var TehsilID = $('#tehsil').val();
        $('#mainArea').prop('disabled', false);
        $.ajax({
          url:"<?php echo base_url()?>user/get_mainArea",
          type:"POST",
          data:{'ProvID':ProvID,'DivisionID':DivisionID,'DistrictID':DistrictID,'TehsilID':TehsilID},
          dataType:'json',
          success: function(data){
            // alert(data);           
           $('#mainArea').html(data);
          },
          error: function(){
            alert("Error Loading Data....");
          }
        });   
    });
});

//  ajax Check

//  submit ajax
function popup(){
  alert("Please Fill Step wise");
}
</script>
    <!-- jQuery -->
  <?php $this->load->view('includes/footer'); ?>