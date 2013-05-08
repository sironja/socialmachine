<?php
//echo"post values<pre>";
//print_r($_POST);
//exit;


function array_push_assoc( $array ,   $key , $value)
{
	$array[$key] = $value; 
		return $array;
}


require('db.php');
$UserName = $_POST['UserName'];
$Password=$_POST['Password'];
$format = 'json';



//show the inserted data in formate ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
$queryJson = "SELECT `User_id`,`FirstName`,`LastName` ,`Username`,`Email`,`age`,`parentalstatus`,`martialstatus`,`country`,`zipcode`,`aboutme`,`profile_access`,`pain_scale`,`status`,`deleted`,`user_created_time`,`user_updated_time`,`device_id`,`pn_when_task_assign_to_me`,`pn_when_task_update_assign_to_me`,`pn_when_any_one_comment_on_my_task`,`pn_when_any_one_like_my_comment`FROM `user` WHERE `UserName`='".$UserName."'AND `Password`='".$Password."'";
 


$resultJson = mysql_query($queryJson) or die('Errant query: '.$queryJson);

$recordcount = mysql_num_rows($resultJson);
/*******************************************************/
/* create one master array of the records 
	$posts = array();
	if(mysql_num_rows($result)) {
		while($post = mysql_fetch_assoc($result)) {
			$posts[] = array('post'=>$post);
		}
	}
/*******************************************************/
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
//print_r($posts);
//exit;
$format = "json";
/* output in necessary format */
if($format == 'json') {
header('Content-type: application/json');
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
exit;
?>
