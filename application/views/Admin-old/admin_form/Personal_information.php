
<link rel="stylesheet" href="<?=base_url()?>public/plugins/datatables/dataTables.bootstrap.css">
<style>
.box-header {
    margin: 0;
    border-top: 2px solid green;
}

.bo {}

.panel {
    margin: 0px;
}

.form-group {
    padding: 1px;
    margin-bottom: 2px;
}

h4 {
    
    margin-top: 0;
    margin-bottom: 0px;
    margin-left: 14px;
}

.submit {
    margin-top: 23px;
}

.col-sm-4,
.col-md-4,
.col-sm-6,
.col-md-6,
.col-sm-8,
.col-md-8 {
    padding: 1px;
}
</style>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Create
            <small>Head of Family</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url()?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <!-- <li><a href="#">Tables</a></li> -->
            <li class="active">New Head Of Family </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h5 class="box-title">New Head of Family</h5>
                <div class="box-tools pull-right">
                    <!-- <span class="label label-primary">Label</span> -->
                </div>
            </div>
            <div class="box-body">
 
                <form action="<?php echo base_url('user/personal_info_create_fn')?>" id="myform" method="POST">
                    <div class="form-row align-items-center">
                        <div class="col-sm-8 col-md-8">
                            <h4>Personal Information</h4>
                            <div class="panel panel-info">
                                <div class="panel-body">
                                    <div class="form-group col-md-3">
                                        <label for="FirstName">First Name <span class="required"
                                                style="color:red">*</span></label>
                                        <input type="text" class="form-control" name="FirstName" id="FirstName" placeholder="First Name" required>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="MiddleName">Middle Name <span class="required"
                                                style="color:red">*</span></label>
                                        <input type="text" class="form-control"  name="MiddleName" id="MiddleName" placeholder="Middle Name" required>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="LastName">Last Name <span class="required"  style="color:red">*</span></label>
                                        <input type="text" class="form-control"  name="LastName" id="LastName" placeholder="Last Name" required>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="HFCNIC">CNIC <span class="required"
                                                style="color:red">*</span></label>
                                        <input type="text" class="form-control" name="HFCNIC" id="HFCNIC"
                                            placeholder="00000-0000000-0" data-mask="00000-0000000-0">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="FatherFirstName">Father Name <span class="required"
                                                style="color:red">*</span></label>
                                        <input type="text" class="form-control" name="FatherFirstName" id="FatherFirstName"
                                            placeholder="FatherFirstName">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="FatherMiddleName">Middle Name <span class="required"
                                                style="color:red">*</span></label>
                                        <input type="text" class="form-control" name="FatherMiddleName" id="FatherMiddleName"
                                            placeholder="Father Middle Name">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="FatherLastName">Last Name </label>
                                        <input type="text" class="form-control" name="FatherLastName" id="FatherLastName"
                                            placeholder="Father Last Name">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="FatherCNIC">CNIC <span class="required"
                                                style="color:red">*</span></label>
                                        <input type="text" class="form-control" id="FatherCNIC" name="FatherCNIC"
                                            placeholder="00000-0000000-0" data-mask="00000-0000000-0">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-4">
                            <h4>Contact Informaion</h4>
                            <div class="panel panel-warning">
                                <div class="panel-body">
                                    <div class="form-group col-md-6">
                                        <label for=">HeadID">Head ID </label>
                                        <input type="text" id="HeadID" class="form-control" readonly placeholder="Generated By System"
                                            data-inputmask="00000" value="">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="MobileNo">Contact # 1 <span class="required"
                                                style="color: red">*</span></label>
                                        <input type="text" id="MobileNo" name="MobileNo" class="form-control" required
                                            data-inputmask="(+92) 000-0000000" placeholder="(+92) xxx xxxxxxx">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="contact2">Contact # 2 <span class="required"
                                                style="color: red">*</span></label>
                                        <input type="text" id="contact2"  class="form-control" required
                                            data-inputmask="(+92) 000-0000000" placeholder="(+92) xxx xxxxxxx">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="Email">Email address <span class="required"
                                                style="color: red"></span></label>
                                        <input type="Email" class="form-control" name="Email" id="Email"
                                            placeholder="name@example.com">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-8">
                            <h4>Address</h4>
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="form-group col-md-6">
                                        <label for="Address1">Address 1 <span class="required"
                                                style="color: red">*</span></label>
                                        <input type="text" class="form-control" id="address1" name="Address1"
                                            placeholder="A-1234">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="BlockArea">Block <span class="required"
                                                style="color: red">*</span></label>
                                        <input type="text" class="form-control" id="BlockArea" name="Block"
                                            placeholder="Block/1234">
                                    </div> 
                                    <div class="form-group col-md-3">
                                        <label for="PostalCode">Postal Code <span class="required"
                                                style="color: red">*</span></label>
                                        <input type="text" class="form-control" id="PostalCode" name="PostalCode"
                                            placeholder="Enter Postal">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="Address2">Address 2 <span class="required" style="color: red">* If
                                                needed</span></label>
                                        <input type="text" class="form-control" id="address2" name="Address2"
                                            placeholder="A-1234">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="Address2">Fore-Father Information <span class="required" style="color: red">* If
                                                needed</span></label>
                                        <input type="text" class="form-control" id="address2" name="Address2"
                                            placeholder="A-1234">
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <h4>Location</h4>
                            <div class="panel panel-info">
                                <div class="panel-body">
                                    <div class="form-group col-md-6">
                                        <label for="provance">provance <span class="required"
                                                style="color: red">*</span></label>
                                        <select class="form-control" id="provance" name="Prov" required>

                                            <option value="">Select Province </option>
                                            <?php
                        foreach ($provance as $data):?>
                                            <option value="<?php echo $data -> ProvID;?>">
                                                <?php echo $data -> ProvName;?>
                                            </option>
                                            <?php
                          endforeach;
                        ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="CityDivision">City Division <span class="required"
                                                style="color: red">*</span></label>
                                        <select class="form-control" id="division" disabled name="CityDivision"
                                            required>

                                            <option value="">Select City </option>
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
                                    <div class="form-group col-md-4">
                                        <label for="District">District <span class="required"
                                                style="color: red">*</span></label>
                                        <select class="form-control" id="district" disabled
                                            name="District" required>

                                            <option value="">Select District </option>
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
                                    <div class="form-group col-md-4">
                                        <label for="Tehsil">Tehsil <span class="required"
                                                style="color: red">*</span></label>
                                        <select class="form-control" id="tehsil" disabled="" name="Tehsil" required>

                                            <option value="">Select Tehsil </option>

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
                                    <div class="form-group col-md-4">
                                        <label for="mainArea">Main Area <span class="required"
                                                style="color: red">*</span></label>
                                        <select class="form-control " id="mainArea" disabled="" name="mainArea">

                                            <option value="">Select Near Location </option>
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

                                </div>

                            </div>
                        </div>
                        <div class="form-group col-md-4 submit pull-left">
                            <button type="Submit" id="Submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>

 <!-- <script>
 $(document).ready(function () {
    $('Submit').submit(function (e) { 
        alert('click');
        e.preventDefault();
        $.ajax({
         type: "POST",
         contentType: "application/json; charset=utf-8",
         dataType: "dataType",
         url: $("#myform").attr('action'),
         data: $("#myform :input").serialize(),,
         success: function (response) {
            if (data == 1) {
             // console.log(data);
             alert('inserted successfully');
           $('#myform')[0].reset();
          }
          else if(data == 2){
             // console.log(data);
            alert('You have already registers in the conference');
           $('#myform')[0].reset();
          }
          else{
            alert('Error of submitting form...');
          }
         }
     });
        
    });  
 </script> -->
    <script>
 
 function newEmail() {
 
 var re =
     /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
 var text = document.getElementById("email");
 
 if (!text.value.match(re)) {
     document.getElementById("showEmail").innerHTML = "Format isn't correct";
 
 } else {
     document.getElementById("showEmail").innerHTML = "  ";
 }
 }
 
 // Email validaion
 
 //  ajax Check
 
 // For Division
 $(document).ready(function() {
 $('#provance').on('change', function() {
     //alert('WORKing....')
 
     var ProvID = $(this).val();
     //alert(ProvID);
 
     if (ProvID == '') {
         $('#division').prop('disabled', true);
     } else {
         $('#division').prop('disabled', false);
         $.ajax({
             url: "<?php echo base_url()?>user/get_division",
             type: "POST",
             data: {
                 'ProvID': ProvID
             },
             dataType: 'json',
             success: function(data) {
                 console.log(data);
 
                 $('#division').html(data);
             },
             error: function() {
                 $('#division').prop('disabled', true);
             }
         });
 
     }
 
 
 });
 // end For Division
 
 // For District
 $('#division').on('change', function() {
 
     var ProvID = $('#provance').val();
     var DivisionID = $(this).val();
 
     $('#district').prop('disabled', false);
     $.ajax({
         url: "<?php echo base_url()?>user/get_district",
         type: "POST",
         data: {
             'ProvID': ProvID,
             'DivisionID': DivisionID
         },
         dataType: 'json',
         success: function(data) {
             //alert(data);           
             $('#district').html(data);
         },
         error: function() {
 
             alert("Error Loading District....");
         }
     });
 });
 // end For District
 
 // For Tehsil
 $('#district').on('change', function() {
     var ProvID = $('#provance').val();
     var DivisionID = $('#division').val();
     var DistrictID = $(this).val();
     $('#tehsil').prop('disabled', false);
     $.ajax({
         url: "<?php echo base_url()?>user/get_tehsil",
         type: "POST",
         data: {
             'ProvID': ProvID,
             'DivisionID': DivisionID,
             'DistrictID': DistrictID
         },
         dataType: 'json',
         success: function(data) {
             //alert(data);           
             $('#tehsil').html(data);
         },
         error: function() {
             alert("Error Loading Data....");
         }
     });
 });
 
 // For Main Area
 $('#tehsil').on('change', function() {
     var ProvID = $('#provance').val();
     var DivisionID = $('#division').val();
     var DistrictID = $('#district').val();
     var TehsilID = $('#tehsil').val();
     $('#mainArea').prop('disabled', false);
     $.ajax({
         url: "<?php echo base_url()?>user/get_mainArea",
         type: "POST",
         data: {
             'ProvID': ProvID,
             'DivisionID': DivisionID,
             'DistrictID': DistrictID,
             'TehsilID': TehsilID
         },
         dataType: 'json',
         success: function(data) {
             // alert(data);           
             $('#mainArea').html(data);
         },
         error: function() {
             alert("Error Loading Data....");
         }
     });
 });
 });
 
 </script>