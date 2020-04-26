<?php
session_start();

$n_r = rand(0,99);
$s_r = rand(65,90);
$c_r = rand(97,122);
$r = rand(0,2);
if($r==0) 	   $text = chr($s_r).$n_r.chr($c_r);
else if($r==1) $text = $n_r.chr($c_r).chr($s_r);
else if($r==2) $text = chr($c_r).$n_r.chr($s_r);


$_SESSION["text"] = $text;
$my_img = imagecreate( 100, 50 );                             //width & height
$background  = imagecolorallocate( $my_img, 255,   255,   255 );
$text_colour = imagecolorallocate( $my_img, 0, 0, 0 );
$line_colour = imagecolorallocate( $my_img, 128, 255, 0 );
imagestring( $my_img, 4, 30, 25, $text, $text_colour );
imagesetthickness ( $my_img, 5 );
imageline( $my_img, 30, 45, 165, 45, $line_colour );

header( "Content-type: image/png" );
imagepng( $my_img );
imagecolordeallocate( $line_color );
imagecolordeallocate( $text_color );
imagecolordeallocate( $background );
imagedestroy( $my_img );

?> 