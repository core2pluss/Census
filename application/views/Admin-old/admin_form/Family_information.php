<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
input[type=date]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    display: none;
}
</style>
<div class="content-wrapper">
    <div class="right_col" role="main">
        <?php if($this->session->flashdata('success')) { ?>
        <div class="alert alert-success" role='alert'>
            <h5 style="font-style: italic; font-weight: bold;font-size: 1em;">
                <?php echo $this->session->flashdata('success'); ?></h5>
        </div>
        <?php } ?>
        <?php if($this->session->flashdata('error')) { ?>
        <div class="alert alert-danger" role='alert'>
            <h5><?php echo $this->session->flashdata('error'); ?></h5>
        </div>
        <?php } ?>
        <div class="row">
            <div class="col-sm-3 col-md-3 col-lg-3" style="display: inline-flex;margin-bottom: 2px;">
                <a href="<?php echo base_url('User/info'); ?>"><button class="btn btn-success " style="min-width: 40%;"
                        name="button">Previous</button></a>

                <a href="<?php echo base_url('User/financial'); ?>"><button class="btn btn-primary "
                        style="min-width: 40%;" name="button">Next</button></a>
            </div>

            <div class="col-md-9">

                <a href="<?php echo base_url('User/PI_show/'.$this->session->userdata('reg_id')); ?>"
                    style="float:right;">
                    <button type="button" class="btn btn-info">View</button></a>

            </div>
            <hr>
            <div id="wizard" class="form_wizard wizard_horizontal col-sm-12 col-md-12 col-xs-12" style="height:auto">
                <!-- --------------------------------Main--------------------------- -->
                <div id="wizard" class="form_wizard wizard_horizontal">

                    <ul class="wizard_steps">
                        <li>
                            <a href="">
                                <span class="step_no">1</span>
                                <span class="step_descr">
                                    Step 1<br>
                                    <small></small>
                                </span>
                            </a>
                        </li>

                        <li>
                            <a href="#step-2">
                                <span class="step_no">2</span>
                                <span class="step_descr">
                                    Step 2<br />
                                    <small></small>
                                </span>
                            </a>
                        </li>

                        <li>
                            <a href="#step-3" onclick="popup()">
                                <span class="step_no">3</span>
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
                    <form action="<?php echo base_url(); ?>User/addNewRecord2" method="post" name="addFamily"
                        id="addFamily">
                        <div class="row">
                            <div class="col-sm-12 main">

                                <h4 class="StepTitle" style="font-family: serif;margin-left:5px;">Family Information
                                </h4>
                                <div class="row" style="margin-bottom: 2px; margin-top: -30px ">

                                    <div class="col-md-2 col-sm-2 col-xs-12" style="float: right;">
                                        <h5>Family Head CNIC</h5>
                                        <input type="text" id="" name="myform[][HFCNIC]"
                                            class="form-control col-md-7 col-xs-12 input-sm" placeholder="HFCNIC"
                                            readonly="" value="">
                                    </div>

                                    <div class="col-md-2 col-sm-2 col-xs-12" style="float: right;">
                                        <h5>Family Head ID</h5>
                                        <input type="text" id="ID" name="myform[][HeadID]"
                                            class="form-control col-md-3 col-xs-12 input-sm" placeholder="ID"
                                            readonly="" value="">
                                    </div>

                                    <div class="col-md-2 col-sm-2 col-xs-12" style="float: right;">
                                        <h5>Family Head Name</h5>
                                        <input type="text" id="ID" name="myform[][FirstName]"
                                            class="form-control col-md-3 col-xs-12 input-sm" placeholder="Family ID"
                                            readonly="" value="">
                                    </div>
                                </div>
                                <div id="addmore_entry">
                                    <!-- <div id="removeaddagain" > -->
                                    <div id="addagain">
                                        <div class="form-group col-sm-12 col-md-12 col-xs-12 personal"
                                            id="family-info-box1">
                                            <h5 class="headings">Single Unit Information</h5>

                                            <div class="col input">
                                                <label class="down" for="name">Name<span class="required"></span>
                                                </label>
                                                <input type="text" id="" name="myform[][MemberName]"
                                                    class="form-control col-md-7 col-xs-12 input-sm"
                                                    value="<?php echo set_value('MemberName'); ?>"
                                                    placeholder="Person Name">
                                            </div>

                                            <div class="col input">
                                                <label class="" for="name">Member CNIC <span class="required"
                                                        style="color: red">*</span>
                                                </label>
                                                <input type="text" id="" name="myform[][MemberCNIC]" maxlength="13"
                                                    class="form-control col-md-7 col-xs-12 input-sm"
                                                    value="<?php echo set_value('MemberCNIC'); ?>"
                                                    placeholder="MemberCNIC">
                                            </div>

                                            <div class="col input">
                                                <label class="" for="name">Relation <span class="required"
                                                        style="color: red">*</span>
                                                </label>
                                                <select name="myform[][RelationshipHF]" id="relation"
                                                    class="form-control col-md-7 col-xs-12 input-sm">
                                                    <option value="">--Select--</option>
                                                    <?php
                                foreach ($relationshipmatrix as $data_relation) 
                                  {?>
                                                    <option value="<?php echo $data_relation -> RelationID;?>">
                                                        <?php echo $data_relation -> Relationship;?>
                                                    </option>
                                                    <?php
                                  }
                                ?>
                                                </select>
                                            </div>

                                            <div class="col input">
                                                <label class="down" for="name">Gender <span class="required"
                                                        style="color: red">*</span>
                                                </label>
                                                <select placeholder="Annual Income"
                                                    class="form-control col-md-7 col-xs-12 input-sm"
                                                    name="myform[][Gender]">
                                                    <option value="">--Select--</option>
                                                    <option value="1">Male</option>
                                                    <option value="2">Female</option>
                                                    <option value="3">Not specified</option>
                                                </select>
                                            </div>

                                            <div class="col input">
                                                <label class="down" for="name">D-O-B <span class="required"
                                                        style="color: red">*</span>
                                                </label>
                                                <input type="date" id="date" name="myform[][Age]"
                                                    class="form-control col-sm-1 col-md-1 col-xs-12 input-sm"
                                                    value="<?php echo set_value('Age'); ?>">
                                            </div>

                                            <div class="col input">
                                                <label class="" for="name">Marital<span class="required"
                                                        style="color: red">*</span>
                                                </label>
                                                <select class="form-control col-md-7 col-xs-12 input-sm"
                                                    name="myform[][MaritalStatus]">
                                                    <option value="">--Select--</option>
                                                    <?php
                            foreach ($maritalmatrix as $data) 
                              {?>
                                                    <option value="<?php echo $data -> ID;?>">
                                                        <?php echo $data -> MaritalStatus;?>
                                                    </option>
                                                    <?php
                              }
                            ?>
                                                </select>
                                            </div>
                                            <div class="col input" style="display:none">
                                                <label class="down" for="name">Religion <span class="required"></span>
                                                </label>
                                                <input type="text" name="myform[][Religion]"
                                                    class="form-control col-md-7 col-xs-12 input-sm" value="1">
                                                <!--                   <select placeholder="" class="form-control col-md-7 col-xs-12 input-sm" name="myform[][Religion]">
                        <option value="1">Muslim</option>
                        <option value="2">Non-Muslim</option>
                        </select>
 -->
                                            </div>

                                            <div class="col input" style="display: none">
                                                <label class="" for="name">Language<span class="required"
                                                        style="color: red">*</span>
                                                </label>
                                                <input type="text" name="myform[][Language]"
                                                    class="form-control col-md-7 col-xs-12 input-sm" value="1">
                                                <!--                    <select  class="form-control col-md-7 col-xs-12 input-sm" name="myform[][Language]">
                          <option value="1">Urdu</option>
                          <option value="2">English</option>
                          <option value="3">Sindhi</option>
                        </select> -->

                                            </div>

                                            <div class="col input" style="display: none">
                                                <label class="" for="name">Nationality<span class="required"
                                                        style="color:red">*</span>
                                                </label>
                                                <input type="text" name="myform[][Nationality]"
                                                    class="form-control col-md-7 col-xs-12 input-sm" value="1">
                                                <!--                    <select placeholder="Annual Income"  class="form-control col-md-7 col-xs-12 input-sm" name="myform[][Nationality]">
                          <option value="1">Pakistani</option>
                          <option value="2">Foreigner</option>                  
                        </select>
 -->
                                            </div>
                                            <div class="col input">
                                                <label class="down" for="name">Education <span class="required"
                                                        style="color: red">*</span>
                                                </label>
                                                <select placeholder="Annual Income"
                                                    class="form-control col-md-7 col-xs-12 input-sm"
                                                    name="myform[][Education]">

                                                    <option value="">--Select--</option>
                                                    <?php
                              foreach ($educationmatrix as $data) 
                                {?>
                                                    <option value="<?php echo $data -> EduID;?>">
                                                        <?php echo $data -> Level;?>
                                                    </option>
                                                    <?php
                                }
                              ?>
                                                </select>
                                            </div>



                                            <div class="col input">
                                                <label class="" for="name">JobStatus <span class="required"
                                                        style="color: red">*</span>
                                                </label>
                                                <select class="form-control col-md-7 col-xs-12 input-sm " id="JobStatus"
                                                    name="myform[][JobStatus]">

                                                    <option value="">--Select--</option>
                                                    <?php
                                foreach ($jobstatusmatix as $data) 
                                  {?>
                                                    <option value="<?php echo $data -> JobID;?>">
                                                        <?php echo $data -> JobNature;?>
                                                    </option>
                                                    <?php
                                  }
                                ?>

                                                </select>

                                            </div>

                                            <div class="col input">
                                                <label class="" for="name">Profession <span class="required"
                                                        style="color: red">*</span>
                                                </label>
                                                <select class="form-control col-md-7 col-xs-12 input-sm "
                                                    id="profession" name="myform[][Profession]" disabled="">
                                                    <option value="">--Select--</option>
                                                    <?php
                                foreach ($jobtitlematix as $data) 
                                  {?>
                                                    <option value="<?php echo $data -> JobTitleID;?>">
                                                        <?php echo $data -> JobTitle;?>
                                                    </option>
                                                    <?php
                                  }
                                ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- </div> -->
                                </div>
                            </div>
                            <div class="col-md-12">
                                <input type="submit" name="submit2" class="btn btn-success" id="submit_family"
                                    style="float:right">
                                <input type="reset" class="btn btn-info" value="Reset" style="float:right">

                                <span class="btn btn-danger" style="cursor: pointer;font-weight: bolder; height:2.5em;"
                                    id="removeaddMore" my-attr="1"><i
                                        class="glyphicon glyphicon-remove"></i></span><span class="btn btn-primary"
                                    style=" cursor: pointer; " id="addMore"><i class="glyphicon glyphicon-plus"></i>
                                    More Members</span>
                            </div>

                    </form>

                </div>

            </div>
        </div>
        <!-- end row -->
    </div>

