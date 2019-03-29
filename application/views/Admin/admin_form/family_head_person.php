<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Family Head
            <small>Information</small>
        </h1>
        <!-- <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol> -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header box-header_panel">
                        <h3 class="box-title">Personal Information</h3>
                    </div>
                    <div class="box-body">
                        <form action="<?php echo base_url() ?>HeadOfFamily" method="post">
                            <div class="col-md-6 col-sm-6 col-xs-12 panel-div">
                                <div class="panel panel-default panel-design">
                                    <div class="panel-heading">This Page is Disabled</div>
                                    <div class="panel-body"></div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12 panel-div">
                                <div class="panel panel-default panel-design">
                                    <div class="panel-heading">This Page is Disabled</div>
                                    <div class="panel-body"></div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12 panel-div">
                                <div class="panel panel-default panel-design">
                                    <div class="panel-heading">This Page is Disabled</div>
                                    <div class="panel-body"></div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12 panel-div">
                                <div class="panel panel-default panel-design">
                                    <div class="panel-heading">This Page is Disabled</div>
                                        <div class="panel-body">
                                            <div class="form-group  col-sm-12 col-md-12 col-xs-12 personal">
                                                <div class="col-md-4 col-sm-6 col-xs-12">  
                                                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Address 1 <span class="required" style="color: red">*</span></label>
                                                    <input type="text" id="address1"  name="Address1"  placeholder="A-1234" class="form-control col-md-2 col-xs-12  input-sm" value="<?php echo set_value('Address1'); ?>" required></input>
                                                </div>
                                                <div class="col-md-4 col-sm-6 col-xs-12">  
                                                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Address 2 <span class="required" style="color: red;font-size: 10px">If needed</span></label>
                                                    <input type="text" id="address2"  name="Address2"  placeholder="A-1234" class="form-control col-md-2 col-xs-12  input-sm" value="<?php echo set_value('Address2'); ?>"></input>
                                                </div>
                                                <div class="col-md-4 col-sm-6 col-xs-12">  
                                                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Block <span class="required" style="color: red">*</span></label>
                                                    <input type="text" id="address"  name="BlockArea"  placeholder="Block/1234" class="form-control col-md-2 col-xs-12  input-sm" value="<?php echo set_value('BlockArea'); ?>" required=""></input>
                                                </div>
                                                <div class="col-md-4 col-sm-6 col-xs-12">  
                                                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Postal Code <span class="required" style="color: red"></span></label>
                                                    <input type="text" id="postal"  name="PostalCode"  placeholder="Enter Postal" class="form-control col-md-2 col-xs-12 input-sm" data-mask="00000" value="<?php echo set_value('PostalCode'); ?>"></input>
                                                </div>
                                                <div class="col-md-4 col-sm-6 col-xs-12">  
                                                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Province <span class="required" style="color: red">*</span></label>
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
                                                <div class="col-md-4 col-sm-6 col-xs-12">
                                                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">City / Division <span class="required" style="color: red" id="newCity">*</span></label>
                                                    <select class="form-control col-md-7 col-xs-12 input-sm" id="division" disabled name="CityDivision" required>
                                                        <option value=""> Please Select City </option>
                                                        <?php
                                                            foreach ($division as $data_division): ?>
                                                                <option value="<?php echo $data_division -> DivisionID;?>">
                                                                <?php echo $data_division -> DivisionName;?>
                                                                </option>
                                                                <?php
                                                            endforeach;
                                                        ?> 
                                                    </select>
                                                </div>
                                                <div class="col-md-4 col-sm-6 col-xs-12">  
                                                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">District <span class="required" style="color: red">*</span></label>
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
                                                <div class="col-md-4 col-sm-6 col-xs-12">  
                                                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Tehsil (Sub-district) <span class="required" style="color: red"></span></label>
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
                                                <div class="col-md-4 col-sm-6 col-xs-12">  
                                                    <label class="col-md-12 col-sm-12 col-xs-12" for="name">Main Area <span class="required" style="color: red"></span></label>
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
                                                    <label class="col-md-12 col-sm-12 col-xs-12">Fore Father Information(State + Tehsil + Village) <span class="required" style="color: red"></span></label>
                                                  
                                                    <input type="text" id="postal"  name="PostalCode"  placeholder="Please type as required" class="form-control col-md-2 col-xs-12 input-sm" value=""></input>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
           



    </section>
    <section class="content-footer">
    </section>
    <!-- end row -->
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
            alert("Loading Data....");
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