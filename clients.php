<?php
    include 'db_connect.php';

    $req = "SELECT * FROM clients";
    $request = $db->query($req);

    // Second method to fetch data
    // Fetching all data at once using fetchAll method
    $clients = $request->fetchAll(PDO::FETCH_ASSOC);


    // include the phtml file to display the data
    $pageTitle = 'Liste des clients';
    $template = 'clients';
    include 'layout.phtml';
?>
