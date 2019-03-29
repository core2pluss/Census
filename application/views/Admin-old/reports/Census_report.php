
    <style>
    #customers {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    #customers td,
    #customers th {
        border: 1px solid #ddd;
        padding: 8px;
    }

    #customers tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    #customers tr:hover {
        background-color: #ddd;
    }

    #customers th {
        padding-top: 2;
        padding-bottom: 12px;
        text-align: left;
        background-color: #f2f2f2;
        color: black;
    }

    td {
        font-size: 12px;
    }

    th {
        font-size: 12px;
    }
    </style>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">

                <div class="row" style="background-color:  #C0C0C0;height:150px;">
                    <!-- <img src="<?php base_url(); ?>assets/images/ARTT_BS.jpg" style="height: 60px; width: 180px; margin-top: 1%; margin-left:2%;"> -->
                    <section class="content-header">

                        <?php date_default_timezone_set("Asia/Karachi"); ?>
                        <p style="color:white;text-align:right;line-height:10px;font-weight:bold;
    margin-right:3%; padding-top:0%; font-size:15px;color:black;">Time : <?= date("h:i:sa"); ?> date :
                            <?= date('d-m-Y'); ?></p>

                        <h1 style="text-align: center;">
                            Census

                        </h1>
                        <h3 style="text-align: center;">
                            Census Report

                        </h3>

                    </section>
                </div>
                <br>
                <table id="customers">

                    <thead style="color:black;font-size:12px;">

                        <tr>
                            <th>Provance ID</th>
                            <th>Division ID</th>
                            <th>District ID</th>
                            <th>Check Box</th>
                        </tr>
                    </thead>
                    <tbody style="color:black;font-size:12px;">
                        <?php 
$i = 1;
foreach ($result as $k ) {

    ?>
                        <tr>

                            <td><?php echo $k['ProvID']; ?></td>
                            <td><?php echo $k['DivisionID']; ?></td>
                            <td><?php echo $k['DistrictID']; ?></td>
                            <!--  <td ><?php echo $k['fname']; ?></td>
  <td ><?php echo $k['fathername']; ?></td>
 <td ><?php echo $k['gender']; ?></td>
 <td ><?php echo $k['phone']; ?></td>
 <td ><?php echo $k['DOJ']; ?></td>
  <td ><?php echo $k['coursename']; ?></td>
    <td ><?php echo $k['voucher_amt']; ?></td>
    <td ><?php echo $k['received_amount']; ?></td>
      <td ><?php echo $k['BAL_AMOUNT']; ?></td>
  <td ><?php echo $k['enrolled_status']; ?></td> -->
                            <td>
                                <div style="height: 25px; width: 25px; border: 1px solid;"></div>
                            </td>

                        </tr>


                        <?php
}


?>




                    </tbody>

                </table>

                <!-- /.box-body -->

            </div>
            <!-- /.box -->


        </div>
        <!-- /.col -->
        </div>
        <!-- /.row -->

    </section>
