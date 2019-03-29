<style type="text/css">

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
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
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
            <h4 class="heading4">Generate Family Tree by select it's ID</h4>
        </div>
        <form method="post" action="<?php echo base_url()."user/Head_child_filter_tree_report"; ?>" target="_blank">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12 col-md-offset-4 col-sm-offset-4 col-xs-offset-4 new">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <br>  
                        <label class="label" >Please Select</label>
                          <select name="start" id="" class="btn btn-default btn-block col-md-12 col-sm-12 col-xs-12 select" required>
                        <option value="">Select</option>
                        <?php
                        foreach ($data as $datas) {
                        ?>
                        <option value="<?php echo $datas->HeadID; ?>"><?php echo $datas->HeadID; ?></option>
                        <?php
                        }
                        ?>
                        </select>
                        <input type="submit" value="Show Report" class="btn btn-primary col-md-6 col-sm-6 col-xs-12  col-md-offset-3 col-sm-offset-3 col-xs-offset-3 button">
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>
<?php $this->load->view('includes/footer'); ?>

<?php if($this->session->flashdata('message_name') !== null)
echo "<p class=\"text-center bg-success text-success\" style=\"padding: 5px;font-size:14px; font-weight: bold;\" >" . $this->session->flashdata('message_name') . "</p>"; ?>
<?php if($this->session->flashdata('msg_to_user') !== null)
echo "<p class=\"text-center bg-success text-success\" style=\"padding: 5px;font-size:14px; font-weight: bold;\" >" . $this->session->flashdata('msg_to_user') . "</p>"; ?>

<script type="text/javascript">
$('#my-element').datepicker([options])
// Access instance of plugin
$('#my-element').data('datepicker')
</script>