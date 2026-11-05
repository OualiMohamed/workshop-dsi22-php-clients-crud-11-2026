
<?php
    include 'db_connect.php';

    if (!empty($_POST)) {
        $nom = $_POST['nom'];
        $prenom = $_POST['prenom'];
        $datenaissance = $_POST['datenaissance'];
        $adresse = $_POST['adresse'];
        $tel = $_POST['tel'];

        $req = $db->prepare("INSERT INTO clients (nom, prenom, datenaissance, adresse, tel) VALUES (:uname, :uprenom, :udatenaissance, :uadresse, :utel)");
        $req->bindParam(':uname', $nom);
        $req->bindParam(':uprenom', $prenom);
        $req->bindParam(':udatenaissance', $datenaissance);
        $req->bindParam(':uadresse', $adresse);
        $req->bindParam(':utel', $tel);
        $req->execute();

        header("Location: clients.php");
    }

    $pageTitle = 'Ajouter un client';
    $template = 'createClient';
    include 'layout.phtml';
?>
