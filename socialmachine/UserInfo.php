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
$UserName = $_POST['UserName'];

if($UserName=="")
{
//echo "correct";
//exit;	
$posts = array();
$post = array();
$post['message'] ="Failure";
$posts[] = array('post'=>$post);
header('Content-type: application/json');
echo json_encode(array('posts'=>$post));
}


else
{

$format = 'json';


// show the inserted data in formate ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 $queryJson = "SELECT * FROM `user` WHERE `UserName`='".$UserName."'" ;


$resultJson = mysql_query($queryJson) or die('Errant query: '.$queryJson);
$recordcount = mysql_num_rows($resultJson);


//********
//if($recordcount !=0)
//{
//$posts = array();
//if(mysql_num_rows($resultJson))
//{
//while($post = mysql_fetch_assoc($resultJson))
//{
//$posts[] = array('post'=>$post);
//}
//}**********

$posts = array();
if($recordcount !=0)
{
	
	
		 while($post = mysql_fetch_assoc($resultJson))
		{
		


			$post =array_push_assoc($post, 'message', 'Success');
			$posts = array('post'=>$post);
		}
}
else
{

$post = array();
$post =array_push_assoc($post, 'message', 'failure');
$posts = array('post'=>$post);


}












/* output in necessary format */
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
}


//echo"<pre>";
//print_r($result_json);
//exit;
?>
