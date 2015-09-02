<?php
  
	//header('Content-Type: text/xml');
header("Cache-Control: no-cache, must-revalidate");
//A date in the past
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");

 ini_set('display_errors', 0);
        require 'vendor/autoload.php';
        include "library/includes/config.php";
        include "library/includes/initialize.php";


		$input =$_GET['q'];
	
		echo "[";

  
 $query =  $sql->Prepare("SELECT surname,othernames,indexno,pta_owing+academic_owing as outstand,class FROM tbl_student    ORDER BY  id ASC"); 
 $a=$sql->Execute($query );
//print_r($query1->FetchRow());
while($r = $a->FetchRow())

{
	echo "{ name: \"$r[othernames] $r[surname] \", outstand: \"$r[outstand]\",indexno: \"$r[indexno]\",<img src='studentPics/$r[indexno].jpg'/>,form: \"$r[class]\" },";

		}
	
                
                echo "]";
	
?>