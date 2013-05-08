
<?php
/*echo"<pre>";
print_r($_POST);
exit;*/

function array_push_assoc( $array ,   $key , $value)
{
	$array[$key] = $value; 
		return $array;
}



require('db.php');

$Email=$_POST['Email'];

$query="SELECT * FROM `user` WHERE Email='".$Email."'";
$result=mysql_query($query);
$count=mysql_num_rows($result);
if($count!=0)
{
$row=mysql_fetch_array($result);
$pst="your password is :".$row['password'];
   if(mail($Email, "Social App Password",$pst))
   {


$post = array();
$post =array_push_assoc($post, 'message', 'success');
$posts = array('post'=>$post);
//$post="mail has been sended!";
 }
 
else
{

$post = array();
$post =array_push_assoc($post, 'message', 'failure');
$posts = array('post'=>$post);
}

 }    
 else
 {


$post = array();
$post =array_push_assoc($post, 'message', 'does not match');
$posts = array('post'=>$post);
 //$post="your email is not exist!";
 }



$format = 'json'; 
 
 if($format == 'json') {
//header('Content-type: application/json');
echo json_encode(array('posts'=>$posts));
}
else {
header('Content-type: text/xml');
echo '<posts>';
foreach($posts as $index => $post) {
if(is_array($post)) {
foreach($post as $key => $value) {
//print_r($key);
echo '<',$key,'>';
if(is_array($value)) {
foreach($value as $tag => $val) {
echo '<',$tag,'>',htmlentities($val),'</',$tag,'>';
}
}
echo '</',$key,'>';
}
}
// exit;
}
echo '</posts>';
}
/* disconnect from the db */
@mysql_close($link);


//echo"<pre>";
//print_r($result_json);
//exit;


?>
	
