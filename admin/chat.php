<?php
	//ob_start();
require_once('inc/top.php');
	//session_start();
	require_once('../inc/db.php');
	
	if(!isset($_SESSION['username']))
	{
		header('Location: login.php');
	}
	$chat_user=$_SESSION['username'];
	if(isset($_POST['msg']))
	{
		$msg=$_POST['msg'];
	}
	else{
		$msg=null;
	}
	if(isset($_POST['send']))
	{
		$msg=$_POST['msg'];
		$send_msg_query="INSERT INTO `chat` (`msg`,`username`) VALUES('$msg','$chat_user')";
		mysqli_query($con,$send_msg_query);
	}
	
?>
</head>
<!DOCTYPE html>
<!--<html lang="en">
	<head>
	  <title>Chat | YASH DESAI Blog</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>-->
	<?php
	
	
	?>
	<body>
	    <div id="wrapper">
	    <?php
		require_once('inc/header.php');?>
	<div class="container" style="margin-top:50px;margin-bottom:50px" id="update_chat">
		<!--<div class="chat">-->
		
			<?php
				
				$get_msg_query="SELECT * FROM chat ORDER BY id ASC";
				//$get_img_query="SELECT * FROM users WHERE username='$chat_user'";
				//$get_msg_query="SELECT * FROM chat WHERE username <>'$chat_user' ORDER BY id ASC";
				$get_msg_run=mysqli_query($con,$get_msg_query);
				//$get_img_run=mysqli_query($con,$get_img_query);
				if(mysqli_num_rows($get_msg_run)>0 /*&& mysqli_num_rows($get_img_run)>0*/)
				{
					/*while($g_img_row=mysqli_fetch_array($get_img_run))
								{
									$img=$g_img_row['image'];
								}*/
					
					while($g_row=mysqli_fetch_array($get_msg_run))
					{
						$g_user=$g_row['username'];
						$g_msg=$g_row['msg'];
						$g_time=$g_row['time'];
			?>
					<?php
						if($chat_user==$g_user || $g_user==$chat_user)
						{
					?>
							<blockquote class="blockquote-reverse">
								<small><!--<img src="img/<?php echo $img?>" width="40px" height="40px" class="img-circle">--> <?php echo $g_user;?></small><br>
								<mark style="wordwrap:break-word;background-color:#dff0d8;" class="img-rounded"><?php echo $g_msg ;?></mark>
								<small><?php echo $g_time;?> (UTC)</small>
							</blockquote>
						
					<?php
						}
						else
						{   
							//$other_img_query="SELECT * FROM users WHERE username='$g_user'";
							//$other_img_run=mysqli_query($con,$other_img_query);
							//if(mysqli_num_rows($other_img_run)>0)
							//{
								//while($g_img_row=mysqli_fetch_array($other_img_run))
									//{
										//$img=$g_img_row['image'];
									
					?>
						
							<blockquote>
								<small><!--<img src="img/<?php echo $img;?>" width="40px" height="40px" class="img-circle">--> <?php echo $g_user;?></small><br>
								<mark style="wordwrap:break-word;background-color:#f2dede;" class="img-rounded"><?php echo $g_msg ;?></mark>
								<small><?php echo $g_time;?> (UTC)</small>
							</blockquote>
						
					<?php 
							}
							}
						}
					//}
				//}
					?>
		  </div>
		<?php
			/*function OtherImage()
			{
				if($chat_user!=$g_user)
				{
					$other_img_query="SELECT * FROM users WHERE username='$g_user'";
					$other_img_run=mysqli_query($con,$other_img_query);
					if(mysqli_num_rows($other_img_run)>0)
					{
						$img="";
						while($g_img_row=mysqli_fetch_array($other_img_run))
									{
										$img=$g_img_row['image'];
									}
					}
				}
			echo $img;
			}*/
		?>
	<!--   
		//<?php 
		//if($msg!=null){ ?>
	  <blockquote class="blockquote-reverse">
				<small><img src="img/---Super-heroes-Minimalist-Wallpapers-1920-1080-13.jpg" width="40px" height="40px" class="img-circle"> <?//php echo $chat_user;?></small><br>
			   <p style="wordwrap:break-word;" class="bg-success"></p>
		  <mark style="wordwrap:break-word;background-color:#dff0d8;" class="img-rounded"><?php //echo $msg;?></mark>
		<footer>2:08 PM</footer>
	  </blockquote>

		</div>
	<?php //}?>-->
		
		
		
		
		<div class="row container-fluid">
			<form method="post">

				<label for="inputEmail" class="sr-only">Type here...</label>
				<div>
			<input type="textarea" rows="1" id="inputMsg" name="msg" class="form-control input-lg" placeholder="Say hi..." required autofocus style="position:fixed; bottom:0px;margin-left:0px;marginright:30px;"><input type="submit" name="send" value="SEND" class="btn btn-primary input-lg" style="position:fixed;bottom:0px;right:0px">
			</div>

			</form>
		</div>
	</div>
		
		
		
		
		<!--ONESIGNAL-->
		
		
		<?PHP
        //require_once('../index.php');
        if(isset($_POST['send']))
        {

            $title_head=$g_user;
        //	$msg=$_POST['title'];
        	$url="http://yashdesai.ddns.net/b/admin/chat.php";

        	function sendMessage(){

        		global $msg, $url,$title_head,$image;

        		$title=array("en"=>"Message from ".$title_head);
        		$content = array("en" => $msg);

                $img="http://yashdesai.ddns.net/b/img/".$image;

        		$fields = array('app_id' => "66b6019b-a544-49ad-8b75-890ec70d6f80", 'included_segments' => array('All'), 'data'=> array("foo" => "bar"), 'url'=> $url, 'contents' => $content,'headings'=>$title,'chrome_web_image'=>$img,'big_picture'=>$img,'priority'=>10);


        		$fields = json_encode($fields);
            //print("\nJSON sent:\n");
            //print($fields);

        		$ch = curl_init();
        		curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
        		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json; charset=utf-8',
        												   'Authorization: Basic ZGNjMjVkNzktYTE0MS00ODBkLWE5ZTctNWNjZTc4N2M5NDVi'));
        		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        		curl_setopt($ch, CURLOPT_HEADER, FALSE);
        		curl_setopt($ch, CURLOPT_POST, TRUE);
        		curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

        		$response = curl_exec($ch);
        		curl_close($ch);

        		return $response;
        	}

        	$response = sendMessage();
        	$return["allresponses"] = $response;
        	$return = json_encode( $return);

          //print("\n\nJSON received:\n");
        //	print($return);
         // print("\n");
        }
        ?>
		
		
		<!--ONESIGNAL-->
		
		
		
		
		
		
	<script>
    	setTimeout(printSomething, 1000);
		function printSomething(){}
    	window.scrollTo(0,document.body.scrollHeight);
        setTimeout(printSomething, 1000);
    </script>
		
		
	</body>
</html>