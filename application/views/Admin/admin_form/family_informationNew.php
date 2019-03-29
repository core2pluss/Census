<link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css">
<link rel="stylesheet" href="<?=base_url()?>public/plugins/datatables/dataTables.bootstrap.css">

<style type="text/css">
.none {
    /*display: none;*/
}

.col {
    width: 105px;
    padding: 3px;
    float: left;
}

.input {
    height: auto;
}

.box-header {
    margin-bottom: 3px;
}

.form-group {
    padding: 1px;
    margin-bottom: 0px;
}

/* select.input-sm{
    padding: 1px;
    height:auto;
}
.form-control{
    padding: 1px;
    height:auto;
} */
.table td {
    font-size: 12px;
}

.btn {
    /* margin: 0px; */
    margin-top: 8px;
}

.topFields {
    float: right;
}

.topFields div {
    margin-right: 15px;
}

.StepTitle {
    /*font-family: serif;margin-left:10px;*/
}

.tagg {
    font-size: initial;
    color: cadetblue;
    margin-left: 9px;
    margin-top: 10px;
    margin-bottom: 0px;
    border-bottom: 1px solid cadetblue;
    width: fit-content;
    overflow: hidden;
}

.form {
    /* margin: 2px; */
    padding: 10px;
    /* background-color: #fff; */
    border: 1px solid #bce8f1;
}

