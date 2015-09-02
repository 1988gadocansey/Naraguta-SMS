<?php
/**
 * Description of helpers
 * 
 * @author Administrator
 */
namespace classes;
use classes\Core;
class helpers {
	private $connect;
     public function __construct() {
           global $sql;
        $this->connect=$sql;
          
     }
   public  function nextyear($currenyear){
        $pp=explode("/",$currenyear);
        //echo $pp[0];

        return $pp[1]."/".($pp[1]+1);
        }
    
	   
    public function age($birthdate, $pattern = 'eu')
        {
            $patterns = array(
                'eu'    => 'd/m/Y',
                'mysql' => 'Y-m-d',
                'us'    => 'm/d/Y',
                'gh'    => 'd-m-Y',
            );

            $now      = new \DateTime();
            $in       = \DateTime::createFromFormat($patterns[$pattern], $birthdate);
            $interval = $now->diff($in);
            return $interval->y;
        }
       public function picture($path,$target){
                if(file_exists($path)){
                        $mypic = getimagesize($path);

                 $width=$mypic[0];
                        $height=$mypic[1];

                if ($width > $height) {
                $percentage = ($target / $width);
                } else {
                $percentage = ($target / $height);
                }

                //gets the new value and applies the percentage, then rounds the value
                 $width = round($width * $percentage);
                $height = round($height * $percentage);

               return "width=\"$width\" height=\"$height\"";



            }else{}
        
       
        }
        
        
	public function pictureid($stuid){
	 
	 return str_replace('/','',$stuid);
	 }
   public function convert_number($number)
{
if (($number < 0) || ($number > 999999999))
{
return "$number";
}

$Gn = floor($number / 1000000); /* Millions (giga) */
$number -= $Gn * 1000000;
$kn = floor($number / 1000); /* Thousands (kilo) */
$number -= $kn * 1000;
$Hn = floor($number / 100); /* Hundreds (hecto) */
$number -= $Hn * 100;
$Dn = floor($number / 10); /* Tens (deca) */
$n = $number % 10; /* Ones */

$res = "";

if ($Gn)
{
$res .= $this->convert_number($Gn) . " Million";
}

if ($kn)
{
$res .= (empty($res) ? "" : " ") .
        $this->convert_number($kn) . " Thousand";
}

if ($Hn)
{
$res .= (empty($res) ? "" : " ") .
        $this->convert_number($Hn) . " Hundred";
}

$ones = array("", "One", "Two", "Three", "Four", "Five", "Six",
"Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen",
"Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eightteen",
"Nineteen");
$tens = array("", "", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty",
"Seventy", "Eigthy", "Ninety");

if ($Dn || $n)
{
if (!empty($res))
{
$res .= " and ";
}

if ($Dn < 2)
{
$res .= $ones[$Dn * 10 + $n];
}
else
{
$res .= $tens[$Dn];

if ($n)
{
$res .= "-" . $ones[$n];
}
}
}

if (empty($res))
{
$res = "zero";
}

return $res;

//$thea=explode(".",$res);

}

public function convert($amt){
//$amt = "190120.09" ;

 $amt = number_format($amt, 2, '.', '');
$thea=explode(".",$amt);

//echo $thea[0];


$words=  $this->convert_number($thea[0])." Ghana Cedis ";
if($thea[1]>0){$words.= $this->convert_number($thea[1]) ." Pesewas";}

return $words;
}
      

// send sms
public  function sendtxt($message,$phone,$type,$name) 
{ 

global $sql;
set_time_limit  (500);
if(is_numeric($phone) and $message){

if($_SESSION['connected']>=0 and $_SESSION['connected']!='down') 
{ 
$themassage=urlencode($message);
$url="http://powertxtgh.com/access.php?company=ALOT&ccode=ALT101&sender=Gad&message=$themassage&recipient=$phone";

$f=@fopen($url,"r"); 

$date=time();
	 $insertor=$this->connect->Prepare("insert into sent set number='$phone',type='$type',name='$_SESSION[ID]',message='$message',dates='$date',status='Delivered'");
	 $this->connect->Execute($insertor) ;
	
fclose($f); 
return true; 
} else{
		$date=time();

	 $insertor=$this->connect->Prepare("insert into sent set number='$phone',type='$type',name='$_SESSION[ID]',message='$message',dates='$date',status='Not Delivered'");
	 $this->connect->Execute($insertor) ;
	
return false; }
}} 

public function ping($host, $port, $timeout) { 
  $tB = microtime(true); 
  $fP = @fSockOpen($host, $port, $errno, $errstr, $timeout); 
  if (!$fP) { return "down"; } 
  $tA = microtime(true); 
  return round((($tA - $tB) * 1000), 0)." ms"; 
}

// details of academic year returns month
public function academicyear_details_m($date1,$date2, $pattern = 'eu')
        {
            $patterns = array(
                'eu'    => 'd/m/Y',
                'mysql' => 'Y-m-d',
                'us'    => 'm/d/Y',
                'gh'    => 'd-m-Y',
            );

            $now      = \DateTime::createFromFormat($patterns[$pattern], $date1);
            $in       = \DateTime::createFromFormat($patterns[$pattern], $date2);
            $interval = $now->diff($in);
            return $interval->m;
        }
// details of academic year returns month
        function time_diff_string($from, $to, $full = false) {
    $from = new DateTime($from);
    $to = new DateTime($to);
    $diff = $to->diff($from);

    $diff->w = floor($diff->d / 7);
    $diff->d -= $diff->w * 7;

    $string = array(
        'y' => 'year',
        'm' => 'month',
        'w' => 'week',
        'd' => 'day',
        'h' => 'hour',
        'i' => 'minute',
        's' => 'second',
    );
    foreach ($string as $k => &$v) {
        if ($diff->$k) {
            $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
        } else {
            unset($string[$k]);
        }
    }

    if (!$full) $string = array_slice($string, 0, 1);
    return $string ? implode(', ', $string) . ' ago' : 'just now';
}
public function academicyear_details_d($date1,$date2, $pattern = 'eu')
        {
            $patterns = array(
                'eu'    => 'd/m/Y',
                'mysql' => 'Y-m-d',
                'us'    => 'm/d/Y',
                'gh'    => 'd-m-Y',
            );

            $now      = \DateTime::createFromFormat($patterns[$pattern], $date1);
            $in       = \DateTime::createFromFormat($patterns[$pattern], $date2);
            $interval = $now->diff($in);
            return $interval->d;
        }

