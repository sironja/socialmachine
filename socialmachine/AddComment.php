<?php




function array_push_assoc( $array ,   $key , $value)
{
	$array[$key] = $value; 
		return $array;
}

require('db.php');
$Operation=$_POST['Operation'];
$Commenter_Id=$_POST['Commenter_Id']; 
$Task_Id=$_POST['Task_Id']; 
$Comment=$_POST['Comment'];

$Comment_Create_Time=date("Y-m-d H:i:s");
$Comment_Update_Time=date("Y-m-d H:i:s");

  $query="INSERT INTO `comments`(`Commenter_Id`,`Task_Id`,`Comment`,`Comment_Create_Time`,`Comment_Update_Time`)VALUES ('".$Commenter_Id."','".$Task_Id."','".$Comment."','".$Comment_Create_Time."','".$Comment_Update_Time."')"; 
  

$result=mysql_query($query);





  $query1="UPDATE `comments` SET `Commenter_Id`='".$Commenter_Id."',   `Task_Id`='".$Task_Id."',`Comment`='".$Comment."',
		`Comment_Create_Time` ='".$Comment_Create_Time."',`Comment_Update_Time`='".$Comment_Update_Time."' WHERE `Commenter_Id`='".$Commenter_Id."'";

		$result=mysql_query($query1);



{
$format ='json';

// show the inserted data in formate ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
$queryJson = "SELECT * FROM `comments` WHERE `Commenter_Id`='".$Commenter_Id."'" ;
$resultJson = mysql_query($queryJson) or die('Errant query: '.$queryJson);
$recordcount = mysql_num_rows($resultJson);

//if($recordcount !=0)
//{
//$posts = array();
//if(mysql_num_rows($resultJson))
//{
//while($post = mysql_fetch_assoc($resultJson))
//{
//$posts[] = array('post'=>$post);
//}
//}


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


}


?>
