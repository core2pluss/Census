<?php
    // Build up DB connection including cofiguration file
 
    $conn = mysqli_connect('localhost','root','','cences_db');
    //Assign an empty variable to store the fetched items
    $output = '';
    //SQL query to fetch the phone models belongs to the entered brand to the input field
    $sql = "SELECT * FROM mainarea WHERE DivisionID = '".$_POST["brand_id"]."' ";
    // execution of the query. Output a boolean value
    $res = mysqli_query($conn , $sql);
    //Concatenate fetched items to the output variable with HTML option tags to display
    $output .= '<option value="" disabled selected>Select Location</option>';
    // Check whether there are results or not
    if(mysqli_num_rows($res)>0){
        //Fetch the models into an array belongs to a particular brand name/id
        while ($row = mysqli_fetch_array($res)) {
            //Concatenate further fetched items to the output variable
            $output .= '<option value="'.$row["LocationName"].'">'.$row["LocationName"].'</option>';
        }
    }
    //print the fetched phone models
    echo $output;



?>