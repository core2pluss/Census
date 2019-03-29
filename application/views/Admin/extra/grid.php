
<div class="content-wrapper">
    <div class="row">
        <div class="col-sm-3 col-md-3 col-lg-3" style="display: inline-flex;">
            <a href="<?php echo base_url('User/index'); ?>"><button class="btn btn-success " style="min-width: 40%;" name="button">Previous</button></a>
            <a href="<?php echo base_url('User/info'); ?>"><button class="btn btn-primary " style="min-width: 40%;" name="button">Next</button></a>
        </div>
        <hr>
        <div id="wizard" class="form_wizard wizard_horizontal col-sm-12 col-md-12 col-xs-12" style="height:auto">
            <!-- --------------------------------Main--------------------------- -->
            <div id="wizard" class="form_wizard wizard_horizontal">
                <ul class="wizard_steps">
                    <li>
                        <a href="">
                            <span class="step_no">1</span>
                            <span class="step_descr">Step 1<br /><small></small></span>
                        </a>
                    </li>
                    <li>
                        <a href="#step-2" onclick="popup()">
                            <span class="step_no" style="background-color: silver;">2</span>
                            <span class="step_descr"> Step 2<br /><small></small></span>
                        </a>
                    </li>
                    <li>
                        <a href="#step-3" onclick="popup()">
                            <span class="step_no" style="background-color: silver;">3</span>
                            <span class="step_descr">Step 3<br /><small></small></span>
                        </a>
                    </li>
                    <li>
                        <a href="#step-4" onclick="popup()">
                            <span class="step_no" style="background-color: silver;">4</span>
                            <span class="step_descr">Step 4<br /><small></small></span>
                        </a>
                    </li>
                    <li>
                        <a href="#step-5" onclick="popup()">
                            <span class="step_no" style="background-color: silver;">5</span>
                            <span class="step_descr">Step 5<br /><small></small></span>
                        </a>
                    </li>
                    <li>
                        <a href="#step-7" onclick="popup()">
                            <span class="step_no" style="background-color: silver;">6</span>
                            <span class="step_descr">Step 6<br /><small></small></span>
                        </a>
                    </li>
                    <li>
                        <a href="#step-8" onclick="popup()">
                            <span class="step_no" style="background-color: silver;">7</span>
                            <span class="step_descr">Step 7<br /><small></small></span>
                        </a>
                    </li>
                    <li>
                        <a href="#step-9" onclick="popup()">
                            <span class="step_no" style="background-color: silver;">8</span>
                            <span class="step_descr">Step 8<br /><small></small></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="row">
        <section class="content sectionwidth">
            <div class="row">
                <div class="col-xs-12 text-right">
                    <div class="form-group">
                        <a class="btn btn-primary" href="<?php echo base_url().'info'?>"><i class="fa fa-plus"></i>Add New</a>
                        <!-- <a class="btn btn-primary" href="#"><i class="fa fa-pie-chart"></i> Data And Records</a> -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                          <h3 class="box-title">Data Table With Full Features</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                          <table id="ddt-test" class="table table-bordered table-striped display">
                                <thead>
                                    <tr>
                                         <th width="5%">ID</th>
                                        <th width="20%">Head Of Family</th>
                                        <th width="10%">CNIC</th>
                                        <th width="20%">Father Name</th>
                                        <th width="20%">Address</th>
                                        <th width="10%">Main Area</th>
                                        <th width="15%">Status</th>
                                        <th width="5%" class="text-center" style="color:#000">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php

                                    if(!empty($headoffamily["modeldata"]))
                                    {
                                        foreach($headoffamily["modeldata"] as $record)
                                        {
                                    ?>
                                        <tr>
                                            <td>
                                                <a href="<?php echo base_url().'family'?>"><?php echo $record ->ID ?></a>
                                            </td>
                                            <td id="empty" ><a
                                                    href="<?php echo base_url().'family'?>"><?php echo $record ->FirstName?></a>
                                            </td>
                                            <td id="empty1"><?php echo $record->HFCNIC ?></td>
                                            <td id="empty2"><?php echo $record->FatherFirstName ?></td>
                                            <td><?php echo $record->Address1 ?></td>
                                            <td><?php echo $record->MainArea ?></td>
                                            <td readonly><a class="btn btn-sm <?php echo  $headoffamily["flag"][$record->ID]['URL']['style_btn']; ?>" href="<?php echo  $headoffamily["flag"][$record->ID]['URL']['path_click']; ?>?id=<?php echo $record->ID ?>"><i class=""><?php echo $headoffamily["flag"][$record->ID]["URL"]["text_show"]; ?></i></a>
                                            <td class="text-center">
                                                <a class="btn btn-sm btn-primary button2" href="<?php echo base_url()?>" title="View"><i class="fa fa-eye"></i></a>
                                                <a class="btn btn-sm btn-info button2" href="#" title="Update"><i class="fa fa-pencil"></i></a>
                                            </td>
                                        </tr>
                                        <?php
                                            }
                                        }
                                    ?>
                                 
                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                      <!-- /.box -->
                </div>
                    <!-- /.col -->
            </div>
                  <!-- /.row -->
        </section>
    </div>
</div>
