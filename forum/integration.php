<?php

	global $db,$cache,$phpEx,$config,$phpbb_root_path;
	require_once ('config.php');
	define ('IN_PHPBB', true);
	$phpbb_root_path = "./";
	$phpEx = "php";
	require_once ($phpbb_root_path . 'common.php');
	include ($phpbb_root_path . 'includes/functions_display.' . $phpEx);
	include_once ($phpbb_root_path . 'includes/functions_user.' . $phpEx);
	$request->enable_super_globals();
	$username = $_POST['rusername'];
	$password = $_POST['rpassword'];
	$email = $_POST['remail'];
	
	$username_clean = utf8_clean_string($username);
	$sql_ary = array(
		'username'			=> $username,
		'username_clean'	=> $username_clean,
		'user_password'		=> md5($password),
		'user_email'		=> $email,
		'user_email_hash'	=> crc32(strtolower($email)) . strlen($email),
		'group_id'			=> 2,
		'user_type'			=> 0,
	);
	
	//'USER_NORMAL', 0;
    //'USER_INACTIVE', 1;
    //'USER_IGNORE', 2;
    //'USER_FOUNDER', 3; 

   	$err = user_add($sql_ary, $cp_data);
   	if ($err == false) 
	{
		//display error msg and direct to register page
	}
?>

