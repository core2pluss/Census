
<!DOCTYPE html>
<html>

<head>
    <title></title>
    <style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 2px;
}
@page { size: a4 potrait; }
#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 0px;
  text-align: left;
  background-color:#f2f2f2;
  color: black;
  vertical-align: top;
}


li {
    display: block;
    font-size: 10px;
    width: auto;
}
ul{
  padding: 0;
}

td{
  font-size:18px;
}

th{
   font-size:18px;
}
.testting{
  width: 12px;
  height: 15px;
border: 1px solid black;
}

th.row{font-weight: 400 !important;}

tr,th,td,table{border : 1px solid #1C2833 !important;}

</style>


       
</head>






<body>



<section class="container-fliud"  style="margin-top:29px; ">
<?php

foreach ($result as $k=>$v) {

    ?>  


    <div class="row" style="margin-top:0px;">
        <div class="col-sm-12" style="margin-top:-0px;">
         
    
 <div class="row" style="background-color:;height:100px; 
 margin-top:0px; color:#fff; 
 width: 101% !important;display: inline-block;">
 <span style=""> 
<!--   <div>
 <img src="<?php base_url(); ?>assets/images/logo.png" style=" display: inline; float: right; padding-top: 10px">
</div> -->
 <div style="margin-top: -25px;"> 
<h3 style="text-align: center;  vertical-align: top; padding-top: 15px  !important; font-size: 20px; color:#000; font-weight: bold;">Pakistan Kaim Khani Welfare Trust</h3>
<h3 style="text-align: center;  vertical-align: top; padding-top:-20px  !important; font-size: 15px; color:#000; font-weight: bold;">Family Registration Form</h3>
<h3 style="text-align: center;  vertical-align: top; padding-top:-20px  !important; font-size: 15px; color:#000; font-weight: bold;">Chapter  <?php echo $v->CityDivision; ?>  <br>
<?php echo $v->MainArea; ?>  
</h3>
</div>
<!-- <?php //echo "<h1 style='color:#000;'>". $v->ID . "</h1>"; ?> -->



</div>
</span>

 <div class="col-sm-12" style="color:#000; font-size:15px; margin-left:1%; 
 padding-bottom: 10px !important;"> 

                      
                     <?php echo "Family Head:" ; ?> 
                     <?php echo "<b>".$v->FirstName."</b>"; ?>
                     <?php echo "[Family Head ID:" ; ?> 
                     <?php echo $v->ID. "]"; ?>  <br>
                     <?php echo "Contact No:[" ; ?> 
                     <?php echo $v->MobileNo. "]"; ?>  <br>


                     <?php echo "Address:" ; ?>  
                     <?php echo   $v->Address1 ; ?>
                     <?php echo "[CNIC:" ; ?>


                     <?php

                     if(empty($v->HFCNIC))
                     {
                      echo "-----/-------/-]";
                     }
                     else{ 
                      echo   $v->HFCNIC . "]";
                    } 
                    ?>
                     <br>
</div>
 

               

           </div>
            <br>
              <table id="customers" style=" margin-top:-20px; display:table;">

                <thead style="color:black;font-size:12px;"  style="margin-top:0px; display:table;">

           <tr>
      <th scope="col" style="">#</th>
      <th scope="col" style="width: 120px; font-size: 12px; margin-top:-20;text-align: center;">
        Family Members

</br>
<p style="font-size: 10px; text-align:left;"></p>
      </th>
      <th scope="col" style=" text-align:center; font-size: 12px; width:30px; height: auto !important; display: table-cell;">Relationship
 </br>


 <!-- <p style="font-size: 8px; height: 50px; !important; padding: 0 !important; background-color: red;"> -->
<ul style="margin-top:8px; width: 90px;text-align:left;" >
  <li>1-Famly Head</li> 
  <li>2-Wife</li>
  <li>3-Son/Daughter</li>
  <li>4-SonInLaw/DILaw</li>
  <li>5-Gson/Gdau..r</li>
  <li>6-Mother/Father</li>
  <li>7-Sister/Brother</li>
  </ul>
<!-- </p> -->

      </th>
      <th scope="col" style="text-align:center; width:50px; font-size: 12px;">Gender
</br>
<ul style="margin-top:8px; width: 50px;text-align:left;">
  
  <li>1-Male</li>
  <li>2-Female</li>

</ul>


      </th>
      <th scope="col" style="text-align:center; width:50px; font-size: 12px;">DOB 
</br>  

      </th>
    <th scope="col" style="width: 52px; font-size: 12px; text-align:center;">Marital Status
 <ul style="margin-top:10px; text-align:left;">
  <li>1-Married</li> 
  <li>2-Single</li>
  <li>3-Widow</li>
  <li>4-Divorced</li>
 
 
  </ul>
    </th>
   
      <th scope="col" style=" width:70px;text-align:center; font-size: 12px; ">Education
 <ul style="margin-top:10px; text-align:left;">
  <li>1-Uneducated</li> 
  <li>2-Primary</li>
  <li>3-Middle</li>
  <li>4-Matric</li>
  <li>5-Inter</li>
  <li>6-Graduate</li>
  <li>7-Masters</li>
  </ul>
      </th>
      <th scope="col" style="font-size: 12px; text-align: center; ">Profession
        <ul style="margin-top:10px; text-align: left;">
  <li>1-Govt job</li> 
  <li>2-Forces</li>
  <li>3-Private job</li>
  <li>4-Business</li>
  <li>5-Others</li>
 
  </ul>
 
  </th>
        <th scope="col" style="width: 70px;font-size: 12px; text-align: center; ">Job Status
        <ul style="margin-top:10px; text-align: left;">
    <li>1-Dr</li>
     <li>2-Engg</li>
      <li>3-Business</li>
       <li>4-Marketing</li>
        <li>5-RealEstate</li>
         <li>6-Consultant</li>
  <li>7-Others</li>
 
  </ul>
 
  </th>
      <th scope="col" style="font-size: 12px; text-align: center;">CNIC</th>
    </tr>
                </thead>
                <tbody style="color:black;font-size:12px; ">

                  
               
    <tr>
      <th scope="row" style="width: 7px !important; 
    height: 10px !important;
    font-size: 18px;
    /*display: inline !important;">1</th>*/
      <td style="font-size:12px;   "><?php echo $v->FirstName; ?> </td>
      <td>  </td>
      <td>  </td>
  <td> 
<!-- <div style="display: flex; flex-wrap:nowrap;  "> 
        <div class="testting" style="margin-left:2px;width:15px;  "></div> 
        <div class="testting" style="margin-left:22px;width:15px;   "></div>  
        <div class="testting" style="margin-left:43px;width:23px;  "></div>
</div> -->
 </td>
 <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td style="font-size:12px; width:100px;"><?php echo $v->HFCNIC; ?>    </td>
    </tr>


  <tr>
      <th scope="row">2</th>
      <td> </td>
      <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
 <td>  </td>

    </tr>
  <tr>
      <th scope="row">3</th>
      <td> </td>
       <td> </td>
       <td>  </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
 <td>  </td>

    </tr>
  <tr>
      <th scope="row">4</th>
      <td> </td>
       <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
    </tr>
   <tr>
      <th scope="row">5</th>
      <td> </td>
       <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
    </tr>
  <tr>
      <th scope="row">6</th>
      <td> </td>
       <td> </td>
       <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
    </tr>
 <tr>
      <th scope="row">7</th>
      <td> </td>
       <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
    </tr>                   
  <tr>
      <th scope="row">8</th>
      <td> </td>
       <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
    </tr>
   <tr>
      <th scope="row">9</th>
      <td> </td>
       <td> </td>
       <td>  </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>
   <tr>
      <th scope="row">10</th>
      <td> </td>
       <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>
   <tr>
      <th scope="row">11</th>
      <td> </td>
       <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>
   <tr>
      <th scope="row">12</th>
      <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>
  <tr>
      <th scope="row">13</th>
      <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
   </tr>
    <tr>
      <th scope="row">14</th>
      <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>
   <tr>
      <th scope="row">15</th>
      <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>
    <tr>
      <th scope="row">16</th>
      <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>
    <tr>
      <th scope="row">17</th>
      <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>
    <tr>
      <th scope="row">18</th>
      <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>
 <tr>
      <th scope="row">19</th>
      <td> </td>
      <td> </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td>
      <td>  </td> 
    </tr>

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


  <?php
}


?>












<!--<hr style="border: 3px solid black; margin-top: -4px;">-->



</body>
</html>
