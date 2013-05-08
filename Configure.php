<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', '1');
include_once("db.php");
/********************Some IMP Values*********/
$ApplicationSettings=array();
$ApplicationSettings['SiteURL'] = 'http://'.$_SERVER["HTTP_HOST"].'/lookshot';//GET SERVEER DOMAIN
$ApplicationSettings['LocalHostURL'] = 'http://129.168.1.41';//GET SERVEER DOMAIN
$ApplicationSettings['cover_photo_location'] = '/images/avatars/'; 
$ApplicationSettings['profile_photo_location'] = '/images/avatars/'; 
$ApplicationSettings['feed_photo_location'] = '/images/feed/'; 
$ApplicationSettings['media_photo_location'] = '/images/media/'; 
$ApplicationSettings['brand_photo_location'] = '/images/brand/';
$ApplicationSettings['brand_photo_location'] = '/images/item/';
$ApplicationSettings['retailer_photo_location'] = '/images/retailer/'; 
$ApplicationSettings['default_cover_photo'] = $ApplicationSettings['cover_photo_location'].'default_cover_photo.jpg'; //
$ApplicationSettings['default_profile_photo'] = $ApplicationSettings['profile_photo_location'].'default_profile_photo.jpg'; //
$ApplicationSettings['default_feed_photo'] = $ApplicationSettings['feed_photo_location'].'default_feed_photo.jpg'; //
$ApplicationSettings['default_media_photo'] = $ApplicationSettings['media_photo_location'].'default_media_photo.jpg'; //
$ApplicationSettings['default_brand_photo'] = $ApplicationSettings['brand_photo_location'].'default_brand_photo.jpg'; //
$ApplicationSettings['default_retailer_photo'] = $ApplicationSettings['retailer_photo_location'].'default_retailer_photo.jpg'; //
$ApplicationSettings['ServerDateTime']=date("Y-m-d H:i:s");
$ApplicationSettings['CurrentTimestamp']=time();
$ApplicationSettings['Defaultpass']=genRandomPassword();
$result_json=array();
$result_xml="";


/**********Some IMP Functions**********************/
function array_push_assoc($array, $key, $value)
{
		$array[$key] = $value;
		return $array;
}	

function set_format()//To set Responce Format
{
	if(!isset($_POST['format']) || $_POST['format']=='')
	$format='json';
	else
	$format=trim(strtolower($_POST['format']));
	return $format;
}

function displayXmlOutput($result='')//Display Output According to XML Format 
{
	header("Content-type:text/xml");
	echo "<posts>".$result." </posts>";	
}

function displayJsonOutput($result='')//Display Output According to JSON Format 
{
	header("Content-type:text/json");
	echo json_encode(array("posts"=>$result));
}

function displayNativeXmlOutput($posts)//Display Output in Native XML FOAMAT
{
	header('Content-type: text/xml');
	echo '<posts>';
	foreach($posts as $index => $post) 
	{
		if(is_array($post)) 
		{
			foreach($post as $key => $value)
			{
				echo '<',$key,'>';
				if(is_array($value)) 
				{
					foreach($value as $tag => $val) 
					{
						echo '<',$tag,'>',htmlentities($val),'</',$tag,'>';
					}
				}
				echo '</',$key,'>';
			}
		}
	}
	echo '</posts>';
}
function getAttrTagString($post)//To make xml String of a single Record.
{
	$attributedtag="";
	$attributedtag.=" <post  ";
	foreach($post as $k=>$v)
	{
//		echo "<br>K : ".$k;
//		echo "<br>V : ".$v;
		$attributedtag.= " $k= \"$v\"";
	}
	$attributedtag.=" />";
	return $attributedtag;
}

function close_db_con()//Close Database Connection
{
	mysqli_close($con);
}

function genRandomPassword()
{
	$length = 10;     
	$characters = '12346789abcdefghjkmnpqrstuvwxyABCDEFGHJKLMNPQRSTUVWXYZ';
	$string = '';
	for ($p = 0; $p < $length; $p++)
	{
		$string .= @$characters[@mt_rand(0, @strlen($characters))];
	}
	return $string;
}
function debug_query($query)
{
	echo "<br>".$query;
	//exit;
}
function add_site_url($str)
{	
	//return $str= 'http://192.168.1.41'.$str;	 
	return $str='http://'.$_SERVER["HTTP_HOST"].'/lookshot'.$str;	 
}

function save_image($image_type,$imgstring)
{	
	$imagename=time();	
	$ImagePath='';
	$img=false;
	$decodeimage=str_replace(" ","+",$imgstring);	
	$img = imagecreatefromstring(base64_decode($decodeimage));//Code to decode image from base64 to string.
	if($img != false)
	{
		if($image_type=='avatars')
		{			
			$convimage = imagejpeg($img,'images/avatars/'.$imagename.'.jpg');//Code to convert image in jpeg.			
			//$ImagePath = $ApplicationSettings['cover_photo_location'].$imagename.'.jpg';
			$ImagePath = '/images/avatars/'.$imagename.'.jpg';
		}
		if($image_type=='brand')
		{
			$convimage = imagejpeg($img,'images/brand/'.$imagename.'.jpg');//Code to convert image in jpeg.
			//$ImagePath = $ApplicationSettings['brand_photo_location'].$imagename.'.jpg';
			$ImagePath = '/images/brand/'.$imagename.'.jpg';
		}
//		if($image_type=='feed')
//		{
//			$convimage = imagejpeg($img,'images/feed/'.$imagename.'.jpg');//Code to convert image in jpeg.
//			//$ImagePath = $ApplicationSettings['feed_photo_location'].$imagename.'.jpg';
//			$ImagePath = '/images/feed/'.$imagename.'.jpg';
//		}
		if($image_type=='media')
		{
			$convimage = imagejpeg($img,'images/media/'.$imagename.'.jpg');//Code to convert image in jpeg.
			//$ImagePath = $ApplicationSettings['feed_photo_location'].$imagename.'.jpg';
			$ImagePath = '/images/media/'.$imagename.'.jpg';
		}
		if($image_type=='retailer')
		{
			$convimage = imagejpeg($img,'images/retailer/'.$imagename.'.jpg');//Code to convert image in jpeg.
			//$ImagePath = $ApplicationSettings['feed_photo_location'].$imagename.'.jpg';
			$ImagePath = '/images/retailer/'.$imagename.'.jpg';
		}
	}
	else
	{
		$ImagePath="Unable to save image.";
	}
	return $ImagePath;
}
function check_username_availability($username,$user_email)///Email & username both should be unique
{
	$flag=1;
	$query="SELECT * FROM `users` WHERE `username`='$username' OR `user_email`='$user_email' ";		
	$result=mysqli_query($_SESSION['con'],$query);	
	if(mysqli_num_rows($result))
	$flag=0;
	else
	$flag=1;
	
	return $flag;
}

function check_brand_availability($brand_name)
{
	$flag=1;
	$query="SELECT * FROM `brand` WHERE `brand_name`='$brand_name' ";			
	$result=mysqli_query($_SESSION['con'],$query);	
	if(mysqli_num_rows($result))
	$flag=0;
	else
	$flag=1;
	
	return $flag;
}

function check_item_availability($item_name)
{
	$flag=1;
	$query="SELECT * FROM `item` WHERE `item_name`='$item_name' ";			
	$result=mysqli_query($_SESSION['con'],$query);	
	if(mysqli_num_rows($result))
	$flag=0;
	else
	$flag=1;	
	return $flag;
}

?>