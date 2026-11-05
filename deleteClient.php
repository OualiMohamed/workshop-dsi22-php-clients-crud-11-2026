
<?php
    include 'db_connect.php';

    // Récupération de l'id de la personne à supprimer depuis l'URL
    $id = $_GET['id'];
    
    $req = $db->prepare("DELETE FROM clients WHERE id = :id");
    $req->bindParam(':id', $id);
    $req->execute();

    header("Location: clients.php");
?>
