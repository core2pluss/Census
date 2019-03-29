<!DOCTYPE html>
<html>

<head>
    <title></title>
 
 <style type="text/css">
 	/*Now the CSS*/
* {margin: 0; padding: 0;}
.tree{
	font-size: 14px;
	margin-left:20%;
}
.tree ul {
	padding-top: 20px; position: relative;
	
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}
.tree li {
	float: left; text-align: center;
	list-style-type: none;
	position: relative;
	padding: 20px 5px 0 5px;
	
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

/*We will use ::before and ::after to draw the connectors*/

.tree li::before, .tree li::after{
	content: '';
	position: absolute; top: 0; right: 50%;
	border-top: 1px solid #ccc;
	width: 50%; height: 20px;
}
.tree li::after{
	right: auto; left: 50%;
	border-left: 1px solid #ccc;
}

/*We need to remove left-right connectors from elements without 
any siblings*/
.tree li:only-child::after, .tree li:only-child::before {
	display: none;
}

/*Remove space from the top of single children*/
.tree li:only-child{ padding-top: 0;}

/*Remove left connector from first child and 
right connector from last child*/
.tree li:first-child::before, .tree li:last-child::after{
	border: 0 none;
}
/*Adding back the vertical connector to the last nodes*/
.tree li:last-child::before{
	border-right: 1px solid #ccc;
	border-radius: 0 5px 0 0;
	-webkit-border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
}
.tree li:first-child::after{
	border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
}

/*Time to add downward connectors from parents*/
.tree ul ul::before{
	content: '';
	position: absolute; top: 0; left: 50%;
	border-left: 1px solid #ccc;
	width: 0; height: 20px;
}

.tree li a{
	border: 2px solid #ccc;
	padding: 10px 15px;
	text-decoration: none;
	color: #666;
	font-family: arial, verdana, tahoma;
	/*font-size: 11px;*/
	display: inline-block;
	border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}
p{
	font-size:12px;
} 
/*Time for some hover effects*/
/*We will apply the hover effect the the lineage of the element also*/
.tree li a:hover, .tree li a:hover+ul li a {
	background: #c8e4f8; color: #000; border: 1px solid #94a0b4;
	box-shadow: 0px 0px 10px;
}
/*Connector styles on hover*/
.tree li a:hover+ul li::after, 
.tree li a:hover+ul li::before, 
.tree li a:hover+ul::before, 
.tree li a:hover+ul ul::before{
	border-color:  #94a0b4;
}
.colorMenu{
  	position: fixed;
  	bottom: 30px;
  	right:40px;
	border:2px solid #000;
	transition: .5s;
}
.colorMenu:hover{
  	width: 10%;
  	height: 10%;
	transform: scale(1.5);
	box-shadow: 2px 2px 20px;
	}
.maleBox{border:2px groove;background-color:#87CEFA;float:right;font-size:10px }
.femaleBox{border:2px groove;background-color:#FFB6C1;float:right ;font-size:10px}
.parentBox{border:2px groove;background-color: #eeeeee;float:right; font-size:10px}
</style>  
</head>
<body>
<section class="container-fliud"  style="margin-top:20px; ">
	<div class="tree">
	<ul>
			<li>
	<?php

	foreach ($result as $k=>$v) {

	    ?>  
		     
                    
                     
<!--             <p>
                      <?php echo $name; ?>
                      <small><?php echo $role_text; ?></small>
                    </p> -->
			<a style="background-color: #eee" href="#"> <?php echo "<small>Head ID: &nbsp;".$v->ID."</small>"; ?><br><img src="<?php echo base_url(); ?>assets/dist/img/avatar/grandFather1.png" class="img-circle" alt="Parent Image" width="48px"><br><?php  echo $v->FirstName."</big></b><br><small>"; ?>   <?php echo $v->HFCNIC."</small>"; ?>   </a>  
				<ul>
				 <?php
				 foreach ($result_tree as $k=>$v) {
				    ?>
							<li>				 
							 	<ul>
				<?php	
				$Gender = $v->Gender ;
				$MaritalStaus = $v->MaritalStaus ;
				$RelationshipHF = $v->RelationshipHF;
				 if($Gender == 1) {?>
									<li>
										<a style="background-color:#87CEFA;" href="#"><?php echo "<b>".$v->MemberName."</b>"; ?><br>
										<?php if($MaritalStaus == 1) {?> <img src="<?php echo base_url(); ?>assets/dist/img/avatar/boy1.png" class="img-circle" alt="Parent Image" width="48px">
										<p>Single</p>  <?php }  
										  else { ?> <img src="<?php echo base_url(); ?>assets/dist/img/avatar/marriedBoy1.png" class="img-circle" alt="Parent Image" width="48px">
										  <p>Married</p> <?php } ?> 
										</a>
									</li>
				   <?php } else{   ?>
				                    <li>
										<a style="background-color:#FFB6C1;" href="#"><?php echo "<b>".$v->MemberName."</b>"; ?><br><?php if($MaritalStaus == 1) {?> <img src="<?php echo base_url(); ?>assets/dist/img/avatar/marriedGirl1.png" class="img-circle" alt="Parent Image" width="48px">
										<p>Single</p> <?php }  
										  else{   ?> <img src="<?php echo base_url(); ?>assets/dist/img/avatar/girl1.png" class="img-circle" alt="Parent Image" width="48px">
										  <p>Married</p><?php } ?> 
										</a>
									</li>

				       <?php }    ?>

					

								</ul>  
							</li>
				<?php } ?>

				</ul>
			
	  <?php } ?>
</li>
		</ul>

	</div>
</section>
	<div class="colorMenu">
		Male Single:<span class="maleBox">..........</span><br>
		Female:<span class="femaleBox">..........</span><br>
		Family Head:<span class="parentBox">..........</span> 
	</div>
</body>
</html>