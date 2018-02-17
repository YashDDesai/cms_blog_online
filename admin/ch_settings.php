<?php
    require_once('inc/top.php');
    require_once('../inc/setting.php');
    if(!isset($_SESSION['username'])){
        header('Location: login.php');
    }
?>

 <!DOCTYPE html>
 <html>
     <head>
         <meta charset="utf-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1">

         <title>Settings</title>

         <link rel="icon" type="image/png" href="../img/<?php echo $logo; ?>">
         <link rel="stylesheet" href="css/font-awesome.css">
         <link href='https://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
         <link rel="stylesheet" href="css/animated.css">
         <link href="css/bootstrap.min.css" rel="stylesheet">
         <link rel="stylesheet" href="css/style.css">
     </head>
     <body>
         <?php require_once('inc/header.php'); ?>
         <div class="container text-center">
             <form class="" action="" method="post" enctype="multipart/form-data">

                 <h2 class="form-signin-heading">Settings</h2>

                 <input type="text" id="blog-title" name="blog-title" class="form-control" placeholder="Blog Title" required autofocus value="<?php echo $blog_title; ?>"><br>
                 <input type="text" id="blog-company" name="blog-company" class="form-control" placeholder="Company / Organization" value="<?php echo $blog_company; ?>"><br>
                 <input type="text" id="blog-tag" name="blog-tag" class="form-control" placeholder="Tagline" value="<?php echo $blog_tagline; ?>">

                 <hr>

                 <div class="text-left">
                     <label for="fav-img">Logo</label>
                     <input id="fav-img" type="file" name="fav-img"><br>
                     <img src="../img/<?php echo $logo; ?>" height="100px" width="100px"><br>
                     <label for="banner-img">Banner</label>
                     <input id="banner-img" type="file" name="banner-img"><br>
                     <img src="../img/<?php echo $banner; ?>"  height="180px" width="320px"><br><br>
                 </div>

                 <input type="submit" name="change" value="Change" class="btn-primary btn-lg btn-block">
             </form>
         </div>
     </body>
 </html>

 <?php
  if(isset($_POST['change']))
 {
    $id=1;
    $blog_title=$_POST['blog-title'];
    $blog_company=$_POST['blog-company'];
    $blog_tag=$_POST['blog-tag'];
    if(($_FILES['fav-img']['name'])==null && ($_FILES['banner-img']['name'])==null)
    {
        $blog_logo = $logo;
        $logo_tmp = $logo;
        $blog_banner = $banner;
        $banner_tmp = $banner;
    }
    elseif(($_FILES['fav-img']['name'])==null)
    {
        $blog_logo = $logo;
        $logo_tmp = $logo;
        $blog_banner = $_FILES['banner-img']['name'];
        $banner_tmp = $_FILES['banner-img']['tmp_name'];
    }
    elseif(($_FILES['banner-img']['name'])==null)
    {
        $blog_logo = $_FILES['fav-img']['name'];
        $logo_tmp = $_FILES['fav-img']['name'];
        $blog_banner = $banner;
        $banner_tmp = $banner;
    }
    else
    {
        $blog_logo = $_FILES['fav-img']['name'];
        $logo_tmp = $_FILES['fav-img']['name'];
        $blog_banner = $_FILES['banner-img']['name'];
        $banner_tmp = $_FILES['banner-img']['tmp_name'];
    }
     $setting_query="INSERT INTO `settings` (id,blog_title,company,tagline,logo,banner) VALUES ($id,'$blog_title','$blog_company','$blog_tag','$blog_logo','$blog_banner') ON DUPLICATE KEY UPDATE blog_title='$blog_title', company='$blog_company',tagline='$blog_tag',logo='$blog_logo',banner='$blog_banner'";
     if(mysqli_query($con,$setting_query))
     {
         $msg = "Settings Changed Successfully.";
         move_uploaded_file($logo_tmp, "img/$blog_logo");
         move_uploaded_file($banner_tmp, "img/$blog_banner");
         header("location:ch_settings.php");
     }
 }
 ?>
