<?php require_once('inc/top.php');?>
  </head>
  <body>
<?php require_once('inc/header.php');?>

<?php $text_c = $_SESSION["text"]; ?>


<?php 
$cap_err = "";
    if(isset($_POST['submit']))
    {
        $n =  mysqli_real_escape_string($con,$_POST['full-name']);
        $e =  mysqli_real_escape_string($con,$_POST['email']);
        $w =  mysqli_real_escape_string($con,$_POST['website']);
        $m =  mysqli_real_escape_string($con,$_POST['message']);
        $c = $_POST['captcha'];
        


        if($c != $_SESSION['text']) $cap_err ='Enter Correct captcha';

        else{ 
            $insert = "INSERT INTO `contact`(`name`, `email`, `website`, `message`) VALUES ('$n','$e','$w','$m')";
            //$insert = "INSERT INTO `contact` (`name`,`email`,`website`,`message`) values('$n','$e','$w','$m')";
            if(mysqli_query($con, $insert))
            {
                echo '<script>alert("We will reach you soon")</script>';


            }
            else echo '<script>alert("Something went wrong")</script>';
        }
    }

?>    
    <div class="jumbotron">
        <div class="container">
            <div id="details" class="animated fadeInLeft">
                <h1>Contact <span>Us</span></h1>
                <p>Feel Free to Contact Us.</p>
            </div>
        </div>
        <img src="img/top-image.jpg" alt="Top Image">
    </div>
    
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14826.141217806475!2d73.01669202861154!3d21.72076350427977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be0208effffffff%3A0xfb8fe767216e6f66!2sNarmada+College+Of+Management!5e0!3m2!1sen!2sin!4v1511978516249" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                        <div class="col-md-12 contact-form">
                           <h2>Contact Form</h2><hr>
                            <form method="post">
                                <div class="form-group">
                                    <label for="full-name">Full Name*:</label>
                                    <input type="text" id="full-name" name="full-name" class="form-control" placeholder="Full Name" required>
                                </div>
                                
                                <div class="form-group">
                                    <label for="email">Email*:</label>
                                    <input type="text" id="email" name="email" class="form-control" placeholder="Email Address" required>
                                </div>
                                
                                <div class="form-group">
                                    <label for="website">Website:</label>
                                    <input type="text" id="website" name="website" class="form-control" placeholder="Website" >
                                </div>
                                
                                <div class="form-group">
                                    <label for="message">Messages:</label>
                                    <textarea id="message" cols="30" rows="10" name="message" required class="form-control" placeholder="Your Message Should be Here"></textarea>
                                </div>
                                <img src="inc/captcha.php">
                                <input type="text" name="captcha"  placeholder="Case-Sensitive" value="" required>
                                <input type="submit" name="submit" value="Submit" class="btn btn-primary">
                                
                            </form>
                            <label><?= $cap_err ?></label>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <?php require_once('inc/sidebar.php');?>                  
                </div>
            </div>
        </div>
    </section>

<?php require_once('inc/footer.php');?>