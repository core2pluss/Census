<?php
$con=mysqli_connect("localhost", "root", "", "cences_db");?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title> Edit details </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        $('#id').keyup(function() {
            var id = $(this).val();
            //alert(sid);
            var data_String = 'id=' + id;
            $.get('search.php', data_String, function(result) {

                $.each(result, function() {
                    $('#id').val(this.id);
                    $('#name').val(this.name);
                    $('#course').val(this.course);
                    $('#mobile').val(this.mobile);
                    $('#pincode').val(this.pincode);
                    $('#country').val(this.country);
                    $('#email').val(this.email);
                });


            });
        });
    });

    //Ajax For Division

    $(document).ready(function() {
        $('#province').on("change", function() {
            var pid = $(this).val();
            //alert(sid);
            var data_String = 'pid=' + pid;
            $.get('search.php', data_String, function(result) {
                $('#division').html('<option>-Select-</option>');
                $('#district').html('<option>-Select-</option>');
                $('#tehsil').html('<option>-Select-</option>');
                $.each(result, function() {

                    $('#division').append($('<option>', {
                        value: this.DivisionID,
                        text: this.DivisionName
                    }));
                    //alert(this.DivisionName);
                });


            });
        });
    });

    //Ajax for District

    $(document).ready(function() {
        $('#division').on("change", function() {
            var proid = $("#province").val();
            var did = $(this).val();
            //alert(sid);
            var data_String = 'did=' + did + '&proid=' + proid;
            $.get('search.php', data_String, function(result) {
                $('#district').html('<option>-Select-</option>');
                $('#tehsil').html('<option>-Select-</option>');
                $.each(result, function() {

                    $('#district').append($('<option>', {
                        value: this.DistrictID,
                        text: this.DistrictName
                    }));
                    //alert(this.DivisionName);
                });


            });
        });
    });

    //Ajax for Tehsil

    $(document).ready(function() {
        $('#district').on("change", function() {
            var prid = $("#province").val();
            var dvid = $("#division").val();
            var disid = $(this).val();
            //alert(sid);
            var data_String = 'disid=' + disid + '&prid=' + prid + '&dvid=' + dvid;
            $.get('search.php', data_String, function(result) {
                $('#tehsil').html('<option>-Select-</option>');
                $.each(result, function() {

                    $('#tehsil').append($('<option>', {
                        value: this.TehsilID,
                        text: this.TehsilName
                    }));
                    //alert(this.DivisionName);
                });


            });
        });
    });

    //Ajax for CNIC
    $(document).ready(function() {
        $('#cnic').keyup(function() {
            var cnic = $(this).val();
            var newCnic = cnic.split("");
            //alert(sid);

        });
    });

    //Test

    $(document).ready(function() {
        $('#cnic').keyup(function() {
            var cnic = $(this).val();
            var newCnic = cnic.split("");
            //alert(sid);
            var prid = newCnic[0];
            var divisionid = newCnic[1];
            var districtid = newCnic[2];
            var tehsilid = newCnic[3];
            var data_String;
            // alert(divisionID);
            if (divisionid == undefined && districtid == undefined && tehsilid == undefined) {

                data_String = 'prid=' + prid;
                $.get('search.php', data_String, function(result) {
                    $('#province').html('<option id="provinceo"></option>');
                    $('#division').html('<option>-Select-</option>');
                    $('#district').html('<option>-Select-</option>');
                    $('#tehsil').html('<option>-Select-</option>');
                    //$('#provinceo').hide();
                    //$('pp').empty();
                    $.each(result, function() {

                        $('#province').append($('<option>', {
                            value: this.ProvID,
                            text: this.ProvName
                        }));

                        //alert(this.ProvName);


                    });


                });
            } else if (districtid == undefined && tehsilid == undefined) {
                var data_String = 'divisionid=' + divisionid + '&prid=' + prid;
                //'divisionID=' + divisionID + '&

                $.get('search.php', data_String, function(result) {
                    // alert(data_String);

                    $('#division').html('<option>-Select-</option>');
                    $('#district').html('<option>-Select-</option>');
                    $('#tehsil').html('<option>-Select-</option>');

                    $.each(result, function() {

                        $('#division').append($('<option>', {
                            value: this.DivisionID,
                            text: this.DivisionName
                        }));
                        alert(this.ProvName);

                        //alert(this.ProvName);
                    });


                });
            }
            //alert(data_String);


        });

    });
    </script>
</head>

<body> <br><br><br>
    <div class="row">
        <div class="col-md-4 col-md-offset-3">
            <form class="form-horizontal" role="form" method="post" action="">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Edit Details...</legend>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">CNIC</label>
                        <div class="col-sm-10">
                            <input type="text" id="cnic" name="cnic" placeholder="CNIC" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">Province</label>
                        <div class="col-sm-10">
                            <select class="form-control form-control-sm" id="province">
                                <option id="provinceo">-Select-</option>
                                <!-- <?php
                                        $qry = "SELECT * FROM provance";
                                        $result = mysqli_query($con, $qry);
                                        while ($row = mysqli_fetch_array($result)) {
                                          
                                          ?>
                                          <option value="<?php echo $row["ProvID"]?>"><?php echo $row["ProvName"];?></option>
                                          <?php

                                        }
                                          ?> -->
                            </select>


                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">Division</label>
                        <div class="col-sm-10">
                            <select class="form-control form-control-sm" id="division">
                                <option>-Select-</option>

                            </select>




                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">District</label>
                        <div class="col-sm-10">
                            <select class="form-control form-control-sm" id="district">
                                <option>-Select-</option>

                            </select>




                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">Tehsil</label>
                        <div class="col-sm-10">
                            <select class="form-control form-control-sm" id="tehsil">
                                <option>-Select-</option>

                            </select>




                        </div>
                    </div>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">Name</label>
                        <div class="col-sm-10">
                            <input type="text" id="name" name="name" placeholder="Name" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">Course</label>
                        <div class="col-sm-10">
                            <input type="text" id="course" name="course" placeholder="Course" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">Mobile</label>
                        <div class="col-sm-4">
                            <input type="text" id="mobile" name="mobile" placeholder="Mobile Number"
                                class="form-control">
                        </div>

                        <!-- Text input-->
                        <label class="col-sm-2 control-label" for="textinput">Postcode</label>
                        <div class="col-sm-4">
                            <input type="text" id="pincode" name="pincode" placeholder="Pin Code" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">Country</label>
                        <div class="col-sm-10">
                            <input type="text" id="country" name="country" placeholder="Country" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="textinput">Email</label>
                        <div class="col-sm-10">
                            <input type="text" id="email" name="email" placeholder="Email" class="form-control">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-10">
                            <div class="pull-right">
                                <button type="submit" class="btn btn-default">Cancel</button>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div><!-- /.col-lg-12 -->
    </div><!-- /.row -->
</body>

</html>