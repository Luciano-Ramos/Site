<?php
$servidor=  mysql_connect("localhost","root","");
$banco = mysql_select_db("db",$servidor)or die("erro ao conectar com o banco"); 

?>
