 <?php
 ini_set('display_errors', 0);
    require 'vendor/autoload.php';
    include "library/includes/config.php";
     include "library/includes/initialize.php";
    $app=new classes\structure();
    $help=new classes\helpers();
    $config=new classes\School();
    $info=$config->getConfig();
     $_SESSION[indexno]=$_GET[indexno] ? : $_GET[success] ;
    $_SESSION[del]=$_GET["del"];
    $teacher=new classes\Teacher();  $teacher=$teacher->getTeacher_ID($_SESSION[ID]);
    $school=$config->getAcademicYearTerm();
    $query=$sql->Prepare("SELECT * FROM indexno");
    $stmt=$sql->Execute($query);
    $row=$stmt->FetchNextObject();
      
      function age($birthdate, $pattern = 'eu')
        {
            $patterns = array(
                'eu'    => 'd/m/Y',
                'mysql' => 'Y-m-d',
                'us'    => 'm/d/Y',
                'gh'    => 'd-m-Y',
            );

            $now      = new DateTime();
            $in       = DateTime::createFromFormat($patterns[$pattern], $birthdate);
            $interval = $now->diff($in);
            return $interval->y;
        }
   if($_POST['insertpic']){	

 
if (!$_FILES["files"]["name"])  {echo " <font color='red' style='text-decoration:blink'>Please choose a file to upload</font>"; $error=1;}
  //check if file type is jpeg 
  //elseif ($_FILES["files"]["type"]!="image/jpeg" and $_FILES["file"]["type"]!="image/pjpeg"  ){echo " <font color='red' style='text-decoration:blink'>Only jpeg formats accepted </font>";   		$error=2;  }
 		elseif (($_FILES["files"]["size"] )>25000000) {echo "Only pictures of size less than 250 kb accepted"; $error=3;  }

	 
	 
	 if($error>0){} else{
	 $destination="studentPics/$_SESSION[indexno].jpg";
     move_uploaded_file($_FILES["files"]["tmp_name"],
     $destination);
     if (move_uploaded_file) {//echo "<font color='red' style='text-decoration:blink'> Picture uploaded  successfully </font>" ;
	} 
    		 
}	 
					
					
}

if(isset($_GET["del"])){
     $query=$sql->Prepare("DELETE FROM tbl_student WHERE INDEXNO='$_SESSION[del]'");
     $stmt=$sql->Execute($query);
     $_SESSION[del]="";
     if($stmt){
         header("location:students.php");
     }
 }
if(isset($_GET["new"])){
    
     $_SESSION[indexno]="";
     $met="";
    $query=$sql->Prepare("UPDATE indexno SET no=no + 1");
   if( $stmt=$sql->Execute($query)){
    
     $_SESSION[id] ="";
     $query=$sql->Prepare("SELECT * FROM indexno");
    $stmt=$sql->Execute($query);
    $row=$stmt->FetchNextObject();
    $_SESSION[indexno]=date("Y").$row->NO;
   }
}
 
