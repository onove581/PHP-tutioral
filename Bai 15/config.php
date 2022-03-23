<?php
$hostname_config = "localhost";
$database_config = "webbinhchon";
$username_config = "root";
$password_config = "";
$config = mysqli_connect($hostname_config, $username_config, $password_config) ; 
mysqli_select_db($config, $database_config);

?>
