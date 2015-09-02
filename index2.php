<?php
/**
 * Phylio - High School Management Software
 * @package  public
 * @author   Gad Ocansey <gadocansey@gmail.com>
 */
/*
|--------------------------------------------------------------------------
| Register The Auto Loader
|--------------------------------------------------------------------------
|
| Composer provides a convenient, automatically generated class loader
| for our application. We just need to utilize it! We'll require it
| into the script here so that we do not have to worry about the
| loaded using from the vendor folder
*/
    ini_set('display_errors', 0);
    require 'vendor/autoload.php';
    include "library/includes/config.php";
     $util=new classes\Boot();

     if(isset($_GET['action'])=='login'){

          $app=new classes\Login();
          $app->signin($_POST['username'], $_POST['password']);
         
        } 
      
         
 
      $util->displayMessage();
      $util->bootApp();
       
 