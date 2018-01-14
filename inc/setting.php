<?php
    require_once('db.php');


    $ret_settings_query = "SELECT * FROM `settings` WHERE id=1";
    $ret_settings_run = mysqli_query($con, $ret_settings_query);
    if(mysqli_num_rows($ret_settings_run) > 0){
        $row = mysqli_fetch_array($ret_settings_run);

        $blog_title = $row['blog_title'];
        $blog_company = $row['company'];
        $logo=$row['logo'];
        $banner=$row['banner'];

        //echo $blog_title;
    }
 ?>
