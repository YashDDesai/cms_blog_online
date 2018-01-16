<?php
    require_once('inc/db.php');

    $init_query = "SELECT * FROM users WHERE role= 'admin'";
    $init_run = mysqli_query($con, $init_query);
    $init_row = mysqli_fetch_array($init_run);
    $has_admin = $init_row['role'];
          if($has_admin!=null)
          {
              header("location:index.php");
          }


?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Initial Setup</title>

        <link rel="icon" type="image/png" href="img/favicon.png">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link href='https://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/animated.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <div class="container text-center">
            <form class="" action="" method="post" enctype="multipart/form-data">

                <h2 class="form-signin-heading">Initial Setup</h2>

                <input type="text" id="blog-title" name="blog-title" class="form-control" placeholder="Blog Title" required autofocus><br>
                <input type="text" id="blog-company" name="blog-company" class="form-control" placeholder="Company / Organization" required autofocus><br>
                <input type="text" id="blog-tag" name="blog-tag" class="form-control" placeholder="Tagline" required autofocus><br>

                <hr>

                <input type="text" id="admin-username" name="admin-username" class="form-control" placeholder="Choose Username" required><br>
                <input type="password" id="admin-pass" name="admin-pass" class="form-control" placeholder="Choose Password" required><br>
                <hr>

                <div class="text-left">
                    <label for="fav-img">Logo</label>
                    <input id="fav-img" type="file" name="fav-img" value="" required><br>
                    <label for="banner-img">Banner</label>
                    <input id="banner-img" type="file" name="banner-img" value="" required>
                </div>

                <hr>
                <input type="submit" name="start" value="Start" class="btn-primary btn-lg btn-block">
            </form>
        </div>

    </body>
</html>

<?php
if((isset($_POST['start'])))
{
    $id=1;
    $blog_title=$_POST['blog-title'];
    $blog_company=$_POST['blog-company'];
    $blog_tag=$_POST['blog-tag'];
    $u_admin = $_POST['admin-username'];
    $u_pass = mysqli_real_escape_string($con,$_POST['admin-pass']);
    $logo = $_FILES['fav-img']['name'];
    $logo_tmp = $_FILES['fav-img']['tmp_name'];
    $banner = $_FILES['banner-img']['name'];
    $banner_tmp = $_FILES['banner-img']['tmp_name'];

    $salt_query = "SELECT * FROM users ORDER BY id DESC LIMIT 1";
    $salt_run = mysqli_query($con, $salt_query);
    $salt_row = mysqli_fetch_array($salt_run);
    $salt = $salt_row['salt'];
    $password = crypt($u_pass, $salt);

    $start_query="INSERT INTO `users` (username,password,role) VALUES ('$u_admin','$password','admin')";
    $setting_query="INSERT INTO `settings` (id,blog_title,company,tagline,logo,banner) VALUES ($id,'$blog_title','$blog_company','$blog_tag','$logo','$banner') ON DUPLICATE KEY UPDATE blog_title='$blog_title', company='$blog_company',tagline='$blog_tag',logo='$logo',banner='$banner'";
    if(mysqli_query($con,$start_query)&&mysqli_query($con,$setting_query))
    {
        $msg = "Admin Account Has Been Created.";
        move_uploaded_file($logo_tmp, "img/$logo");
        move_uploaded_file($banner_tmp, "img/$banner");
        header("location:index.php");
    }
}
 ?>
