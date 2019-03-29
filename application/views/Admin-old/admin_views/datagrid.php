
<link rel="stylesheet" href="<?=base_url()?>public/plugins/datatables/dataTables.bootstrap.css">
<script>
$(function()
    {
        $(window).on("load", function () {
            $('#example2').DataTable()
            $('#example1').DataTable({
                "processing": true,
                // "serverSide": true,
                "ajax": {
                "url": "<?php echo base_url("user/datagridfx") ?>",
                "dataSrc":function(data){
                    for (var i = data.length - 1; i >= 0; i--) {
                      data[i][0] = '<td>'+data[i]['ID']+'</td>';
                      data[i][1] = '<td>'+data[i]['FirstName']+'</td>';
                      data[i][2] = '<td>'+data[i]['HFCNIC']+'</td>';
                      data[i][3] = '<td>'+data[i]['FatherFirstName']+'</td>';
                      data[i][4] = '<td>'+data[i]['Address1']+'</td>';
                      data[i][5] = '<td>'+data[i]['MainArea']+'</td>';
                      data[i][6] = '<td>'+data[1]['URL']+'</td>';
                      data[i][7] = '<td>'+data[i]['FormStatusFlag']+'</td>';
                    }
                    return data;
                  }
                },
                  "paging": true,
                  "lengthChange": true,
                  "searching": true,
                  "ordering": true,
                  "info": true,
                  "autoWidth": true
            });
        });

    });
</script>
<div class="content-wrapper">
     <section class="row-body">
      <h1>
        Data Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="container">
        <div class="col-xs-12">
          <div class="row">
              <!-- /.box-header -->
              <div class="col-xs-12 " style="padding:0; height:100%; margin-top:0;">
                  <div class="box" >
                      <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#home">Head Of Family</a></li>
                        <li><a data-toggle="tab" href="#menu1">Add Head Of Family</a></li>
                      </ul>
                      <div class="tab-content">
                        <div id="home" class="box-body main tab-pane fade in active">
                          <div class="box-header" style="padding: 10px;">
                          <h3 class="box-title" style="margin-top:7px;margin-left: 4px;">All Family Heads</h3>
                          <a class="btn btn-primary pull-right" href="<?php echo base_url()?>personal_info_create"><i class="fa fa-plus" style="margin: 0px;"></i>Add New</a>
                          </div>
                              <table id="example1" class="table table-bordered table-striped table-hover">
                                  <thead>
                                      <tr>
                                          <th>ID</th>
                                          <th>Head Of Family</th>
                                          <th>CNIC</th>
                                          <th>Father Name</th>
                                          <th>Address</th>
                                          <th>Main Area</th>
                                          <th>Status</th>
                                          <th class="text-center" style="color:#000">Actions</th>
                                      </tr>
                                  </thead>
                                  <!--   <tbody>
                                 </tfoot> -->
                              </table>
                          </div>
                          <div id="menu1" class="box-body main tab-pane fade">
                            <div class="box-header">
                                <h3 class="box-title">New Family Heads</h3>
                            </div>
                              <table class="table table-bordered table-striped table-hover" id="example2">
                                  <thead>
                                      <tr>
                                          <th>Head ID</th>
                                          <th>Family ID</th>
                                          <th>Head Name</th>
                                          <th>CNIC</th>
                                          <th>Age</th>
                                          <th>Family Head CNIC</th>
                                          <th class="text-center" style="color:#000;width:15%">Actions</th>
                                      </tr>
                                  </thead>
                                  <tbody>
                                      <?php if(($childData)) { foreach($childData as $records) { ?>
                                      <tr>
                                          <td><?php echo $records->HeadID?></td>
                                          <td><?php echo $records->FamilyID?></td>
                                          <td><?php echo $records->MemberName ?></td>
                                          <td><?php echo $records->MemberCNIC ?></td>
                                          <td><?php echo $records->Age?></td>
                                          <td><?php echo $records->HFCNIC?></td>
                                          <td align="center"><a class="btn btn-sm btn-success button1"
                                                  href="<?php echo base_url('User/update_head_of_famaly')?>?id=<?php echo $records->FamilyID ?>"><i
                                                      class="fa fa-plus">Add New Head </i></a>
                                          </td>
                                      </tr>
                                      <?php } } ?>
                                  </tbody>
                              </table>
                          </div>
                          <!-- /.box-body -->
                      </div>
                  </div>
                  <!-- /.box -->
              </div>
              <!-- /.col -->
          </div>
        </div>
        <!-- /.row -->
    </section>
</div>

<script src="<?=base_url()?>public/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?=base_url()?>public/plugins/datatables/dataTables.bootstrap.min.js"></script>