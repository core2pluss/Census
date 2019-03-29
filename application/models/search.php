<?php
header('Content-Type: application/json');

// Data from Student

$response = array();
if (isset($_GET['id'])){
//vul hier je database gebuikersnaam en ww in
$con=mysqli_connect("localhost", "root", "", "my_db");
// Check connection
if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$qry = "SELECT * FROM student_table WHERE id = '".$_GET['id']."' ";

$result = mysqli_query($con, $qry);  //mysql_query($qry);

while ($row = mysqli_fetch_array($result, MYSQL_BOTH)) {
    array_push($response, $row);
}

echo json_encode($response);
} 

//Data From division

$response_one = array();
if (isset($_GET['pid'])){
//vul hier je database gebuikersnaam en ww in
$conn=mysqli_connect("localhost", "root", "", "cences_db");
// Check connection
if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$qryy = "SELECT * FROM division WHERE ProvID = '".$_GET['pid']."' ";

$result_one = mysqli_query($conn, $qryy);  //mysql_query($qry);

while ($roww = mysqli_fetch_array($result_one, MYSQL_BOTH)) {
    array_push($response_one, $roww);
}

echo json_encode($response_one);
} 

//Data from District

$response_two = array();
if (isset($_GET['did'])){
//vul hier je database gebuikersnaam en ww in
$connn=mysqli_connect("localhost", "root", "", "cences_db");
// Check connection
if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$qryyy = "SELECT * FROM district WHERE DivisionID = '".$_GET['did']."' AND ProvID = '".$_GET['proid']."'";


$result_two = mysqli_query($connn, $qryyy);  //mysql_query($qry);

while ($rowww = mysqli_fetch_array($result_two, MYSQL_BOTH)) {
    array_push($response_two, $rowww);
}

echo json_encode($response_two);
} 

//Data from Tehsil

$response_three = array();
if (isset($_GET['disid'])){
//vul hier je database gebuikersnaam en ww in
$connnn=mysqli_connect("localhost", "root", "", "cences_db");
// Check connection
if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$qryyyy = "SELECT * FROM tehsil WHERE DistrictID = '".$_GET['disid']."' AND  DivisionID = '".$_GET['dvid']."' AND ProvID = '".$_GET['prid']."'";

$result_three = mysqli_query($connnn, $qryyyy);  //mysql_query($qry);

while ($rowwww = mysqli_fetch_array($result_three, MYSQL_BOTH)) {
    array_push($response_three, $rowwww);
}

echo json_encode($response_three);
} 




//Data from Province cnic


$response_pr = array();
if (isset($_GET['prid'])){
//vul hier je database gebuikersnaam en ww in
$conn_pr=mysqli_connect("localhost", "root", "", "cences_db");
// Check connection
if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$qryy_pr = "SELECT * FROM provance WHERE ProvID = '".$_GET['prid']."' ";

$result_pr = mysqli_query($conn_pr, $qryy_pr);  //mysql_query($qry);

while ($roww_pr = mysqli_fetch_array($result_pr, MYSQL_BOTH)) {
    array_push($response_pr, $roww_pr);
}

echo json_encode($response_pr);
} 

//Data from Division cnic


$response_div = array();
if (isset($_GET['divisionid'])){
//vul hier je database gebuikersnaam en ww in
$conn_div=mysqli_connect("localhost", "root", "", "cences_db");
// Check connection
if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$qryy_div = "SELECT * FROM division WHERE ProvID = '".$_GET['prid']."' AND  DivisionID = '".$_GET['divisionid']."' ";

$result_div = mysqli_query($conn_div, $qryy_div);  //mysql_query($qry);

while ($roww_div = mysqli_fetch_array($result_div, MYSQL_BOTH)) {
    array_push($response_div, $roww_div);
}

echo json_encode($response_div);
} 

?>
