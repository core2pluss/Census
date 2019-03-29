<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?=isset($title);?></title>
    <link rel="shortcut icon" href="<?php echo base_url(); ?>public/dist/img/favicon.jpg">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link rel="stylesheet" href="<?= base_url() ?>public/bootstrap/css/bootstrap.min.css">
          <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url() ?>public/dist/css/AdminLTE.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>public/dist/css/style.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins. -->
    <link rel="stylesheet" href="<?= base_url() ?>public/dist/css/skins/skin-blue.min.css">
    <!-- jQuery 2.2.3 -->
    <script src="<?= base_url() ?>public/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <script type="text/javascript">
    var baseURL = "<?php echo base_url(); ?>";
    </script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a href="<?= base_url('admin');?>" class="logo">
              <!-- mini logo for sidebar mini 50x50 pixels -->
              <span class="logo-mini"><b>Census</b></span>
              <!-- logo for regular state and mobile devices -->
              <span class="logo-lg"><b>Census</b></span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
              <!-- Sidebar toggle button-->
              <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
              </a>

              <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                  <!-- User Account: style can be found in dropdown.less -->
                  <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <img src="<?php echo base_url(); ?>public/dist/img/avatar.png" class="user-image" alt="User Image">
                      <span class="hidden-xs"><?= ucwords($this->session->userdata('name')); ?></span>
                    </a>
                    <ul class="dropdown-menu">
                      <!-- User image -->
                      <li class="user-header">
                        <img src="<?php echo base_url(); ?>public/dist/img/avatar.png" class="img-circle" alt="User Image">
                        <p>
                         <?= ucwords($this->session->userdata('name')); ?>
                        </p>
                      </li>
                      <!-- Menu Footer-->
                      <li class="user-footer">
                        <div class="pull-right">
                          <a href="<?php echo base_url(); ?>logout" class="btn btn-default btn-flat">Sign out</a>
                        </div>
                        <div class="pull-left">
                          <a href="<?= site_url('admin/auth/change_pwd'); ?>" class="btn btn-default btn-flat">Change Password</a>
                        </div>
                      </li>
                    </ul>
                  </li>
                  <!-- Control Sidebar Toggle Button -->
                </ul>
              </div>
            </nav>
        </header>
        <?php 
        $cur_tab = $this->uri->segment(2)==''?'dashboard': $this->uri->segment(2);  
        ?>  
  <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<?= base_url() ?>public/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><?= ucwords($this->session->userdata('name')); ?></p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
                  <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                  </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li id="dashboard" class="treeview">
              <a href="<?php echo base_url(); ?>">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
              </a>
            </li>
          </ul>
          <ul class="sidebar-menu">
            
           <!--  <li id="forms" class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i> <span>Forms</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li id="general"><a href="<?= base_url('adminlte/general_form'); ?>"><i class="fa fa-circle-o"></i> General Elements</a></li>
                <li id="advanced"><a href="<?= base_url('adminlte/advanced_form'); ?>"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
                <li id="editors"><a href="<?= base_url('adminlte/editors_form'); ?>"><i class="fa fa-circle-o"></i> Editors</a></li>
              </ul>
            </li> -->
            <li id="tables" class="treeview">
                <a href="<?php echo base_url(); ?>"> <i class="fa fa-table"></i> <span>Census Application</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span></a>
                <ul class="treeview-menu">
                    <li><a href="<?php echo base_url(); ?>datagrid"><i class="fa fa-th"></i> Main Data </a></li>
                    <li><a href="<?php echo base_url(); ?>profile"><i class="fa fa-th"></i> User Profile </a></li>
                    <li><a href="<?php echo base_url(); ?>personal_info_create"><i class="fa fa-user"></i> Family Head Information </a></li>
                    <li><a href="<?php echo base_url(); ?>family_informationNew"><i class="fa fa-users"></i> Family Information </a></li>
                    <li><a href="<?php echo base_url(); ?>financial"><i class="fa fa-money"></i> Financial Information </a></li>
                </ul>
            </li>
            <li id="reports" class="treeview">
                <a href="<?php echo base_url(); ?>" data-toggle="dropdown">
                    <i class="fa fa-book"></i> <span>Census Reports</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-down pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?php echo base_url(); ?>Family_Head_Reports_by_range"><i class="fa fa-flag-o"></i>Family By Head Id</a></li>
                    <li><a href="<?php echo base_url(); ?>Family_Head_Reports_by_province"><i class="fa fa-flag-o"></i> Report By Province </a></li>
                    <li><a href="<?php echo base_url(); ?>Family_Head_Reports_by_cities"><i class="fa fa-flag-o"></i> Report By Cities </a></li>
                    <li><a href="<?php echo base_url(); ?>Head_child_filter_tree"><i class="fa fa-sitemap"></i> Tree Report </a></li>
                </ul>
            </li>
            <li id="users" class="treeview">
                <a href="#">
                  <i class="fa fa-dashboard"></i> <span>Users</span>
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                <ul class="treeview-menu">
                  <li id="add_user"><a href="<?= base_url('admin/users/add'); ?>"><i class="fa fa-circle-o"></i> Add User</a></li>
                  <li id="view_users" class=""><a href="<?= base_url('admin/users'); ?>"><i class="fa fa-circle-o"></i> View Users</a></li>
                </ul>
            </li>
            <!-- <li id="calender">
              <a href="<?= base_url('adminlte/calendar'); ?>">
                <i class="fa fa-calendar"></i> <span>Calendar</span>
                <span class="pull-right-container">
                  <small class="label pull-right bg-red">3</small>
                  <small class="label pull-right bg-blue">17</small>
                </span>
              </a>
            </li> -->
           
            
          </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
<script>
  $("#<?= $cur_tab; ?>").addClass('active');
</script>