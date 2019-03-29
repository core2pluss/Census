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
            <table id="example1" class="table table-bordered table-striped" style="margin-left: 25px;width:90%;">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Head ID</th>
                        <th>Name</th>
                        <th>Member CNIC</th>
                        <th>Relation</th>
                        <th>Gender</th>
                        <th>DOB</th>
                        <th>Marital</th>
                        <th>Education</th>
                        <th>Job Status</th>
                        <th>Profession</th>
                        <th class="text-center" style="color:#000">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($testing1)
                    {
                      foreach($testing1 as $key)
                      {
                    ?>
                    <tr style="padding: 0 !important">
                        <td><?php echo $key['FamilyID'];?></td>
                        <td><?php echo $key['HeadID'];?></td>
                        <td><?php echo $key['MemberName'];?></td>
                        <td><?php echo $key['MemberCNIC'];?></td>
                        <td><?php echo $key['RelationshipHF'];?></td>
                        <td><?php echo $key['Gender'];?></td>
                        <td><?php echo $key['Age'];?></td>
                        <td><?php echo $key['MaritalStaus'];?></td>
                        <td><?php echo $key['Education']?></td>
                        <td><?php echo $key['JobStatus'];?></td>
                        <td><?php echo $key['Profession'];?></td>
                        <td>Buttons</td>
                    </tr>
                    <?php }
                }
            ?>
                </tbody>
            </table>
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
        $('#addmore_entry').append('<div id="addagain"><div id="removeaddagain"><div class="form-group col-sm-12 col-md-12 col-xs-12 personal" id="family-info-box1"><div class="col input"><input type="text" id="" name="myform[MemberName]" class="form-control col-md-7 col-xs-12 input-sm" value="<?php 
            echo set_value('MemberName'); ?>" placeholder="Person Name"></div><div class="col input"><input type="text" id="" name="myform[MemberCNIC]" maxlength="13" class="form-control col-md-7 col-xs-12 input-sm" value="<?php 
            echo set_value('MemberCNIC'); ?>" placeholder="MemberCNIC"></div><div class="col input"><select name="myform[RelationshipHF]" id="relation" class="form-control col-md-7 col-xs-12 input-sm"><option value="">--Select--</option><?php 
            foreach
            ($relationshipmatrix as $data_relation) 
              { ?><option value="<?php echo $data_relation -> RelationID;?>"><?php 
            echo $data_relation -> Relationship;?></option><?php 
              } ?></select></div><div class="col input"><select placeholder="Annual Income" class="form-control col-md-7 col-xs-12 input-sm" name="myform[Gender]"><option value="">--Select--</option><option value="1">Male</option><option value="2">Female</option><option value="3">Not specified</option></select></div><div class="col input"><input type="date" id="date" name="myform[Age]" class="form-control col-sm-1 col-md-1 col-xs-12 input-sm" value="<?php
            echo set_value('Age'); ?>" ></div><div class="col input"><select class="form-control col-md-7 col-xs-12 input-sm" name="myform[MaritalStatus]"><option value="">--Select--</option><?php
            foreach
              ($maritalmatrix as $data)
              { ?><option value="<?php
            echo $data -> ID;?>"><?php
            echo $data -> MaritalStatus;?></option><?php
              } ?></select></div><div class="col input" style="display:none"><select class="form-control col-md-7 col-xs-12 input-sm" name="myform[Religion]"><option value="1">Muslim</option><option value="2">Non-Muslim</option></select></div><div class="col input" style="display: none"><select  class="form-control col-md-7 col-xs-12 input-sm" name="myform[Language]"><option value="1">Urdu</option><option value="2">English</option><option value="3">Sindhi</option></select></div><div class="col input" style="display: none"><select class="form-control col-md-7 col-xs-12 input-sm" name="myform[Nationality]"><option value="1">Pakistani</option><option value="2">Foreigner</option></select></div><div class="col input"><select class="form-control col-md-7 col-xs-12 input-sm" name="myform[Education]"><option value="">--Select--</option><?php
            foreach
              ($educationmatrix as $data)
              { ?><option value="<?php
            echo $data -> EduID;?>"><?php
            echo$data -> Level;?></option><?php 
              } ?></select></div><div class="col input"><select class="form-control col-md-7 col-xs-12 input-sm JobStatus" name="myform[JobStatus]"><option value="" >--Select--</option><?php
            foreach
              ($jobstatusmatix as $data)
              { ?><option value="<?php
            echo $data -> JobID; ?>"><?php
            echo $data -> JobNature;?></option><?php
              } ?></select></div><div class="col input"><select class="form-control col-md-7 col-xs-12 input-sm profession" name="myform[Profession]"><option value="">Select</option><?php
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
            $('#profession')[0].reset();
        }
    });
});

function popup() {
    alert("Please Fill Step wise");
}
</script>
<!-- jQuery -->