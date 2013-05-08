<?php
require('db.php');

//$commenter_id = $_POST['commenter_id'];

//
// $query = "SELECT * FROM `comments` where commenter_id = '".$commenter_id."' "; 
// $result= mysql_query($query);
// while($row = mysql_fetch_array($result))
// {
//   echo $row['commenter_id'];
//   echo $row['comment'];
//   echo $row['comment_id'];
//   
//   echo"</br>";
//   }
  
 $format='json';  
  //show the inserted data in formate ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
$queryJson = "SELECT * FROM `task` ORDER BY Task_Id" ;
$resultJson = mysql_query($queryJson) or die('Errant query: '.$queryJson);
$recordcount = mysql_num_rows($resultJson);

if($recordcount !=0)
{
$posts = array();
if(mysql_num_rows($resultJson))
{
while($post = mysql_fetch_assoc($resultJson))
{
$posts[] = array('post'=>$post);
}
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

}else{

$posts = array();
$posts[] = array('post'=>'ERROR');
/* output in necessary format */
if($format == 'json') {
header('Content-type: application/json');
echo json_encode(array('posts'=>$posts));
}
else {
$val = "ERROR";
header('Content-type: text/xml');
echo '<posts>';
echo '<status>';
echo '<value>',htmlentities($val),'</value>';
echo '</status>';
echo '</posts>';
}
/* disconnect from the db */
@mysql_close($link);
}

//echo"<pre>";
//print_r($result_json);
//exit;
?>

