 <style>
.new {
    border: 5px groove;
}
.button{
    margin-bottom: 4%
}
.select{
    margin-bottom: 4%
}
.label{
    font-size: 1em;
    text-align:center;
    color: #000;
}
.img{
    width:100px;
}
.heading1{
    text-align: center;
    font-size: 30px;
    font-weight: bold;
}
.heading4{
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
            <img src="<?php echo base_url()."assets/images/"; ?>logo1.png" class="img-responsive center-block img" alt="header-logo"> <br> 
            <h1 class="heading1">Pakistan Kaim Khani Welfare Trust</h1>
            <h4 class="heading4">Family Head Reports By ID</h4>
        </div>
        <form method="post" action="<?php echo base_url()."user/Family_Head_Reports_by_range_pdf_report"; ?>" target="_blank">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-4 col-sm-offset-4 col-xs-offset-4 new">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div>
                        <br>
                        <label class="label">From:</label>
                            <select name="start" class="btn btn-default btn-block col-md-12 col-sm-12 col-xs-12 select" required>
                                <option value="">Please Select</option>
                                <?php foreach ($data as $datas) { ?>
                                <option value="<?php echo $datas->ID; ?>"><?php echo $datas->ID; ?></option>
                                <?php } ?>
                            </select>
                        </div>

                        <div>
                        <label class="label">To:</label>
                            <select name="end" class="btn btn-block btn-default select" required>
                                <option name="myText" id="myText">Please Select</option>
                                <?php foreach ($data as $data) { ?>
                                <option value="<?php echo $data->ID; ?>"><?php echo $data->ID; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <input type="submit" value="Show Report" class="btn btn-primary col-md-6 col-sm-6 col-xs-12  col-md-offset-3 col-sm-offset-3 col-xs-offset-3 button">
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>

<?php $this->load->view('includes/footer'); ?>
