
<?php
    include 'db_connect.php';

    // Récupération de l'id de client à modifier depuis l'URL
    $id = $_GET['id'];

    // Récupérer les informations du client à modifier
    $req = $db->prepare("SELECT * FROM clients WHERE id = :id");
    $req->bindParam(':id', $id);
    $req->execute();
    $client = $req->fetch(PDO::FETCH_ASSOC);


    // Modification du client si le formulaire est soumis
    if (!empty($_POST)) {
        $nom = $_POST['nom'];
        $prenom = $_POST['prenom'];
        $datenaissance = $_POST['datenaissance'];
        $adresse = $_POST['adresse'];
        $tel = $_POST['tel'];

        $req = $db->prepare("UPDATE clients SET nom = :uname, prenom = :uprenom, datenaissance = :udatenaissance, adresse = :uadresse, tel = :utel WHERE id = :id");
        $req->bindParam(':uname', $nom);
        $req->bindParam(':uprenom', $prenom);
        $req->bindParam(':udatenaissance', $datenaissance);
        $req->bindParam(':uadresse', $adresse);
        $req->bindParam(':utel', $tel);
        $req->bindParam(':id', $id);
        $req->execute();

        header("Location: clients.php");
    }

    $pageTitle = 'Modifier un client';
    $template = 'updateClient';
    include 'layout.phtml';
?>
