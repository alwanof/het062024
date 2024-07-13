<?php
include "DB.php";

$db = new DatabaseHelper("localhost", "root", "", "het9");


$data = $db->fetchData("SELECT * FROM customers");
print_r($data);
