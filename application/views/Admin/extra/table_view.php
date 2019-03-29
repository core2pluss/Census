<!DOCTYPE html>
<html>
<head>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
    <script type="text/javascript">
        $(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
<style type="text/css">
    div#myTable_wrapper {
    margin-top: 5%;
    margin-left: 2%;
    /* padding-top: 4%; */
    background-color: #ecf0f5;
    padding-left: 15%;
     
        width: 99.8%;
}
.wrapper {
      background-color: #ecf0f5 !important;
}#myTable{
    width: 95%;
}
.col-sm-12 {
    margin: auto 0px;
    margin-left: -50px;
}
</style>
</head>
<body>
    <h3 class="box-title">Head Of Family</h3>
 <table id="myTable" class="display">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Cnic</th>
            <th>Father Name</th>
            <th>Prov</th>
            <th>City</th>
            <th>Main Area</th>
            <th>Address</th>
          <!--   <th>Status</th> -->
           <!--  <th class="text-center" style="color:#000">Actions</th> -->
        </tr>
    </thead>
        <tbody>
                    <?php
           
                        foreach($headoffamily as $record)
                        {
                    ?>
                    <tr>
                         <td ><?php echo $record ->ID?></a></td>
                        <td ><?php echo $record ->FirstName?></a></td>
                        <td ><?php echo $record->HFCNIC ?></td>
                        <td ><?php echo $record->FatherFirstName ?></td>
                        <td ><?php echo $record->Prov ?></td>
                        <td ><?php echo $record->CityDivision ?></td>
                        <td><?php echo $record->MainArea ?></td>
                         <td><?php echo $record->Address1 ?></td>
                               <!-- <?php
                if ($record->FormStatusFlag==1)
                    {
                    ?>
                     <td readonly><a  class="btn btn-sm btn-success button1" href="<?php echo base_url('User/familyEdit') ?>?id=<?php echo $record->ID ?>"  ><i class="">Basic Info Completed</i></a>
                      </td>
                    <?php
                    }
                else
                    {  
                    ?>
                   <td><a class="btn btn-sm btn-warning  button1" id="statusBtn"  name="statusBtn" href="<?php echo base_url('User/info2')?>?id=<?php echo $record->ID ?>" title="status"><i class="">Basic Info Missing</i></a>
                   </td>
                    <?php
                    } ?> -->
                 <!-- <td class="text-center">              
                <a class="btn btn-sm btn-primary button2" href="<?php echo base_url()."user/pdf_report2"; ?>?id=<?php echo $record->ID ?>" title="View"><i class="fa fa-eye"></i></a>
                <a class="btn btn-sm btn-info button2" href="#" title="Update"><i class="fa fa-pencil"></i></a>
               </td> -->

                    </tr>

            <?php

                    }
             
            
        ?>
                </tbody>
 
    </table>

    <?php $this->load->view('includes/footer'); ?>
</body>
</html>