if(isset($_GET[add])==1){
 // echo $_SESSION[indexno]=$_POST[indexno];
    print_r( $rt=$sql->Prepare("SELECT * FROM tbl_student WHERE INDEXNO='$_POST[indexno]'"));
     $rt=$sql->Execute($rt);
      $age=age($_POST[dob], "mysql");
      if(empty($_POST[id]) ){
    
    print_r($query=$sql->Prepare("INSERT INTO tbl_student SET  DOB=".$sql->Param('a').", SURNAME=".$sql->Param('b')."  , OTHERNAMES=".$sql->Param('c').", GENDER=".$sql->Param('d').",INDEXNO=".$sql->Param('e').",AGE=".$sql->Param('f').",STUDENT_TYPE=".$sql->Param('g')." ,REGION=".$sql->Param('h').",HOMETOWN=".$sql->Param('i').",NATIONALITY=".$sql->Param('j').",PROGRAMME=".$sql->Param('k').",HOUSE=".$sql->Param('l').",CLASS_ADMITED=".$sql->Param('m').",RELIGION=".$sql->Param('n').",CONTACT_ADDRESS=".$sql->Param('o').",DISABILITY=".$sql->Param('p').",EMAIL=".$sql->Param('q').",DATE_ADMITED=".$sql->Param('r').",YEAR_GROUP=".$sql->Param('s').",CLASS=".$sql->Param('z')." "));

           if( $query=$sql->Execute( $query,array($_POST[dob],$_POST[surname],$_POST[othername],$_POST[gender],$_POST[indexno],$age,$_POST[type],$_POST[region],$_POST[hometown],$_POST[country],$_POST[program],$_POST[house] , $_POST[class_admitted],$_POST[religion],$_POST[contact_address],$_POST[disability],$_POST[email],$_POST[date_admitted],$_POST[year_group],$_POST["class"]))){
            
               $_SESSION[indexno]=$_POST[indexno];
              $now= $sql->Prepare("INSERT INTO tbl_class_members(CLASS,STUDENT,YEAR,TERM) values(".$sql->Param('b').",".$sql->Param('c').",".$sql->Param('d').",".$sql->Param('e').")");
               
              if($sql->Execute($now,array($_POST["class"],$_POST[indexno],$school->YEAR,$school->TERM))){
                   
              header("location:addStudent.php?success=$_SESSION[indexno]");
              }
              else{
                   print $sql->ErrorMsg();
              }
           }
     }
     // then update
     else{
         $query=$sql->Prepare("UPDATE tbl_student SET  DOB=".$sql->Param('a').", SURNAME=".$sql->Param('b')."  , OTHERNAMES=".$sql->Param('c').", GENDER=".$sql->Param('d').",INDEXNO=".$sql->Param('e').",AGE=".$sql->Param('f').",STUDENT_TYPE=".$sql->Param('g')." ,REGION=".$sql->Param('h').",HOMETOWN=".$sql->Param('i').",NATIONALITY=".$sql->Param('j').",PROGRAMME=".$sql->Param('k').",HOUSE=".$sql->Param('l').",CLASS_ADMITED=".$sql->Param('m').",RELIGION=".$sql->Param('n').",CONTACT_ADDRESS=".$sql->Param('o').",DISABILITY=".$sql->Param('p').",EMAIL=".$sql->Param('q').",DATE_ADMITED=".$sql->Param('r').",YEAR_GROUP=".$sql->Param('s')." ,CLASS=".$sql->Param('z')." WHERE INDEXNO='$_SESSION[indexno]' ");
         print_r($query);
           if( $sql->Execute( $query,array($_POST[dob],$_POST[surname],$_POST[othername],$_POST[gender],$_POST[indexno],$age,$_POST[type],$_POST[region],$_POST[hometown],$_POST[country],$_POST[program],$_POST[house] , $_POST[class_admitted],$_POST[religion],$_POST[contact_address],$_POST[disability],$_POST[email],$_POST[date_admitted],$_POST[year_group],$_POST["class"]))){
              $_SESSION[indexno]=$_POST[indexno];
               
              
                   $stmt= $sql->Prepare("UPDATE tbl_class_members SET CLASS=".$sql->Param('b').",STUDENT=".$sql->Param('c').",YEAR=".$sql->Param('d').",TERM=".$sql->Param('e')." WHERE STUDENT=".$sql->Param('f')."");
              
                  if($sql->Execute($stmt,array($_POST["class"],$_POST[indexno],$school->YEAR,$school->TERM,$_POST[indexno]))){
              print $sql->ErrorMsg();
                  
                      header("location:addStudent.php?success=$_SESSION[indexno]&&update");
              }
              else{
                   print $sql->ErrorMsg();
              }
               
              // header("location:addStudent.php?success=2");
               
           }
     }
}
if(isset($_GET[page])==2){
        $_SESSION[indexno]=$_POST[indexno];
     $rt=$sql->Prepare("SELECT * FROM tbl_student WHERE INDEXNO='$_SESSION[indexno]'");
     $rt=$sql->Execute($rt);
   
             
           $query=$sql->Prepare("UPDATE tbl_student SET  GUARDIAN_NAME=".$sql->Param('a').", GUARDIAN_ADDRESS=".$sql->Param('b')."  , GUARDIAN_PHONE=".$sql->Param('c').", GUARDIAN_RELATIONSHIP=".$sql->Param('d')." WHERE INDEXNO='$_SESSION[indexno]'");
   
           if($sql->Execute( $query,array($_POST[name],$_POST[address],$_POST[phone],$_POST[relationship] ))){
             $_SESSION[indexno]=$_POST[indexno];
               print $sql->ErrorMsg();
               
               header("location:addStudent.php?success=$_SESSION[indexno]&&guardian");
               
           }
      
}
    $help=new classes\helpers();
    $notify=new classes\Notifications();
     $app->gethead();
 ?>
 <link href="vendors/bootgrid/jquery.bootgrid.min.css" rel="stylesheet">
  <script type="text/javascript" src="js/ajax.js"></script>
 <link href="images/ajax.css"  rel="stylesheet" type="text/css">
