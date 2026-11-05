<?php
    $dbname = 'gestioncb';
    $host = 'localhost';
    $user = 'root';
    $password = '';


    try {
        $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Set the PDO error mode to exception
    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }   
?>