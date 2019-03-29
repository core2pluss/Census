 <html>  
 <head>  
   <title><?php echo $title; ?></title>  
      <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>   -->
      <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />   -->
      <!-- <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>   -->
      <!-- <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>             -->
      <!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />   -->
   <style>  
           body  
           {  
                margin:0;  
                padding:0;  
                background-color:#f1f1f1;  
           }  
           .box  
           {  
                width:900px;  
                padding:20px;  
                background-color:#fff;  
                border:1px solid #ccc;  
                border-radius:5px;  
                margin-top:10px;  
           }  
      </style>  
 </head>  
 <body>  
      <div class="container box">  
           <h3 align="center"><?php echo $title; ?></h3><br />  
           <div class="table-responsive">  
                <br />  
                <table id="memListTable"  class="table table-bordered table-striped  display">  
                     <thead>  
                          <tr>  
                               <!-- <th width="10%">ID</th>  
                               <th width="35%">Head of Family</th>  
                               <th width="35%">CNIC</th>  
                               <th width="10%">Father Name</th>  
                               <th width="10%">Address</th>
                               <th width="35%">Main Area</th>  
                               <th width="10%">Status</th>  
                               <th width="10%">Actio</th> -->
                               <th width="10%">ID</th>  
                               <th width="35%">Head of Family</th>  
                               <th width="35%">CNIC</th>  
                               <th width="10%">Father Name</th>  
                               <th width="10%">Address</th>
                               <th width="35%">Main Area</th>  
                               <th width="80%">Status</th>  
                               <th width="10%">Actio</th>
                          </tr>  
                     </thead>  
                    
                </table>  
           </div>  
      </div>  
 </body>  
 </html>  
 <script type="text/javascript" language="javascript" >  
 $(document).ready(function(){
    $('#memListTable').DataTable({
        // Processing indicator
        "processing": true,
        // DataTables server-side processing mode
        "serverSide": true,
        // Initial no order.
        "order": [],
        // Load data from an Ajax source
        "ajax": {
            "url": "<?php echo base_url('crud/grid_getlists/'); ?>",
            "type": "POST",
             "data":{  '<?php echo $this->security->get_csrf_token_name(); ?>' : '<?php echo $this->security->get_csrf_hash(); ?>' }
                       },
        },
        //Set column definition initialisation properties
        "columnDefs": [{ 
            "targets": [0,3,4],
            "orderable": false
        }]
    });
});
</script>
 </script>  