 <?php
 ini_set('display_errors', 0);
    require 'vendor/autoload.php';
    include "library/includes/config.php";
     include "library/includes/initialize.php";
     $help=new classes\helpers();
	 $school=new classes\School();
	 $school=$school->getAcademicYearTerm();
	  $student=new classes\Student();
      
			   
		$app=new classes\structure();
		$help=new classes\helpers();
		$notify=new classes\Notifications();
		$app->gethead();
		$teacher=new classes\Teacher();  $teacher=$teacher->getTeacher_ID($_SESSION[ID]);
	 if(isset($_GET[delete])){
		/*( 
	 	 $stmt=$sql->Prepare("DELETE FROM tbl_  where  INDEXNO =".$sql->Param('a')." ");
		 if($ql->Execute($stmt,array($_GET[delete]))){
				header("location:class_list.php?success=1");
			}
      	else{
				header("location:class_list.php?error=1");
			} */
     
	 }
	  
 ?>
 <link href="vendors/bootgrid/jquery.bootgrid.min.css" rel="stylesheet">
  
  <style>
     .container {
    width: 1380px;
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
                           <p>
							Class List
                            </p>
                          <div style="margin-top:-3%;float:right">
                               
                               <?php if($teacher->USER_TYPE=='Teacher'){ ?>  <button   class="btn btn-primary waves-effect waves-button dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button><?php }?>
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
                        <div class="row">
                           

                <table  width=" " border="0">
                    <tr>

                     
                	    <td>&nbsp;</td>
                            <?php   if($teacher->USER_TYPE=='Administrator'){?>
                <td width="25%">
                 <select class='form-control'   id='status' onChange="document.location.href='<?php echo $_SERVER['PHP_SELF']; ?>?class='+escape(this.value);"   style="margin-left:14%;Width:60%">
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
                            <?php }?>
				 <td width="25%">
                <select class='form-control'  name='year'  style="margin-left:2%; width:55% " onchange="document.location.href='<?php echo $_SERVER['PHP_SELF']; ?>?subject='+escape(this.value);" >
                  <option value=''>Filter subject</option>
                  	  <option value='all'>All</option>
                      <?php 
                global $sql;
 
                      $query2=$sql->Prepare("SELECT DISTINCT name FROM tbl_courses");


                      $query=$sql->Execute( $query2);
                     
                   
                   while( $row = $query->FetchRow())
                     {
                       
                     ?>
                     <option value="<?php echo $row['name']; ?>"        ><?php echo $row['name']; ?></option>

               <?php }?>
                        </select>
      
            </td>
                      
               <td>&nbsp;</td>
                 <td width="20%">

            <select class='form-control'  name='year'  style="margin-left:-25%;  width:58% " onchange="document.location.href='<?php echo $_SERVER['PHP_SELF']; ?>?term='+escape(this.value);" >
                             <option value=''>Filter by term</option>
                            <option value='all'>All</option>
                  	        <option value='1'>1</option>
                      		<option value='2'>2</option>
                            <option value='3'>3</option>
                
                        </select>

         </td>
         <td>&nbsp;</td>
          <td width="30%">

            <select class='form-control'  name='year'  style="margin-left:-14%; width:68% " onchange="document.location.href='<?php echo $_SERVER['PHP_SELF']; ?>?year='+escape(this.value);" >
                             <option value=''>Filter by academic year</option>
                            <option value='all'>All</option>
                  	         <?php
							 	for($i=2008; $i<=date("Y"); $i++){
									$a=$i - 1 ."/". $i;
										echo "<option value='$a'>$a</option>";
									
									}
							 
							 
							 ?>
                
                        </select>

         </td>
        
    </tr>  
</table>
 
 
<p>&nbsp;</p>
            </div><!--end .row -->
             
             <?php 
              
			  	  if(isset($_POST[sub])){
					  $end_query=" AND (c.classId   LIKE '%$_POST[search]%' OR  c.term LIKE '%$_POST[search]%' OR  c.name LIKE '%$_POST[search]%' OR c.year   LIKE '%$_POST[search]%')  ";
					}
                  elseif(isset($_GET['class'])){
                 if($_GET['class']=="all"){
                     $end_query="";
                       }
                 else{ $end_query=" AND c.classId='$_GET[class]'   ";}
                  }
				   elseif(isset($_GET['term'])){
                 if($_GET['term']=="all"){
                     $end_query="";
                       }
                 else{ $end_query=" AND  c.term='$_GET[term]'   ";}
                  }
				  elseif(isset($_GET['year'])){
                 if($_GET['year']=="all"){
                     $end_query="";
                       }
                 else{ $end_query=" AND  c.year='$_GET[year]'   ";}
                  }
                  
                  elseif(isset($_GET['subject'])){
                 if($_GET['subject']=="all"){
                     $end_query="";
                       }
                 else{ $end_query=" AND  c.name='$_GET[subject]'   ";}
                  }
                   
                  
				  $_SESSION[last_query]=  $query= $sql->Prepare( "SELECT * FROM tbl_courses AS c JOIN tbl_workers AS w ON c.teacherID=w.emp_number AND c.teacherID='$teacher->EMP_NUMBER'  $end_query ");
                                                
											 $stmt =$sql->Prepare($query);
                                                    $out=$sql->Execute($stmt);
                                                    $total=$out->RecordCount();
                                                    if($out->RecordCount()>0){
             ?>
              <p style="color:green"><center>Filter by (<?php echo $end_query;?>) Total records = <?php echo $total; ?></center></p>
                    <div class="table-responsive">
                        <table id="data-table-command" class="table table-bordered table-vmiddle table-hover"  >
                            <thead>
                                <tr>
                                    <th style ='display:none' data-visible="false" data-identifier="true" data-column-id="id" >keys</th>
                                     <th>No</th>
                                     <th data-column-id="Subject" data-type=" " data-toggle="tooltip">Subject</th>
                                    <th style="text-align:center" data-type="string" data-column-id="Class" style="text-align:center">Class</th>
                                    <th data-column-id="Teacher">Teacher</th>
                                    <th data-column-id="Academic Year" data-order="asc" style="text-align:center">Academic Year</th>
                                    <th data-column-id="Term" style="text-align:center">Term</th>
                                    
                                    <th data-column-id="No of Students" data-order="asc" style="text-align:center">No of Students</th>
                                     <th  data-column-id="link" data-formatter="link"></th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $count=0;
                                    while($rt=$out->FetchRow()){
                                                            $count++;
															
                                       ?>
                                    <tr>
                                    <td data-visible="false"><?php echo $rt[id] ?></td>
                                     <td><?php echo $count ?></td>
                                  	 
                                    <td id='no' style="text-align:left"><?php  echo $rt[name] ?></td>
                                    <td style="text-align:left"><?php  echo $rt[classId] ?></td>
                                    <td style="text-align:left"><?php  echo $rt[title]." ". $rt[surname]." ".$rt[Name] ?></td>
                                    <td style="text-align: "><?php  echo $rt[year] ?></td>
                                    <td style="text-align:center"><?php  echo $rt[term] ?></td>
                                    <td style="text-align:center"><?php  echo $student->getTotalStudent_by_Class($rt[classId],$school->YEAR,$school->TERM); ?></td>
                                     
                                
                                     </tr>
                                    <?php } ?>
                            </tbody>
                          </table></div>
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
            </section>
        </section>
        
         
        <?php  $app->getDashboardScript() ; $app->getuploadScript(); ?>
 <script src="vendors/bootgrid/jquery.bootgrid.min.js"></script>
       
          <script src="vendors/bootgrid/jquery.bootgrid.min.js"></script>
       
        <!-- Data Table -->
         <!-- Data Table -->
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
							 var cellValue = row["Class"]+"&&subject="+row["Subject"];
							return "<a     href=\"list.php?class="+cellValue+"  \"> <span class=\"md md-edit\"></span>   </a>";
						}
						 }
					 

                });
            });
        </script>
        <?php $app->exportScript() ?>
    </body>
  
</html>
