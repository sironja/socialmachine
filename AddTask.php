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
$Task_Id = $_POST['Task_Id'] ;


$User_Id=$_POST['User_Id'];
$TaskName = $_POST['TaskName'];
$TaskPoint=$_POST['TaskPoint'];
$Description=$_POST['Description'];
$TaskPriority=$_POST['TaskPriority'];
//$lists=$_POST['Lists'];
$Mission_List_Name=$_POST['Mission_List_Name'];
//$alarm=$_POST['Alarm'];
$Viewable_By=$_POST['Viewable_By'];
$Scheduled_Date=$_POST['Scheduled_Date'];
$Recurring_Date=$_POST['Recurring_Date'];

$Task_Created_Time=date("Y-m-d H:i:s");
$Task_Updated_Time=date("Y-m-d H:i:s");

if($User_Id=="")
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
/* $query="INSERT INTO `task`( `User_Id`,`TaskName`, `TaskPoint`, `Description`, `TaskPriority`,`Mission_List_Name`,`Viewable_By`, `Scheduled_Date`, `Recurring_Date`, `Task_Created_Time`, `Task_Updated_Time`) 
VALUES ('".$User_Id."','".$TaskName."','".$TaskPoint."','".$Description."','".$TaskPriority."',
'".$Mission_List_Name."','".$Viewable_By."','".$Scheduled_Date."','".$Recurring_Date."','".$Task_Created_Time."','".$Task_Updated_Time."')";*/

$query="INSERT INTO `task`( `User_Id`,`TaskName`, `TaskPoint`, `Description`, `TaskPriority`,`Mission_List_Name`,`Viewable_By`, `Scheduled_Date`, `Recurring_Date`, `Task_Created_Time`, `Task_Updated_Time`) 
VALUES ($User_Id,'$TaskName','$TaskPoint','$Description','$TaskPriority',
'$Mission_List_Name','$Viewable_By','$Scheduled_Date','$Recurring_Date','$Task_Created_Time','$Task_Updated_Time')";



$result=mysql_query($query);
 $Task_Id = mysql_insert_id();


$format = 'json';
if(isset($result))
{
// show the inserted data in formate ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  $queryJson = "SELECT `User_Id`,`Task_Id` FROM `task` WHERE `Task_Id`='".$Task_Id."'" ; 

$resultJson = mysql_query($queryJson) or die('Errant query: '.$queryJson);
$recordcount = mysql_num_rows($resultJson);

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

}

}
//echo"<pre>";
//print_r($result_json);
exit;
?>
