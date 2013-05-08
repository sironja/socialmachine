<?php
//echo"<pre>";
//print_r($_POST);
//exit;
require('db.php');



function array_push_assoc( $array ,   $key , $value)
{
	$array[$key] = $value; 
		return $array;
}


//$format=set_format();
//$searchstring=isset($_POST['searchstring']) ? $_POST['searchstring'] : '';
//$password=isset($_POST['password']) ?  $_POST['password'] : $ApplicationSettings['Defaultpass'];
//$encrypted_pass=md5($password);//used to store in db
$operation=$_POST['Operation'];
$User_Id=$_POST['User_Id'];
$FirstName=$_POST['FirstName'];
$LastName=$_POST['LastName'];
$UserName =$_POST['UserName'];
$Email =$_POST['Email'];
$Password = $_POST['Password'];
$Age=$_POST['Age'];
$ParentalStatus=$_POST['ParentalStatus'];
$MartialStatus=$_POST['MartialStatus'];
$Country=$_POST['Country'];
$Zipcode=$_POST['Zipcode'];
$AboutMe=$_POST['AboutMe'];
$Profile_Access=$_POST['Profile_Access'];
$Pain_Scale=$_POST['Pain_Scale'];
$user_created_time=date("Y-m-d H:i:s");
$user_updated_time=date("Y-m-d H:i:s");
$Device_Id=$_POST['Device_Id'];
$pn_when_task_assign_to_me=$_POST['pn_when_task_assign_to_me'];
$pn_when_any_one_comment_on_my_task=$_POST['pn_when_any_one_comment_on_my_task'];
$pn_when_any_one_like_my_comment=$_POST['pn_when_any_one_like_my_comment'];
 $pn_when_task_update_assign_to_me="aff";
//exit;
if($operation =='Add')
{
 $query="SELECT * FROM `user` WHERE `UserName`='".$UserName."' AND Email='".$Email."'";
//exit;
$result = mysql_query($query);
$count=mysql_num_rows($result);

if($count != 0)
{
$post['message'] ="data exist already";
$posts[] = array('post'=>$post);
//header('Content-type: application/json');
//echo json_encode(array('posts'=>$posts));


}
 else
{

 $query="INSERT INTO `user`(`FirstName`,`LastName`,`UserName`,`Email`,`Password`,`Age`, `ParentalStatus`, `MartialStatus`, `Country`, `Zipcode`, `AboutMe`,`Profile_Access`,`Pain_Scale`, `user_created_time`, `user_updated_time`, `Device_Id`, `pn_when_task_assign_to_me`, `pn_when_task_update_assign_to_me`, `pn_when_any_one_comment_on_my_task`, `pn_when_any_one_like_my_comment`) 
VALUES ('".$FirstName."','".$LastName."','".$UserName."','".$Email."','".$Password."','".$Age."','".$ParentalStatus."','".$MartialStatus."','".$Country."','".$Zipcode."',
'".$AboutMe."','".$Profile_Access."','".$Pain_Scale."','".$user_created_time."','".$user_updated_time."','".$Device_Id."',
'".$pn_when_task_assign_to_me."','".$pn_when_task_update_assign_to_me."','".$pn_when_any_one_comment_on_my_task."','".$pn_when_any_one_like_my_comment."')";

$result=mysql_query($query);
$User_Id=mysql_insert_id();

}
}
else	 
	{
	
		
  $query1="UPDATE `user` SET `FirstName`='".$FirstName."',`LastName`='".$LastName."',
		`UserName` ='".$UserName."',`Email`='".$Email."',`Age`='".$Age."',`ParentalStatus`='".$ParentalStatus."',`MartialStatus`='".$MartialStatus."',`Country`='".$Country."',`Zipcode`='".$Zipcode."',`AboutMe`='".$AboutMe."',`Profile_Access`='".$Profile_Access."',`Pain_Scale`='".$Pain_Scale."',`user_created_time` = '".$user_created_time."',`user_updated_time` = '".$user_updated_time."'		
		WHERE `User_Id` ='".$User_Id."'"; 
		//echo $query1;
//exit;
		//Enable below function to debug query
		//debug_query($query);		
		//exit; 
				
				
	
		$result=mysql_query($query1);
		//$affected_rows=mysql_affected_rows($con);
	
	}	




$format = 'json';
if(isset($result))
{
// show the inserted data in formate ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
$queryJson = "SELECT * FROM `user` WHERE `User_Id`='".$User_Id."'" ;
//echo $queryJson;
//exit;
$resultJson = mysql_query($queryJson) or die('Errant query: '.$queryJson);
$recordcount = mysql_num_rows($resultJson);
//******************
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
////////**********************

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
$post =array_push_assoc($post, 'message', 'data already exists');
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




//echo"<pre>";
//print_r($result_json);
//exit;
?>
