<?php
ini_set('display_errors', 0);
    require 'vendor/autoload.php';
    include "library/includes/config.php";
     include "library/includes/initialize.php";
    $app=new classes\structure();
    $notify=new classes\Notifications();
    
    if(isset($_GET[upload])=="biodata"){
     
	 // Gad Ocansey
	// Get Extension of the File.
	$extension= end(explode(".", basename($_FILES['file']['name'])));
	// isset Determines if a variable is set and is not ?. Set Size Limit less then 10 MB=10485760 bytes. Extension must be CSV.
	if (isset($_FILES['file']) && $_FILES['file']['size'] < 10485760 && $extension== 'csv')
	{  
                // We will get csv file and save it in a $file
            $file = $_FILES['file']['tmp_name']; 
                //$handle is a valid file pointer to a file successfully opened by fopen(), popen(), or fsockopen(). fopen() used to open file.
            $handle = fopen($file, "r"); 
                        // We will use try{} Catch() statements here. 
    	try { 
		 
		 
		 
        // Prepare the statement for the insertion in the table
        $query=$sql->Prepare("INSERT INTO `tbl_student` ( `SURNAME`, `OTHERNAMES`, `TITLE`, `GENDER`, `INDEXNO`, `DOB`, `STUDENT_TYPE`, `REGION`, `HOMETOWN`, `NATIONALITY`, `PHONE`, `PREVIOUS_SCHOOL`, `PROGRAMME`, `CLASS_ADMITED`, `RELIGION`, `RESIDENCE_ADDRESS`, `CONTACT_ADDRESS`, `DISABILITY`, `CLASS`, `EMAIL`, `SUBJECT_COMBINATIONS`, `DATE_ADMITED`, `DATE_TO_COMPLETE`, `IS_SCHOLARSHIP`, `GUARDIAN_NAME`, `GUARDIAN_PHONE`, `GUARDIAN_RELATIONSHIP`, `GUARDIAN_ADDRESS`, `ISSUES`, `STATUS`) VALUES ( ".$sql->Param('a')." ,".$sql->Param('b').",".$sql->Param('c').",".$sql->Param('d').",".$sql->Param('e').",".$sql->Param('f').",".$sql->Param('g').",".$sql->Param('h').",".$sql->Param('i').",".$sql->Param('j').",".$sql->Param('k').",".$sql->Param('l').",".$sql->Param('m').",".$sql->Param('n').",".$sql->Param('o').",".$sql->Param('p').",".$sql->Param('q').",".$sql->Param('r').",".$sql->Param('s').",".$sql->Param('t').",".$sql->Param('u').",".$sql->Param('v').",".$sql->Param('w').",".$sql->Param('x').",".$sql->Param('y').",".$sql->Param('z').",".$sql->Param('aa').",".$sql->Param('ab').",".$sql->Param('ac').",".$sql->Param('ad').")");
	 
			if ($handle !== FALSE) 
			{
				// fgets() Gets a line from file pointer and read the first line from $handle and ignore it.   
        		fgets($handle);
        		// While loop used here and  fgetcsv() parses the line it reads for fields in CSV format and returns an array containing the fields read. 
        		$_SESSION["total"]=count($data);
                        while (($data = fgetcsv($handle, 1000, ',')) !== FALSE)
				{
				// For Executing prepared statement we will use below function
                            
                                     $a=$sql->Execute($query,$data);
                                    
                                    
        		        }       
				//The file pointed to by handle will be closed.
        		fclose($handle);
				
				// Closing MySQL database connection
    			$dbh = null; 
				// If data inserted successfully we will redirect this page to index.php and show success message there with code 77083368
				header( "location:bulk_upload_students.php?success=1"); 
				
						
			}

    	}
		//  
		catch(PDOException $e)
		{
        die($e->errorInfo);
    	}


	}
	else 
	{
	// Error mesage id File type is not CSV or File Size is greater then 10MB.
    header( "location:bulk_upload_students.php?error=failed");
	}
 }
    $app->gethead();
     
?>
 
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
                
                     
                    <div class="card">
                        <div class="card-header">
                            <h2><header>UPLOAD BULK STUDENTS BIODATA HERE (Template)</header>
                            </small></h2>
                        </div>
                        
                        <div class="card-body card-padding">
                            <form action="bulk_upload_students.php?upload=biodata" role="form" method="POST" enctype="multipart/form-data">
                                <div class="row" style="overflow: scroll">
                                          <table class="table table-bordered no-margin" style="">
								<thead>
									<tr>
										<th>ID</th>
										<th>SURNAME</th>
										<th>OTHERNAMES</th>
										<th>TITLE</th>
                                                                                <th>GENDER</th>
                                                                                <th>INDEXNO</th>
                                                                                <th>STUDENT_TYPE</th>
                                                                                <th>REGION</th>
                                                                                <th>HOMETOWN</th>
                                                                                <th>NATIONALITY</th>
                                                                                <th>PHONE</th>
                                                                                <th>PREVIOUS_SCHOOL</th>
                                                                                 
                                                                                <th>CLASS_ADMITTED</th>
                                                                                <th>RELIGION</th>
                                                                                <th>RESIDENCE_ADDRESS</th>
                                                                                <th>CONTACT_ADDRESS</th>
                                                                                <th>DISABILITY</th>
                                                                                <th>EMAIL</th>
                                                                                <th>DATE_ADMITTED</th>
                                                                                <th>DATE_TO_COMPLETE</th>
                                                                                <th>IS_SCHOLARSHIP</th>
                                                                                <th>GUARDIAN_NAME</th>
                                                                                <th>GUARDIAN_PHONE</th>
                                                                                <th>GUARDIAN_RELATIONSHIP</th>
                                                                                <th>GUARDIAN_ADDRESS</th>
                                                                                
									</tr>
								</thead>
								<tbody>
									 
								</tbody>
							</table>
                                </div>
                                <div class="row">
                                <div class="col-sm-4">
                                     
                                    
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <span class="btn btn-primary btn-file m-r-10">
                                            <span class="fileinput-new">Select file</span>
                                            <span class="fileinput-exists">Change</span>
                                            <input type="file" name="file" required="">
                                        </span>
                                        <span class="fileinput-filename"></span>
                                        <a href="#" class="close fileinput-exists" data-dismiss="fileinput">&times;</a>
                                    </div>
                                </div>
                            </div>
                            
                            
                                
                                <button type="submit" class="btn btn-primary btn-sm m-t-10">Submit</button>
                            </form>
                            <br/>
                            <br/>
                             <em class="text-caption"><a href="student_biodata_template.csv">Click to download biodata excel template</a> </em>
                        </div>
                    </div>
                    
                     
                    
                    
                </div>
            </section>
        </section>
        
       <?php $app->getDashboardScript() ; $app->getuploadScript(); ?>
        
    </body>
  
</html>