<?php
	require("config/config.php");
	$PATH=$CONFIG['internal']['sqlconf'];  
	require("$PATH/config.php");
	require("$PATH/mysql.inc.php");
	define('SMARTY_DIR', $CONFIG['internal']['smarty_dir']);
	require(SMARTY_DIR.'Smarty.class.php');
	
	$smarty = new Smarty;
	$smarty->assign("CONFIG_internal_serverpath",$CONFIG["internal"]["serverpath"]);
	session_start();

	$db = new cl_extended_database;
	
	if(isset($_SESSION["user"]))
	{
		//Sitzung wiederherstellen
	   if(!isset($db))
	   {
	     $db = new cl_extended_database;
	   }
	   $nick = $_SESSION["user"];
	   
	   if(!isset($_SESSION["user"]))
	   {
	     $_SESSION["user"] = $db->user_get_name($nick); 
	   }
	   
	   $smarty->assign("user",$nick);
		$smarty->display("topframe.tpl");
	 }
	 else
	 {
	   $smarty->display("error.tpl");
	 }
	
	
	
?>