<script src="js/reader.js" ></script>
  <script type="text/javascript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>
<style>
    .form-control{
        height:23px;
    }
    .md {
    font-size: 17px;
    vertical-align: middle;
    color: #333;
    margin-right: 10px;
}
</style>
<body>
      
     <?php  $app->getTopRgion() ?>
        
        <section id="main">
             <?php $app->getMenu(); ?>
            
              <?php $app->getChats(); ?>
            
            
          <section id="content">
                <div class="container">
                    <div class="block-header">
                       <?php $notify->displayMessage();  ?>
                    
                         
                    </div>
               <div class="section-body">
                     <div class="card">
                        <div class="card-header">
                            <h2>Add Students/Pupils <small>Basic Information about pupils here</small></h2>
                            <div style="float:right"><a title="click to delete this student" href="addStudent.php?del=<?php   $person= $_GET[indexno] ? : $_SESSION[indexno];echo $person ;?>" onclick="return confirm('Are you sure you want to delete this student')"><i class="md md-delete"></i></a></div>
                        </div>
                        
                        <div class="card-body card-padding">
                            <div class="form-wizard-basic fw-container">
                                <ul class="tab-nav text-center">
                                   
                                    <li><a href="#tab2" data-toggle="tab">Biodata</a></li>
                                    <li><a href="#tab3" data-toggle="tab">Guardian Information</a></li>
                                   
                                     <li><a href="#tab1" data-toggle="tab">Picture Upload</a></li>
                                </ul>
                                <?php
                              if($_GET[update] ||  $_GET["indexno"] ||  $_GET["success"]){
                      
                                 $query=$sql->Prepare("SELECT * FROM tbl_student WHERE     INDEXNO='$_SESSION[indexno]'  ");
                   
                                  $stmt=$sql->Execute($query);
                                 $rows=$stmt->FetchNextObject();
                                   }
                                  elseif( $_GET["new"]){

                                  }
                              
                                  elseif(!$_GET[update] ||  !$_GET["indexno"] ||  !$_GET["success"]||!$_GET['new']){
 

                                        $_SESSION[id] ="";
                                        $query=$sql->Prepare("SELECT * FROM indexno");
                                       $stmt=$sql->Execute($query);
                                       $row=$stmt->FetchNextObject();
                                       $_SESSION[indexno]="AGM".date("Y").$row->NO;
                                       

                                  }
                                   
                                ?>
                                
                                <div class="tab-content">
                                    
                                    <div class="tab-pane fade" id="tab2">
                                        <form action="addStudent.php?add=1" class="form-horizontal" method="POST">
                                                      
                                            <div class="row" align="center"  >
                                 
                                                <div class="col-sm-4">                       
                                    <div class="input-group">
                                        <span class="input-group-addon">Student No</i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" readonly="readonly"  name="indexno" value="<?php echo $rows->INDEXNO ?: $_SESSION[indexno];?>">
                                        </div>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                         <span class="input-group-addon">Date of birth</span>
                                            <div class="dtp-container dropdown fg-line">
                                                <input type='text'name="dob" class="form-control date-picker" title="date of birth" required="" data-toggle="dropdown" value="<?php echo $rows->DOB ?>">
                                        </div>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Class</i></span>
                                        <div class="fg-line">
                                            <select class='form-control'  name='class'    required="">
                                                            <option value=''>select class</option>
                                                           
                                                      <?php 
                                                global $sql;

                                                      $query2=$sql->Prepare("SELECT * FROM tbl_classes");


                                                      $query=$sql->Execute( $query2);


                                                   while( $row = $query->FetchRow())
                                                     {

                                                     ?>
                                                     <option value="<?php echo $row['name']; ?>" <?php  if( $row['name']==$rows->CLASS){echo'selected="selected"';}?>       ><?php echo $row['name']; ?></option>

                                               <?php }?>
                                                       
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Class Admitted</i></span>
                                        <div class="fg-line">    
                                            <select class='form-control'  name='class_admitted'    required="">
                                                            <option value=''>select class admitted</option>
                                                           
                                                      <?php 
                                                global $sql;

                                                      $query2=$sql->Prepare("SELECT * FROM tbl_classes");


                                                      $query=$sql->Execute( $query2);


                                                   while( $row = $query->FetchRow())
                                                     {

                                                     ?>
                                                     <option value="<?php echo $row['name']; ?>" <?php  if( $row['name']==$rows->CLASS_ADMITED){echo'selected="selected"';}?>       ><?php echo $row['name']; ?></option>

                                               <?php }?>
                                                       
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-sm-4">                       
                                    <div class="input-group">
                                        <span class="input-group-addon">Surname</i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control"   name="surname" value="<?php echo $rows->SURNAME ?>" required="">
                                        </div>
                                        <span class="input-group-addon last"><i class="md md-person"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Student type</i></span>
                                        <div class="fg-line">
                                            <select class='form-control'  name='type'   required="" >
                 
                                                    <option value=''>select student type</option>

                                                <option value="Boarding"    <?php if($rows->STUDENT_TYPE=="Boarding"){echo "selected='selected'";} ?>      >Boarding</option>
                                                <option value="Day"    <?php if($rows->STUDENT_TYPE=="Day"){echo "selected='selected'";}?>      >Day</option>
                   

                                          </select>
                                        </div>
                                        <span class="input-group-addon last"><i class="md md-person"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Region</i></span>
                                        <div class="fg-line">
                                            <select class='form-control'  name='region'    required="">
                                                            <option value=''>Choose region</option>
                                                          
                                                   <?php 
                                                global $sql;

                                                      $query2=$sql->Prepare("SELECT * FROM tbl_regions");


                                                      $query=$sql->Execute( $query2);


                                                   while( $row = $query->FetchRow())
                                                     {

                                                     ?>
                                                     <option value="<?php echo $row['NAME']; ?>" <?php if($rows->REGION==$row['NAME']){echo "selected='selected'";} ?>        ><?php echo $row['NAME']; ?></option>

                                                    <?php }?>
                                                       
                                            </select>
                                        </div>
                                        <span class="input-group-addon last"><i class="md md-location-on"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon"> Nationality</i></span>
                                        <div class="fg-line">    
                                                     <select class='form-control'  name='country'    required="">
                                                            <option value=''>Choose Nationality</option>
                                                          
                                                      <?php 
                                                      global $sql;

                                                      $query2=$sql->Prepare("SELECT * FROM tbl_country");


                                                        $query=$sql->Execute( $query2);


                                                     while( $row = $query->FetchRow())
                                                       {

                                                       ?>
                                                       <option value="<?php echo $row['Name']; ?>"   <?php if($rows->NATIONALITY==$row['Name']){echo "selected='selected'";} ?>      ><?php echo $row['Name']; ?></option>

                                                    <?php }?>
                                                       
                                            </select>
                                        </div>
                                        <span class="input-group-addon last"><i class="md md-location-on"></i></span>
                                    </div>
                                </div>
                                
                                <div class="col-sm-4">                       
                                    <div class="input-group">
                                         <span class="input-group-addon"> Othernames</i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control"   name="othername" required="" value="<?php echo $rows->OTHERNAMES?>">
                                        </div>
                                        <span class="input-group-addon last"><i class="md md-person"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Hometown</i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" name="hometown"  required="" value="<?php echo $rows->HOMETOWN ?>">
                                        </div>
                                        <span class="input-group-addon last"><i class="md md-location-on"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Pupil lives with</span>
                                        <div class="fg-line">
                                                            <select class='form-control'  name='program'  placeholder="Program" <?php if($info->SCHOOL_TYPE==3){echo "required=''";} ?> >
                                                            <option   <?php if($rows->PROGRAMME=="Mother"){echo "selected='selected'";} ?> value='Mother'>Mother</option>
                                                             <option  <?php if($rows->PROGRAMME=="Parent"){echo "selected='selected'";} ?> value='Parent'>Parent</option>
                                                             <option  <?php if($rows->PROGRAMME=="Father"){echo "selected='selected'";} ?> value='Father'>Father</option>
                                                             <option  <?php if($rows->PROGRAMME=="Guardian"){echo "selected='selected'";} ?> value='Guardian'>Guardian</option>
                                
                                                       
                                            </select>
                                        </div>
                                        <span class="input-group-addon last"><i class="md md-layers"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Gender</span>
                                        <div class="fg-line">    
                                           <select class='form-control'  name='gender' placeholder="Gender"  required="" >
                 
                                                    <option value=''>select gender</option>

                                                <option value="Male"    <?php if($rows->GENDER=="Male"){echo "selected='selected'";} ?>      >Male</option>
                                                <option value="Female"    <?php if($rows->GENDER=="Female"){echo "selected='selected'";}?>      >Female</option>
                   

                                          </select>
                                        </div>
                                        <span class="input-group-addon last"><i class="md md-person"></i></span>
                                    </div>
                                   </div>
                                   <div class="col-sm-4">                       
                                    <div class="input-group">
                                        <span class="input-group-addon">Religion</i></span>
                                        <div class="fg-line">
                                           <select class='form-control'  name='religion' placeholder="Religion"  required="" >
                 
                                                    <option value=''>select religion</option>

                                                <option value="Christianity"    <?php if($rows->RELIGION=="Christianity"){echo "selected='selected'";} ?>      >Christianity</option>
                                                <option value="Muslim"    <?php if($rows->RELIGION=="Islam"){echo "selected='selected'";}?>      >Islam</option>
                                                <option value="Muslim"    <?php if($rows->RELIGION=="ATR"){echo "selected='selected'";}?>      >ATR</option>

                                          </select>
                                        </div>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Disability</span>
                                        <div class="fg-line">
                                                        <select class='form-control' name='disability'  >
                                                        <option value='None'>None</option>
												
		                                         <option <?php if($rows->DISABILITY=='Blind'){ echo 'selected="selected"'; }?> >Blind</option>
		                                        <option <?php if($rows->DISABILITY=='Deaf'){ echo 'selected="selected"'; }?> >Deaf</option>
		                                        <option <?php if($rows->DISABILITY=='Dumb'){ echo 'selected="selected"'; }?> >Dumb</option>
		                                             
		                                        </select>
                                        </div>
                                    </div>
                                    
                                    <br/>
                                    
                                     
                                </div>
                                  <div class="col-sm-4">                       
                                    <div class="input-group">
                                       <span class="input-group-addon">House</span>
                                        <div class="fg-line">
                                            <select class='form-control'  name='house'  placeholder="House"  required=""  onClick="beginEditing(this);" onBlur="finishEditing();" >
                                                            <option value=''>Choose House</option>
                                                          
                                                      <?php 
                                                global $sql;

                                                      $query2=$sql->Prepare("SELECT * FROM tbl_house");


                                                      $query=$sql->Execute( $query2);


                                                   while( $row = $query->FetchRow())
                                                     {

                                                     ?>
                                                     <option value="<?php echo $row['house']; ?>" <?php if($rows->HOUSE== $row['house']){echo "selected='selected'";} ?>>  <?php echo $row['house']; ?></option>

                                               <?php }?>
                                                       
                                            </select>
                                           
                                        </div>
                                          <span class="input-group-addon last"><i class="md md-person"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Year group</span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" required="" name="year_group"  value="<?php echo $rows->YEAR_GROUP ?>">
                                        </div>
                                        <span class="input-group-addon last"><i class="md md-layers"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                     
                                </div>
                                  <div class="col-sm-4">                       
                                    <div class="input-group">
                                         <span class="input-group-addon">Date Admitted</i></span>
                                            <div class="dtp-container dropdown fg-line">
                                                <input type='text' class="form-control date-picker" data-toggle="dropdown"   name="date_admitted" value="<?php echo $rows->DATE_ADMITED?>">
                                        </div>
                                          <span class="input-group-addon last"><i class="md md-person"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon">Contact Address</i></span>
                                        <div class="fg-line">
                                            <input type="text" class="form-control" name="contact_address"   required="" value="<?php echo $rows->CONTACT_ADDRESS;?>">
                                        </div>
                                          <span class="input-group-addon last"><i class="md md-person"></i></span>
                                    </div>
                                    
                                    <br/>
                                    
                                    <input type="hidden"  name="id" value="<?php echo $rows->ID; ?>"/>
                                </div>
                                                
                                                
                                                
                                         
                                   </div> 
                                            <div>&nbsp;&nbsp;</div>
                                            <div class="row"><center>
                    <input  id="proceed" type="submit"  name="submit" value="Save" class="btn btn-primary btn-large">
                    <input type="reset" class="btn btn-primary btn-large" value="Clear">
                                                            </center></div>
         
                                  </form>
                                        
                                    </div>
                                     <div class="tab-pane fade" id="tab3">
                                         
                        
                                            
                                        <div class="row">
                                            <form action="addStudent.php?page=2" id="addActivity"class="form-horizontal" role="form" method="POST">
                             
                                        <div class="card-body card-padding">
                                            <div class="form-group">
                                                <label for="input" class="col-sm-2 control-label">Guardian Name</label>
                                                <div class="col-sm-10">
                                                    <div class="fg-line">
                                                        <input type="text" required=""name="name" value="<?php echo $rows->GUARDIAN_NAME  ?>" class="form-control input-sm" id="input"     >
                                                    </div>
                                                </div>
                                            </div>
                                        
                                             
                                              
                                            <div class="form-group">
                                                <label for="input" class="col-sm-2 control-label">Guardian Phone</label>
                                                <div class="col-sm-10">
                                                    <div class="fg-line">
                                                        <input type="text" required="" value="<?php echo $rows->GUARDIAN_PHONE  ?>"name="phone" class="form-control input-sm" id="input"   >
                                                    </div>
                                                </div>
                                            </div>
                                               <div class="form-group">
                                                <label for="input" class="col-sm-2 control-label">Guardian Address</label>
                                                <div class="col-sm-10">
                                                    <div class="fg-line">
                                                        <input type="text" required=""name="address" value="<?php echo $rows->GUARDIAN_ADDRESS  ?>"class="form-control input-sm" id="input"   >
                                                    </div>
                                                </div>
                                            </div>
                                            <input type="hidden"  name="indexno" value="<?php echo $rows->INDEXNO; ?>"/>
                                             
                                            <div class="input-group">
                                                    <span class="input-group-addon">Guardian Relationship to Pupil</span>
                                                    <div class="fg-line">
                                                        <select class='form-control' id="ghg"  name='relationship'   required="" >
                                                                        <option <?php if($rows->GUARDIAN_RELATIONSHIP=="Mother"){echo "selected='selected'";} ?>   value='Mother'>Mother</option>
                                                                         <option <?php if($rows->GUARDIAN_RELATIONSHIP=="Parent"){echo "selected='selected'";} ?>  value='Parent'>Parent</option>
                                                                         <option <?php if($rows->GUARDIAN_RELATIONSHIP=="Father"){echo "selected='selected'";} ?>  value='Father'>Father</option>
                                                                         <option <?php if($rows->GUARDIAN_RELATIONSHIP=="Relative"){echo "selected='selected'";} ?> value='Relative'>Relative</option>


                                                        </select>
                                                    </div>
                                                    
                                                </div>
                                           
                                            <input type="hidden" name="id" value="<?php echo $rows->ID  ?>"/>
                                            <div>&nbsp;&nbsp;</div>
                                            <div class="row"><center>
                                                <input  id="proceed" type="submit"  name="submit" value="Save" class="btn btn-primary btn-large">
                                                <input  id="proceed" type="reset"  name="Clear" value="Clear" class="btn btn-default-bright btn-large">
                                                
                                            </center></div>
                                        </div>
                                     </form>
                                        </div>
                                        
                                    </div>
                                     
                                    <div class="tab-pane fade" id="tab1">    
                                         
                                        <?php
                                         
                                        ?>
                                        <form action="" method="POST" enctype="multipart/form-data">
                                                     
                                                     
                                                      <table style="margin-left:35%"width="237" border="1" bordercolor="#D3E5FA">
                                                        <tr>
                                                            <td width="202"  height="191" bgcolor="#EED9BF"><div align="center"><img <?php  echo $help->picture("studentPics/$person.jpg",191)?>  src="<?php echo file_exists("studentPics/$person.jpg") ? "studentPics/$person.jpg":"img/user.jpg";?>" alt=" Picture of Student Here" data-toggle="modal" href="#modalWider"  /></div></td>
                                                        </tr>
                                                        <tr>
                                                          <td  bgcolor="#C88433" ><p align="center">
                                                               <?php    if($teacher->USER_TYPE!="Administrator" ){}else{?>
                                                                                <input name="files"   type="file" id="files" size="5" <?php  if( $person!=""){} else {echo 'disabled="disabled"';} ?> />
                                                                                <input type="submit" name="insertpic" <?php  if( $person!=""){} else {echo 'disabled="disabled"';} ?> id="insertpic" value="Upload" />
                                                                                <?php }?>
                                                          </p></td>
                                                        </tr>
                                                        <tr>
                                                            <?php if($teacher->USER_TYPE=="Administrator" or  $teacher->USER_TYPE=="Financial Administrator" or $teacher->USER_TYPE=="Registration Officer"){?>
                                                          <td  bgcolor="#8A6530" ><img data-toggle="modal" href="#modalWider" src="img/images.jpg" width="60" height="38" alt="dfd" /></td>
                                                            <?php }?>
                                                        </tr>
                                                        
                                                      </table>
                                                     
                                       
                                                 
                                             </form>
                                          <div class="form-group">
                                              <br/>
                                            <?php      if($teacher->USER_TYPE=="Administrator" or $teacher->USER_TYPE=="Financial Administrator" or  $teacher->USER_TYPE=="Registration Officer"){?>  
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <a  style="margin-left:25%"href="addStudent.php?new" class="btn btn-primary btn-sm">Add New Student</a>
                                    </div>
                                            <?php } ?>  
                                          </div> 
                                            </div>
                                </div>
                                         
                                   
                                    <ul class="fw-footer pagination wizard">
                                         
                                        <li class="previous"><a class="a-prevent" href="#"><i class="md md-chevron-left"></i></a></li>
                                        <li class="next"><a class="a-prevent" href="#"><i class="md md-chevron-right"></i></a></li>
                                         
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                   			<!-- END VALIDATION FORM WIZARD -->
                                        
                   <?php      if($teacher->USER_TYPE=="Administrator"){?>
                                        <div class="modal fade" id="modalWider" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Photo Upload</h4>
                                        </div>
                                        <div class="modal-body">
<title>Photo booth</title>
                            
<script src="swfobject.js" language="javascript"></script>
</head>
<div id="flashArea" class="flashArea" style="height:100%;"><p align="center">This content requires the Adobe Flash Player.<br /><a href="http://www.adobe.com/go/getflashplayer">
						<img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /><br />
    <a href=http://www.macromedia.com/go/getflash/>Get Flash</a></p>
	</div></td>
  </tr>

  <script type="text/javascript">
	var mainswf = new SWFObject("take_picture.swf", "main", "700", "400", "9", "#ffffff");
	mainswf.addParam("scale", "noscale");
	mainswf.addParam("wmode", "window");
	mainswf.addParam("allowFullScreen", "true");
	//mainswf.addVariable("requireLogin", "false");
	mainswf.write("flashArea");
	
  </script>
 <script type="text/javascript">


</script>
                                    </div>
                                </div>
                            </div>

                   </div><?php  }?>
                </div>
                     
                    
                    
                </div>
            </section>
        </section>
        
         
        <?php $app->getDashboardScript() ; $app->getuploadScript(); ?>
      
  <script src="vendors/bootgrid/jquery.bootgrid.min.js"></script>
        <script src="js/waves/waves.min.js"></script>
        <!-- Data Table -->
         <!-- Data Table -->
        <script type="text/javascript">
            $(document).ready(function(){
                //Basic Example
                $("#data-table-basic").bootgrid({
                    css: {
                        icon: 'md icon',
                        iconColumns: 'md-view-module',
                        iconDown: 'md-expand-more',
                        iconRefresh: 'md-refresh',
                        iconUp: 'md-expand-less'
                    },
                });
                
                //Selection
                $("#data-table-selection").bootgrid({
                    css: {
                        icon: 'md icon',
                        iconColumns: 'md-view-module',
                        iconDown: 'md-expand-more',
                        iconRefresh: 'md-refresh',
                        iconUp: 'md-expand-less'
                    },
                    selection: true,
                    multiSelect: true,
                    rowSelect: true,
                    keepSelection: true
                });
                
                //Command Buttons
                $("#data-table-command").bootgrid({
                    css: {
                        icon: 'md icon',
                        iconColumns: 'md-view-module',
                        iconDown: 'md-expand-more',
                        iconRefresh: 'md-refresh',
                        iconUp: 'md-expand-less'
                    },
                    formatters: {
                        "commands": function(column, row) {
                            return "<button type=\"button\" class=\"btn btn-icon command-edit\" data-row-id=\"" + row.id + "\"><span class=\"md md-edit\"></span></button> " + 
                                "<button type=\"button\" class=\"btn btn-icon command-delete\" data-row-id=\"" + row.id + "\"><span class=\"md md-delete\"></span></button>";
                        }
                    }
                });
            });
        </script>
       <script src="vendors/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
        <script src="vendors/summernote/summernote.min.js"></script>
        <script src="vendors/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
        <script src="vendors/fileinput/fileinput.min.js"></script>
    </body>
  
</html>