hr {
    border: 1px solid gray;
    padding: 0;
    margin: 0;
}
</style>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Add
            <small>Family member</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="#">Family</a></li>
            <li class="active">Family member information</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">New Family member</h3>
            </div>
            <div class="box-content">
                <div class="col-md-4 col-sm-4 pull-left">
                    <p class="tagg">Add Family Members of <span style="font-weight:bold; font-style: italic;"><?php echo $testing[0]['FirstName']." ".$testing[0]['MiddleName']." / ".$testing[0]['Address1']."_";?></span> </p>
                </div>
                <div class="col-md-4 col-sm-4 pull-right">
               
                    <div class="form-group col-md-3 col-sm-3 input">
                        <label for="FirstName">Head ID <span class="required" style="color:red">*</span></label>
                        <input type="text" class="form-control" name="HeadID" id="HeadID" placeholder="Head ID" readonly
                            value=" <?php echo $testing[0]['HeadID'];?>">
                    </div>
                    <div class="form-group col-md-4 col-sm-4 input">
                        <label for="FirstName">Head CNIC <span class="required" style="color:red">*</span></label>
                        <input type="text" class="form-control" name="HFCNIC" id="HFCNIC" placeholder="HFCNIC" readonly
                            value=" <?php echo $testing[0]['HFCNIC'];?>">
                    </div>
                    <div class="form-group col-md-5 col-sm-5 input">
                        <label for="FirstName">First Name <span class="required" style="color:red">*</span></label>
                        <input type="text" class="form-control" name="FirstName" id="FirstName" placeholder="First Name"
                            readonly value=" <?php echo $testing[0]['FirstName'];?>">
                    </div>
                </div>
                <div class="col-sm-12 ">
                    <div class="row form">
                        <div class="form-group col-md-2  input">
                            <label for="MemberName">Member Name: <span class="required"
                                    style="color:red">*</span></label>
                            <input type="text" id="MemberName" name="MemberName"
                                class="form-control col-md-7 col-xs-12 input-sm" value="" placeholder="Person Name">
                        </div>

                        <div class="form-group col-md-2 input">
                            <label for="MemberCNIC">Member CNIC: <span class="required"
                                    style="color:red">*</span></label>
                            <input type="text" id="MemberCNIC" name="MemberCNIC"
                                class="form-control col-md-12 col-xs-12 input-sm" value="" placeholder="Member CNIC"
                                data-mask="00000-0000000-0">
                        </div>

                        <div class="form-group col-md-1 input">
                            <label for="RelationshipHF"> Family Relation </label>
                            <select name="RelationshipHF" id="RelationshipHF"
                                class="form-control col-md-7 col-xs-12 input-sm">
                                <option value="">--Select--</option>
                                <?php foreach ($relationshipmatrix as $data) {?>
                                <option value="<?php echo $data -> RelationID;?>">
                                    <?php echo $data -> Relationship;?>
                                </option>
                                <?php } ?>
                            </select>
                        </div>

                        <div class="form-group col-md-1 input">
                            <label for="Gender"> Gender:</label>


                            <select class="form-control col-md-7 col-xs-12 input-sm" name="Gender" id="Gender">
                                <option value="">--Select--</option>
                                <option value="1">Male</option>
                                <option value="2">Female</option>
                                <option value="3">Not specified</option>
                            </select>
                        </div>

                        <div class="form-group col-md-1 input">

                            <label for="Age"> Date Of Birth:</label>

                            <input type="date" id="Age" name="Age"
                                class="form-control col-sm-1 col-md-1 col-xs-12 input-sm" value="">
                        </div>
                        <div class="form-group col-md-1 input">
                            <label for="MaritalStaus">Marital Status:</label>

                            <select class="form-control input-sm" name="MaritalStaus"
                                id="MaritalStaus">
                                <option value="">--Select--</option>
                                <?php foreach ($maritalmatrix as $data) {?>
                                <option value="<?php echo $data -> ID;?>">
                                    <?php echo $data -> MaritalStatus;?>
                                </option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group col-md-1 input" style="display:none">
                            Religion:
                            <input type="text" name="Religion" value="1" id="Religion">
                        </div>
                        <div class="form-group col-md-1 input" style="display: none">
                            Language:
                            <input type="text" name="Language" value="1" id="Language">
                        </div>
                        <div class="form-group col-md-1 input" style="display: none">
                            Nationality:
                            <input type="text" name="Nationality" value="1" id="Nationality">
                        </div>
                        <div>
                            <input type="hidden" id="HFCNIC" name="HFCNIC" value=" <?php echo $testing[0]['HFCNIC'];?>">
                        </div>
                        <div>
                            <input type="hidden" id="HeadID" name="HeadID" value="<?php echo $testing[0]['HeadID'];?>">
                        </div>
                        <div class="form-group col-md-1 input">
                            <label for="Education">Education:</label>


                            <select id="Education" name="Education" class="form-control col-md-7 col-xs-12 input-sm ">
                                <option value="">--Select--</option>
                                <?php foreach ($educationmatrix as $data) { ?>
                                <option value="<?php echo $data -> EduID;?>">
                                    <?php echo $data -> Level;?>
                                </option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group col-md-1 input">
                            <label for="Education">Job Status:</label>

                            <select class="form-control col-md-7 col-xs-12 input-sm " id="JobStatus" name="JobStatus">
                                <option value="">--Select--</option>
                                <?php foreach ($jobstatusmatix as $data) { ?>
                                <option value="<?php echo $data -> JobID;?>">
                                    <?php echo $data -> JobNature;?>
                                </option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group col-md-1 input">
                            <label for="Profession">Profession:</label>
                            <select class="form-control col-md-7 col-xs-12 input-sm " id="Profession" name="Profession"
                                disabled="">
                                <option value="">--Select--</option>
                                <?php foreach ($jobtitlematix as $data) { ?>
                                <option value="<?php echo $data -> JobTitleID;?>">
                                    <?php echo $data -> JobTitle;?>
                                </option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group col-md-1 input btn">
                            <button type="submit" id="add_data" class="btn btn-primary"><i  class="fa fa-plus"></i></button>
                        </div>
                    </div>
                    <div class="row form">
                        <table class="table table-bordered table-hover " id="data_table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>CNIC</th>
                                    <th>Relation</th>
                                    <th>Gender</th>
                                    <th>DOB</th>
                                    <th>MaritalStatus</th>
                                    <th>Education</th>
                                    <th>Job Status</th>
                                    <th>Profession</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>

                                </tr>
                            </tbody>
                        </table>

                        <input type="submit" id="save" value="Save All Records" class="btn btn-success"
                            style="float: right">
                    </div>
                </div>
            </div>
            <div class="box-footer">

            </div>
            <div class="panel panel-info">
                <p class="tagg">All family Members of <span
                        style="font-weight:bold; font-style: oblique;"><?php echo $testing[0]['FirstName']." ".$testing[0]['MiddleName'];?></span>
                </p>
                <div class="panel-body">
                    <table class="table table-bordered table-hover" id="tabledata">
                        <thead>
                            <tr>
                                <th>Family ID</th>
                                <th>Member Name</th>
                                <th>Age</th>
                                <th>Member CNIC</th>
                                <th>Marital Staus</th>
                                <th>HFCNIC</th>
                                <th>Education</th>
                                <th>Job Status</th>
                                <th>Profession</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php if(($testing1)) { foreach($testing1 as $records) { ?>
                            <tr>
                                <td><?php echo $records['FamilyID']?></td>
                                <td><?php echo $records['MemberName']?></td>
                                <td><?php echo $records['Age'] ?></td>
                                <td><?php echo $records['MemberCNIC'] ?></td>
                                <td><?php echo $records['MaritalStaus']?></td>
                                <td><?php echo $records['HFCNIC']?></td>
                                <td><?php echo $records['Education']?></td>
                                <td><?php echo $records['JobStatus']?></td>
                                <td><?php echo $records['Profession']?></td>
                                <td align="center"><a class="btn btn-sm btn-success button1"
                                        href="<?php echo base_url('family_informationUpdate')?>?id=<?php echo $records['FamilyID'] ?>"><i
                                            class="fa fa-plus">Update Recorde</i></a>
                                </td>
                            </tr>
                            <?php } } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<script>
//Form Ajax Main Function
$(function() {
    var i = 0;
    $("#add_data").click(function() {
        //var no =$("#no").val();
        var MemberName = $("#MemberName").val();
        var MemberCNIC = $("#MemberCNIC").val();
        var RelationshipHF = $("#RelationshipHF").val();
        var Gender = $("#Gender").val();
        var Age = $("#Age").val();
        var MaritalStaus = $("#MaritalStaus").val();
        var JobStatus = $("#JobStatus").val();
        var Profession = $("#Profession").val();
        var Education = $("#Education").val();
        var HFCNIC = $("#HFCNIC").val();
        var HeadID = $("#HeadID").val();


        i++;
        //append
        $('#data_table tbody:last-child').append(
            '<tr id="row' + i + '">' +
            '<td contenteditable="true">' + MemberName + '</td>' +
            '<td contenteditable="true">' + MemberCNIC + '</td>' +
            '<td>' + RelationshipHF + '</td>' +
            '<td>' + Gender + '</td>' +
            '<td>' + Age + '</td>' +
            '<td>' + MaritalStaus + '</td>' +
            '<td>' + Education + '</td>' +
            '<td>' + JobStatus + '</td>' +
            '<td>' + Profession + '</td>' +
            '<td style="display: none;">' + HFCNIC + '</td>' +
            '<td style="display: none;">' + HeadID + '</td>' +
            '<td><button type="button" name="remove" id="' + i +
            '" class="btn btn-danger btn_remove"><i class="fa fa-close"></i></button></td></tr>'
        );
        //clear input data
        $("#MemberName").val(' ');
        $("#MemberCNIC").val(' ');
        $("#RelationshipHF").val(' ');
        $("#Gender").val(' ');
        $("#Age").val(' ');
        $("#MaritalStaus").val(' ');
        // $("#HFCNIC").val(' ');
        // $("#HeadID").val(' ');
        $("#Education").val(' ');
        $("#JobStatus").val(' ');
        $("#Profession").val(' ');
        //set_number();
    });
    // Remove Temp Record
    $(document).on('click', '.btn_remove', function() {
        var button_id = $(this).attr("id");
        $('#row' + button_id + '').remove();
    });
    // Save Records To DB
    $("#save").click(function() {

        var table_data = [];

        //we will use each to get all the data
        $('#data_table tr').each(function(row, tr) {
            // create new array to store all the data per row

            if ($(tr).find("td:eq(0)").text() == "") {
                $('#data-table').hide();
            } else {

                var sub = {
                    //"no": $(tr).find("td:eq(0)").text(),
                    "MemberName": $(tr).find("td:eq(0)").text(),
                    "MemberCNIC": $(tr).find("td:eq(1)").text(),
                    "RelationshipHF": $(tr).find("td:eq(2)").text(),
                    "Gender": $(tr).find("td:eq(3)").text(),
                    "Age": $(tr).find("td:eq(4)").text(),
                    "MaritalStaus": $(tr).find("td:eq(5)").text(),
                    "Education": $(tr).find("td:eq(6)").text(),
                    "JobStatus": $(tr).find("td:eq(7)").text(),
                    "Profession": $(tr).find("td:eq(8)").text(),
                    // "Religion": $(tr).find("td:eq(9)").text(),
                    // "Nationality": $(tr).find("td:eq(10)").text(),
                    // "Language": $(tr).find("td:eq(11)").text(),
                    "HFCNIC": $(tr).find("td:eq(9)").text(),
                    "HeadID": $(tr).find("td:eq(10)").text(),
                    // "FirstName": $(tr).find("td:eq(14)").text()

                };
                table_data.push(sub);
            }

        });
        // use ajax to insert the data to database with pop up
        swal({
                title: 'Save Record To DataBase???',
                text: 'Press "Yes" to proceed',
                type: '',
                showLoaderOnConfirm: true,
                showCancelButton: true,
                confirmButtonText: 'Yes',
                closeOnConfirm: false
            },
            function() {
                var data = {
                    'data_table': table_data
                };
                $.ajax({
                    data: data,
                    type: 'POST',
                    url: '<?php echo base_url("user/family_informationSave");?>',
                    crossOrigin: false,
                    dataType: 'json',
                    success: function(result) {
                        // console.log(result.check);
                        if (result.status == "success") {
                            swal('Successfully Saved.', '', 'success');
                            // $('#data-table').reset();
                            location.reload();
                        } else {
                            swal('Data Not Saved.', '', 'warning');
                            location.reload();
                        }
                    }

                });
            });
    });
});

// For profession
$('#JobStatus').on('change', function() {
    //alert('WORKing....')
    var JobID = $('#JobStatus').val();
    var JobTitleID = $(this).val();
    $('#Profession').prop('disabled', false);

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
            $('#Profession').html(data);
        },
        error: function() {
            //alert("Error Loading profession....");
            $('#Profession').prop('disabled', true);
        }
    });
});
// Form Ajax Main Function
$('#tabledata').dataTable();
alert('hi');

// Popup
function popup() {
    alert("Please Fill Step wise");
}
</script>

<script src="<?=base_url()?>public/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?=base_url()?>public/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js"></script>