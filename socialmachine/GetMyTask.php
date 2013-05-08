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

$User_Id=$_POST['User_Id'];
$user_created_time=date("Y-m-d H:i:s");
//$Scheduled_Date=date("Y-m-d H:i:s");

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


$format = 'json';


// show the inserted data in formate ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   $queryJson = "SELECT `TaskName`,`Task_Id`,`Scheduled_date` FROM `task` WHERE `User_Id`='".$User_Id."'" ; 
  
$resultJson = mysql_query($queryJson); //or die('Errant query: '.$queryJson);
$row = mysql_num_rows($resultJson);
if($row>0)
{
//$recordcount = mysql_num_rows($resultJson);
$p =array();
$posts = array();
//if($recordcount !=0)
//{

 for ($row = 0; $row < mysql_num_rows($resultJson); $row++) 
		{ 	

                $p = mysql_fetch_assoc($resultJson);
 
	            if($user_created_time<=$p['Scheduled_date'])
                       {
                        $post['TaskName']=$p['TaskName'];
			$post['Task_Id']=$p['Task_Id'];
			$post['status'] ='True';//array_push_assoc($post, 'status', 'True');
			//$posts = array('post'=>$post);
                      }            
                  else
		     {  
			$post['TaskName']=$p['TaskName'];
			$post['Task_Id']=$p['Task_Id'];
			$post['status'] ='false';
			//$post =array_push_assoc($post, 'message', 'Failure');
			//$posts = array('post'=>$post);
 		    }
$posts[] = $post;
                //$post = mysql_fetch_assoc($resultJson);
  
         
   }
}
else
{
$post = array();
$posts = array();
$post['message'] = "No Task Found..";
$posts[] = $post;  
}		
$format = "json";
/* output in necessary format */
if($format == 'json') {
//header('Content-type: application/json');
echo json_encode(array('posts'=>$posts));
}
else
 {
   header('Content-type: text/xml');
   echo '<posts>';
   foreach($posts as $index => $post) 
     {
       if(is_array($post))
         {
           foreach($post as $key => $value)
             {
              //print_r($key);
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
// exit;
       }
     echo '</posts>';
}
/* disconnect from the db */
@mysql_close($link);

//echo"<pre>";
//print_r($result_json);

?>
