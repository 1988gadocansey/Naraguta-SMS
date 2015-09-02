 <?php
 ini_set('display_errors', 0);
    require 'vendor/autoload.php';
    include "library/includes/config.php";
     include "library/includes/initialize.php";
     $help=new classes\helpers();
      $teacher2=new classes\Teacher();  $teacher=$teacher2->getTeacher_ID($_SESSION[ID]);
     
         $instructor= $teacher2->getTeacher_Class($teacher->EMP_NUMBER);
         
      if($_POST['send']){
				   
	 $_SESSION['connected']=$help->ping("www.google.com",80,20);
          
		  $_all=$_POST['students'];
                  $student_plod[]=explode(",",$module);
		    
		    for($i=0;$i <= count($_all);$i++){
                  
        
                     $query=$sql->Prepare("select * from tbl_student  where  INDEXNO ='$_all[$i]' ");
                     
                      
	//echo $query;
	 $thestring=$_POST['sms'];

        $t=$sql->Execute($query) ;
        while($v=$t->FetchRow($t)){
			   
			   $StudentID=$v['INDEXNO'];
                             $SURNAME=$v['SURNAME'];
                            $OTHERNAMES=$v['OTHERNAMES'];
                            $FORM=$v['CLASS'];
                            $TOTALBALANCE=($v['OTHER_BILLS']+$v['PTA_OWING']+$v['ACADEMIC_OWING']);
                            $BALANCE=$v['BILLS']-$TotalBalance;
                             $PTA=$v['PTA'];
                             $ACADEMIC=$v['ACADEMIC'];
			      
			  $type="Student";
			  //$name="$OTHERNAMES  $SURNAME";
			  $parentphone=$v["GUARDIAN_PHONE"];
			  			  if($parentphone){	  
			  $newstring=str_replace("]", "", "$thestring");
			  $finalstring=str_replace("[", "$", "$newstring");
			  eval("\$finalstring =\"$finalstring\" ;");
			   $finalstring;
         //$help->sendtxt($finalstring,$parentphone,$type,$name);

                               }
			                        }
			 $_SESSION['connected']='';
			 
			 
		  }
			 
			 
			 
			  }
    $app=new classes\structure();
    $help=new classes\helpers();
    $notify=new classes\Notifications();
     $app->gethead();
 ?>
 <link href="vendors/bootgrid/jquery.bootgrid.min.css" rel="stylesheet">
 <script src="js/jquery.js"></script>
 <script src="js/jquery_003.js"></script>
  
 <style>
     .container {
    width: 1549px;
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
                           <p>
							Generate customised reports   send sms,edit students data here
                            </p>
                            <div style="margin-top:-3%;float:right">
                                <button class="btn bgm-pink waves-effect">SMS</button>
                                 <button   class="btn btn-primary waves-effect waves-button dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                                        <ul class="dropdown-menu">
                                            
                                            <li><a href="#" onClick ="$('#data-table-command').tableExport({type:'csv',escape:'false'});"><img src='img/icons/csv.png' width="24"/> CSV</a></li>
                                            <li><a href="#" onClick ="$('#data-table-command').tableExport({type:'txt',escape:'false'});"><img src='img/icons/txt.png' width="24"/> TXT</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#" onClick ="$('#data-table-command').tableExport({type:'excel',escape:'false'});"><img src='img/icons/xls.png' width="24"/> XLS</a></li>
                                            <li><a href="#" onClick ="$('#data-table-command').tableExport({type:'doc',escape:'false'});"><img src='img/icons/word.png' width="24"/> Word</a></li>
                                            <li><a href="#" onClick ="$('#data-table-command').tableExport({type:'powerpoint',escape:'false'});"><img src='img/icons/ppt.png' width="24"/> PowerPoint</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#" onClick ="$('#data-table-command').tableExport({type:'png',escape:'false'});"><img src='img/icons/png.png' width="24"/> PNG</a></li>
                                            <li><a href="#" onClick ="$('#data-table-command').tableExport({type:'pdf',escape:'false'});"><img src='img/icons/pdf.png' width="24"/> PDF</a></li>
                                        </ul>
                            </div>
                        </div>
                        <div class="table-responsive">
                        <div class="row">
                            
                            <form action="students.php?sub=1" method="post" id="" class=" ">

            <table  width="%" border="0">
                <tr>
                    <?php   if($teacher->USER_TYPE=='Financial Administrator'){ ?>
                    <td width="10%" >

                         <div class="input-daterange input-group" id="dp_range"  style="margin-left:16%;Width:113%">
                             <input type="text" class="form-control" title="bills owing less than" name="bill_less" placeholder="Bills <"  />
                                        <span class="input-group-addon"></span>
                                        <input type="text" class="form-control" title="bills owing greater than" name="bill_greater" placeholder="Bills >"  />
                                    </div>
                    </td>
                    <?php } ?>
                    <td>&nbsp;&nbsp;</td>
                    <td width=" ">

                        <select class='form-control'  name='status'  style="margin-left:36%;Width:87%"  >
                            <option value=''>Filter by Status</option>
                  	  <option value='all'>All</option>
                      <?php 
                global $sql;
 
                      $query2=$sql->Prepare("SELECT DISTINCT STATUS FROM tbl_student");


                      $query=$sql->Execute( $query2);
                     
                   
                   while( $row = $query->FetchRow())
                     {
                       
                     ?>
                     <option value="<?php echo $row['STATUS']; ?>"        ><?php echo $row['STATUS']; ?></option>

               <?php }?>
                        </select>

                    </td>
                    <td width="20%">
 
                     <select  class='form-control' name='gender'       style="margin-left:36%;Width:60%">
                     <option value=''>By Gender</option>
                        <option value='all'>All</option>
                        <option value='Male'>Males</option>
                        <option value='Females'>Females</option>

                 </select>
 
        </td> 
         <td>&nbsp;&nbsp;</td>
         
         <?php if($teacher->USER_TYPE=='Administrator'){?>
        <td width="10%">
             
             
            <select class='form-control'  name='class'   >
                            <option value=''>Filter by classes</option>
                  	  <option value='all'>All</option>
                      <?php 
                global $sql;
 
                      $query2=$sql->Prepare("SELECT * FROM tbl_classes");


                      $query=$sql->Execute( $query2);
                     
                   
                   while( $row = $query->FetchRow())
                     {
                       
                     ?>
                     <option value="<?php echo $row['name']; ?>"        ><?php echo $row['name']; ?></option>

               <?php }?>
                        </select>

             
         </td><?php }?>
        <td>&nbsp;</td>
        
        <td>
             
            <div class="form-action ">
                    <button type="submit" class="btn ink-reaction btn-raised btn-primary">Search</button>

            </div>
        </td>
    </form>
                    <?php if($teacher->USER_TYPE=='Administrator'){      ?>      
                      
               <td>&nbsp;</td>
                <td width="20%">
                 <select class='form-control'   id='status' onChange="document.location.href='<?php echo $_SERVER['PHP_SELF']; ?>?class='+escape(this.value);"   style="margin-left:13%;Width:60%">
                 <option value=''>Filter by class</option>
                  	  <option value='all'>All</option>
                      <?php 
                global $sql;
 
                      $query2=$sql->Prepare("SELECT * FROM tbl_classes");


                      $query=$sql->Execute( $query2);
                     
                   
                   while( $row = $query->FetchRow())
                     {
                       
                     ?>
                     <option value="<?php echo $row['name']; ?>"        ><?php echo $row['name']; ?></option>

               <?php }?>
                        </select>
      
            </td>
                     
            
        <td>&nbsp;</td>
         <td width=" ">
             <!--
                        <select class='form-control'  name='combination' id='status' style="margin-left:-50%;Width:105%" onchange="document.location.href='<?php echo $_SERVER['PHP_SELF']; ?>?combination='+escape(this.value);">
                            <option value=''>Filter by Course comb</option>
                  	  <option value='all'>All</option>
                      <?php 
                global $sql;
 
                      $query2=$sql->Prepare("SELECT * FROM tbl_combination");


                      $query=$sql->Execute( $query2);
                     
                   
                   while( $row = $query->FetchRow())
                     {
                       
                     ?>
                     <option value="<?php echo $row['nasme']; ?>"        ><?php echo $row['nsame']; ?></option>

               <?php }?>
                        </select>
             -->
                    </td>
                    <td>&nbsp;</td>
               <td width="10%">
             <!--
             
                     <select  class='form-control' style="margin-left:-14%;Width:97%" name='program'  onchange="document.location.href='<?php echo $_SERVER['PHP_SELF']; ?>?program='+escape(this.value);">
                                             
                         <option value=''>Select program</option>
                         <option value='all'>All</option>

                         <?php 
                global $sql;
 
                      $query2=$sql->Prepare("SELECT * FROM tbl_program");


                      $query=$sql->Execute( $query2);
                     
                   
                   while( $row = $query->FetchRow())
                     {
                       
                     ?>
                     <option value="<?php echo $row['CODE']; ?>"        ><?php echo $row['NAMhE']; ?></option>

               <?php }?>
                        </select>

           -->  
        </td>
        <td width=" ">

                        <select class='form-control'  name='year'  style="margin-left:-10%;Width:106%" onchange="document.location.href='<?php echo $_SERVER['PHP_SELF']; ?>?year='+escape(this.value);" >
                            <option value=''>Filter by graduating year</option>
                  	  <option value='all'>All</option>
                      <?php 
                global $sql;
 
                      $query2=$sql->Prepare("SELECT DISTINCT YEAR_GROUP FROM tbl_student");


                      $query=$sql->Execute( $query2);
                     
                   
                   while( $row = $query->FetchRow())
                     {
                       
                     ?>
                     <option value="<?php echo $row['YEAR_GROUP']; ?>"        ><?php echo $row['YEAR_GROUP']; ?></option>

               <?php }?>
                        </select>

                    </td>
                        <?php }?>
         
    </tr>  
</table>
 
 
<p>&nbsp;</p>
            </div><!--end .row -->
            <div class=" ">
                 <div class="panel panel-collapse">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                <center>Send SMS</center>
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">
                                            <form id="form2" name="form2" method="post" action="students.php?send=1">
                    <label></label>
                    <table width="640" border="0" align="center">
                      <tr>
                        <td colspan="2" bgcolor="#91B7D9">Select Students to txt their parents</td>
                      </tr>
                      <tr>
                        <td colspan="2" bgcolor="#2D5982">
                            <select id="unit" class="tag-select" multiple="multiple" data-placeholder="select students to send sms to their parents"  name="student">
                                                         <option value=''>select student</option>
                                                           
                                                                <?php 
                                                          global $sql;
                                                          
                                                            if($teacher->USER_TYPE!='Administrator'){
                                                                $class=" WHERE CLASS='$instructor->CLASSID'";
                                                            }
                                                            else{
                                                                $class="";
                                                            }
                                                                $query2=$sql->Prepare("SELECT * FROM tbl_student $class");


                                                                $query=$sql->Execute( $query2);


                                                             while( $row = $query->FetchRow())
                                                               {

                                                               ?>
                                                               <option value="<?php echo $row['INDEXNO'] ?>"     >     <?php echo $row['INDEXNO']." - ".$row['OTHERNAMES']; ?></option>

                                                         <?php }?>
                                                          </select>
                            
                          </td>
                      </tr>
                      <tr>
                        <td bgcolor="#91B7D9"><div align="center"><strong>Text Message</strong></div></td>
                        <td valign="top" bgcolor="#91B7D9"><div align="center"><strong>Fields Available</strong></div></td>
                      </tr>
                      <tr>
                        <td width="419" height="110" bgcolor="#2D5983"><div align="center">
                            <textarea name="sms" id="sms" cols="45" rows="5"></textarea>
                        </div></td>
                        <td width="211" valign="top" bgcolor="#2D5983"><div align="center">
                            <script>
						function inse(inco){
						var curr=document.getElementById('sms');
						curr.value=curr.value+"["+inco+"]"
						}
						</script>
                            <select name="select"  ondblclick="inse(this.value)" size="6" id="select">
                              <option value="INDEXNO"> Student ID</option>
                              <option value="SURNAME">Surname</option>
                              <option value="OTHERNAMES">Other Names</option>
                              <option value="CLASS">Class</option>
                              <option value="BILLS">Total Bills</option>
                              <option value="PTA_OWING">PTA</option>
                              <option value="BILLS_PAID">Bills paid</option>
                              <option value="ACADEMIC_OWING">Academic Owing</option>
                              <option value="OTHERS_OWING">Other Bills</option>
                                
                            </select>
                        </div></td>
                      </tr>
                      <tr>
                        <td colspan="2"><label>
                            <div align="center">
                                <center>   <input type="submit" class="btn btn-success" name="send" id="send" value="Send Message" /></center>
                            </div>
                          </label></td>
                      </tr>
                    </table>
                    <label> </label>
                    <label></label>
                  </form>
                                            
                                            
                                        </div>
                                    </div>
                                </div>

            </div>
             <?php 
             if(isset($_GET['sub'])==1){
                 $gender=$_POST['gender'];
                 $class=$_POST['class'];
                 $status=$_POST['status'];
                 $bills_greater=$_POST['bill_greater'];
                 $bills_less=$_POST['bill_less'];
                if(!empty($gender) && !empty($class) && !empty($status) && !empty($bills_greater)&& !empty($bills_less)){
                      $end_query="WHERE  GENDER= '$gender'   AND CLASS='$class' AND  STATUS='$status' AND BILLS >  '$bills_greater' AND BILLS < '$bills_less' ";
                  }
                 
                 
                    else{

                    }
                
                  }
                 elseif(isset($_GET['program'])){
                 if($_GET['program']=="all"){
                     $end_query="";
                       }
                 else{ $end_query="WHERE PROGRAMME='$_GET[program]'   ";}
                  }
                  elseif(isset($_GET['class'])){
                 if($_GET['class']=="all"){
                     $end_query="";
                       }
                 else{ $end_query="WHERE CLASS='$_GET[class]'   ";}
                  }
                  elseif(isset($_GET['combination'])){
                 if($_GET['combination']=="all"){
                     $end_query="";
                       }
                 else{ $end_query="WHERE SUBJECT_COMBINATIONS='$_GET[combination]'   ";}
                  }
                   elseif(isset($_GET['year'])){
                 if($_GET['year']=="all"){
                     $end_query="";
                       }
                 else{ $end_query="WHERE YEAR_GROUP='$_GET[year]'   ";}
                  }
                  
                                              $_SESSION[last_query]=     $stmt =$sql->Prepare( "SELECT * FROM tbl_student  $end_query ");
                                                    $out=$sql->Execute($stmt);
                                                    $total=$out->RecordCount();
                                                    if($out->RecordCount()>0){
             ?>
            <p style="color:green"><center>Filter by (<?php echo $end_query;?>) Total records = <?php echo $total; ?></center></p>
                    
            <table id="data-table-command" class="table table-striped table-vmiddle" >
                            <thead bgcolor="#91B7D8">
                                <tr>
                                    <th  data-column-id="kk" data-type="numeric">No</th>
                                     <th  data-column-id="link" data-formatter="link">Pic</th>
                                    <th data-column-id="indexno">Index No</th>
                                    <th data-column-id="surname" data-order="asc">Name</th>
                                     <th data-column-id="gender"  >Gender</th>
                                    <th data-column-id="phone"   data-type="numeric">Phone</th>
                                    <th data-column-id="guardian-name"  >Guardian</th>
                                    <th data-column-id="guardian-phone"  >Guardian Phone</th>
                                    
                                    <th data-column-id="class"  >Class</th>
                                    
                                    <th data-column-id="Year Group"  >Year Grp</th>
                                    <?php  if($teacher->USER_TYPE=="Administrator"){ ?>
                                    <th data-column-id="status"  >Status</th>
                                    <th data-column-id="bill-outstanding"  >Bill Outstanding</th>
                                    <th data-column-id="Bills-Paid"  >Bills Paid</th>
                                    <th data-column-id="bills-owing"  >Bills Owing</th>
                                    <th data-column-id="Issues"  >Issues</th>
                                    <th data-column-id="commands" data-formatter="commands" data-sortable="false"> </th>
                                    <?php } ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $count=0;
                                    while($rt=$out->FetchRow()){
                                                            $count++;
                                       ?>
                                      <tr>
                                    <td><?php  echo $count; ?></td>
                                   	<td></td>
                                    <td><?php  echo $rt[INDEXNO]; ?></td>
                                    <td><?php  echo $rt[SURNAME].",".$rt[OTHERNAMES] ?></td>
                                     
                                    <td><?php  echo $rt[GENDER]; ?></td>
                                    <td><?php  echo $rt[PHONE]; ?></td>
                                    <td><?php  echo $rt[GUARDIAN_NAME]; ?></td>
                                    <td><?php  echo $rt[GUARDIAN_PHONE]; ?></td>
                                    
                                    <td><?php  echo $rt["CLASS"]; ?></td>
                                     
                                    <?php if($teacher->USER_TYPE=="Administrator"){ ?>
                                    <td><?php  echo $rt[YEAR_GROUP]; ?></td>
                                    <td><?php  echo $rt[STATUS]; ?></td>
                                    <td><?php  echo number_format($rt[BILLS], 2, '.', ','); ?></td>
                                    <td><?php  echo number_format($rt[BILLS_PAID], 2, '.', ',')?></td>
                                    <td><?php   $A=$rt[BILLS]-$rt[BILLS_PAID];ECHO number_format($A, 2, '.', ',') ?></td>
                                     
                                     
                                      <?php }?>
                                
                                     </tr>
                                    <?php } ?>
                            </tbody>
            </table>
                                    <?php }else{
                  echo "<div class='alert alert-danger alert-dismissible' role='alert'>
                                <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                                Oh snap! Something went wrong. No record to display! Please upload students data
                            </div>";
             }?>
                    </div>
                </div>
                </div>
                     </div>
                    
                    
                </div>
            </section>
        </section>
        
         
        <?php  $app->getDashboardScript() ; $app->getuploadScript(); ?>
        <script src="vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="vendors/chosen/chosen.jquery.min.js"></script>
<script src="js/editableSelectBox.js"></script>
  <script src="vendors/bootgrid/jquery.bootgrid.min.js"></script>
       
       <script type="text/javascript">
            $(document).ready(function(){
                
                
                //Command Buttons
                $("#data-table-command").bootgrid({
                    css: {
                        icon: 'md icon',
                        iconColumns: 'md-view-module',
                        iconDown: 'md-expand-more',
                        iconRefresh: 'md-refresh',
                        iconUp: 'md-expand-less'
                    },
                     caseSensitive: false,
					  formatters: {
						"link": function(column, row)
						{
							 var cellValue = row["indexno"];
							return "<a href='addStudent.php?indexno="+cellValue+"'><img  src='studentPics/"+cellValue+".jpg' style='width:79px;height:67px'   alt=\"student pic here\" /></a>";
						}
						  					}
					 

                });
            });
        </script>
        <?php $app->exportScript() ?>
    </body>
  
</html>