</div>

</div>
<?php $this->load->view('includes/footer'); ?>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#addMore').click(function() {
        $('#addmore_entry').append('<div id="addagain"><div id="removeaddagain"><div class="form-group col-sm-12 col-md-12 col-xs-12 personal" id="family-info-box1"><div class="col input"><input type="text" id="" name="myform[][MemberName]" class="form-control col-md-7 col-xs-12 input-sm" value="<?php 
            echo set_value('MemberName'); ?>" placeholder="Person Name"></div><div class="col input"><input type="text" id="" name="myform[][MemberCNIC]" maxlength="13" class="form-control col-md-7 col-xs-12 input-sm" value="<?php 
            echo set_value('MemberCNIC'); ?>" placeholder="MemberCNIC"></div><div class="col input"><select name="myform[][RelationshipHF]" id="relation" class="form-control col-md-7 col-xs-12 input-sm"><option value="">--Select--</option><?php 
            foreach
            ($relationshipmatrix as $data_relation) 
              { ?><option value="<?php echo $data_relation -> RelationID;?>"><?php 
            echo $data_relation -> Relationship;?></option><?php 
              } ?></select></div><div class="col input"><select placeholder="Annual Income" class="form-control col-md-7 col-xs-12 input-sm" name="myform[][Gender]"><option value="">--Select--</option><option value="1">Male</option><option value="2">Female</option><option value="3">Not specified</option></select></div><div class="col input"><input type="date" id="date" name="myform[][Age]" class="form-control col-sm-1 col-md-1 col-xs-12 input-sm" value="<?php
            echo set_value('Age'); ?>" ></div><div class="col input"><select class="form-control col-md-7 col-xs-12 input-sm" name="myform[][MaritalStatus]"><option value="">--Select--</option><?php
            foreach
              ($maritalmatrix as $data)
              { ?><option value="<?php
            echo $data -> ID;?>"><?php
            echo $data -> MaritalStatus;?></option><?php
              } ?></select></div><div class="col input" style="display:none"><select class="form-control col-md-7 col-xs-12 input-sm" name="myform[][Religion]"><option value="1">Muslim</option><option value="2">Non-Muslim</option></select></div><div class="col input" style="display: none"><select  class="form-control col-md-7 col-xs-12 input-sm" name="myform[][Language]"><option value="1">Urdu</option><option value="2">English</option><option value="3">Sindhi</option></select></div><div class="col input" style="display: none"><select class="form-control col-md-7 col-xs-12 input-sm" name="myform[][Nationality]"><option value="1">Pakistani</option><option value="2">Foreigner</option></select></div><div class="col input"><select class="form-control col-md-7 col-xs-12 input-sm" name="myform[][Education]"><option value="">--Select--</option><?php
            foreach
              ($educationmatrix as $data)
              { ?><option value="<?php
            echo $data -> EduID;?>"><?php
            echo$data -> Level;?></option><?php 
              } ?></select></div><div class="col input"><select class="form-control col-md-7 col-xs-12 input-sm JobStatus" name="myform[][JobStatus]"><option value="" >--Select--</option><?php
            foreach
              ($jobstatusmatix as $data)
              { ?><option value="<?php
            echo $data -> JobID; ?>"><?php
            echo $data -> JobNature;?></option><?php
              } ?></select></div><div class="col input"><select class="form-control col-md-7 col-xs-12 input-sm profession" name="myform[][Profession]"><option value="">Select</option><?php
            foreach
              ($jobtitlematix as $data)
              { ?><option value="<?php
            echo $data -> JobTitleID;?>"><?php
            echo $data -> JobTitle;?></option><?php
              } ?></select></div></div></div>');
    });
    $("#removeaddMore").click(function() {
        $("#removeaddagain").remove();
    });
    $('#submit').click(function() {
        $.ajax({
            url: "<?php echo base_url()?>user/addNewRecord2",
            method: "POST",
            data: $('#addFamily').serialize(),
            success: function(data) {
                alert(data);
                $('#addFamily')[0].reset();
            }
        });
    });
});

// --------------- Add Button---------------------

// For profession
$('#JobStatus').on('change', function() {
    //alert('WORKing....')
    var JobID = $('#JobStatus').val();
    var JobTitleID = $(this).val();
    $('#profession').prop('disabled', false);

    $.ajax({
        url: "<?php echo base_url()?>user/get_profession",
        type: "POST",
        data: {
            'JobID': JobID,
            'JobTitleID': JobTitleID
        },
        dataType: 'json',
        success: function(data) {
            //alert(data);
            $('#profession').html(data);
        },
        error: function() {
            //alert("Error Loading profession....");
            $('#profession').prop('disabled', true);
        }
    });
});

function popup() {
    alert("Please Fill Step wise");
}
</script>
<!-- jQuery -->