        // details of academic year returns month
public function academicyear_details_w($date1,$date2, $pattern = 'eu')
        {
            $patterns = array(
                'eu'    => 'd/m/Y',
                'mysql' => 'Y-m-d',
                'us'    => 'm/d/Y',
                'gh'    => 'd-m-Y',
            );

            $now      = \DateTime::createFromFormat($patterns[$pattern], $date1);
            $in       = \DateTime::createFromFormat($patterns[$pattern], $date2);
            $interval = $now->diff($in);
            return $interval->w;
        }

//echo datediff('ww', '12 December 2001', '15 July 2007', false);

function datediff($interval, $datefrom, $dateto, $using_timestamps = false) {
    /*
    $interval can be:
    yyyy - Number of full years
    q - Number of full quarters
    m - Number of full months
    y - Difference between day numbers
        (eg 1st Jan 2004 is "1", the first day. 2nd Feb 2003 is "33". The datediff is "-32".)
    d - Number of full days
    w - Number of full weekdays
    ww - Number of full weeks
    h - Number of full hours
    n - Number of full minutes
    s - Number of full seconds (default)
    */

    if (!$using_timestamps) {
        $datefrom = strtotime($datefrom, 0);
        $dateto = strtotime($dateto, 0);
    }
    $difference = $dateto - $datefrom; // Difference in seconds

    switch($interval) {

    case 'yyyy': // Number of full years
        $years_difference = floor($difference / 31536000);
        if (mktime(date("H", $datefrom), date("i", $datefrom), date("s", $datefrom), date("n", $datefrom), date("j", $datefrom), date("Y", $datefrom)+$years_difference) > $dateto) {
            $years_difference--;
        }
        if (mktime(date("H", $dateto), date("i", $dateto), date("s", $dateto), date("n", $dateto), date("j", $dateto), date("Y", $dateto)-($years_difference+1)) > $datefrom) {
            $years_difference++;
        }
        $datediff = $years_difference;
        break;
    case "q": // Number of full quarters
        $quarters_difference = floor($difference / 8035200);
        while (mktime(date("H", $datefrom), date("i", $datefrom), date("s", $datefrom), date("n", $datefrom)+($quarters_difference*3), date("j", $dateto), date("Y", $datefrom)) < $dateto) {
            $months_difference++;
        }
        $quarters_difference--;
        $datediff = $quarters_difference;
        break;
    case "m": // Number of full months
        $months_difference = floor($difference / 2678400);
        while (mktime(date("H", $datefrom), date("i", $datefrom), date("s", $datefrom), date("n", $datefrom)+($months_difference), date("j", $dateto), date("Y", $datefrom)) < $dateto) {
            $months_difference++;
        }
        $months_difference--;
        $datediff = $months_difference;
        break;
    case 'y': // Difference between day numbers
        $datediff = date("z", $dateto) - date("z", $datefrom);
        break;
    case "d": // Number of full days
        $datediff = floor($difference / 86400);
        break;
    case "w": // Number of full weekdays
        $days_difference = floor($difference / 86400);
        $weeks_difference = floor($days_difference / 7); // Complete weeks
        $first_day = date("w", $datefrom);
        $days_remainder = floor($days_difference % 7);
        $odd_days = $first_day + $days_remainder; // Do we have a Saturday or Sunday in the remainder?
        if ($odd_days > 7) { // Sunday
            $days_remainder--;
        }
        if ($odd_days > 6) { // Saturday
            $days_remainder--;
        }
        $datediff = ($weeks_difference * 5) + $days_remainder;
        break;
    case "ww": // Number of full weeks
        $datediff = floor($difference / 604800);
        break;
    case "h": // Number of full hours
        $datediff = floor($difference / 3600);
        break;
    case "n": // Number of full minutes
        $datediff = floor($difference / 60);
        break;
    default: // Number of full seconds (default)
        $datediff = $difference;
        break;
    }    
    return $datediff;
}

//
public function getReceipt(){
    $query=$this->connect->Prepare("SELECT no FROM receiptno");
    $query2=$this->connect->Execute($query);
    $data=$query2->FetchNextObject();
    return $data->NO;
}
public function UpdateReceipt(){
    $query=$this->connect->Prepare("UPDATE receiptno SET no=no + 1");
    $query2=  $this->connect->Execute($query);
    
}
}