<?php
function get_brand(){
   $conn = mysqli_connect('localhost','root','','census');
    $output = '';
    $sql = "SELECT * FROM division where DivisionID  ORDER BY DivisionID";
    $res = mysqli_query($conn , $sql);
    if(mysqli_num_rows($res)>0){
        while ($row = mysqli_fetch_array($res)) {
        $output .= '<option value="'.$row["DivisionID"].'">'.$row["DivisionName"].'</option>';
        }
    }
  return $output;
  
} ?>
<style>
.new {
    border: 5px groove;
}

.button {
    margin-bottom: 4%
}

.select {
    margin-bottom: 4%
}

.label {
    font-size: 1em;
    text-align: center;
    color: #000;
}s

.img {
    width: 100px;
}

.heading1 {
    text-align: center;
    font-size: 30px;
    font-weight: bold;
}

.heading4 {
    text-align: center;
    font-size: 20px;
    font-weight: bold;
}
</style>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            <i class="fa fa-tachometer"></i> Reports Management
            <small>View Reports</small>
        </h1>
    </section>
    <br> <br>
    <section class="content-header">
        <div>
            <img src="<?php echo base_url()."assets/images/"; ?>logo1.png" class="img-responsive center-block img"
                alt="header-logo"> <br>
            <h1 class="heading1">Pakistan Kaim Khani Welfare Trust</h1>
            <h4 class="heading4">Family Head Reports By Cities</h4>
        </div>
        <form method="post" action="<?php echo base_url()."user/Family_Head_Reports_by_cities_pdf_report"; ?>"
            target="_blank">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-4 col-sm-offset-4 col-xs-offset-4 new">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div>
                            <br>
                            <label class="label">Please Select City</label>
                            <select name="brand" id="brand"
                                class="btn btn-default btn-block col-md-12 col-sm-12 col-xs-12 select" required>
                                <option value="">Select City</option>
                                <?php echo get_brand(); ?>
                            </select>
                        </div>
                        <div>
                            <label class="label">Please Select Area</label>
                            <select name="item" id="item" class="btn btn-block btn-default select" required>
                                <option name="myText" id="myText">Select Main Area</option>
                            </select>
                        </div>
                        <input type="submit" value="Show Report"
                            class="btn btn-primary col-md-6 col-sm-6 col-xs-12  col-md-offset-3 col-sm-offset-3 col-xs-offset-3 button">
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>
<?php echo base_url();?>

<script type="text/javascript">
$(document).ready(function() {
    $('#brand').change(function() {
        var brand_id = $(this).val();
        $.ajax({
            url: "../application/views/Main_Area.php",
            method: "POST",
            data: {
                brand_id: brand_id
            },
            success: function(data) {
                console.log(data);
                $('#item').html(data);
            }
        });
    });
});
</script>