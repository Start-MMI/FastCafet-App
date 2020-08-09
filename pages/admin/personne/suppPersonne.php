<?php
require_once 'classes/class.Personne.php';

$gars = new gars();
$sql = " SELECT * FROM personne WHERE ID_PERSONNE = ?";
$requete = $pdo->prepare($sql);
$requete->bindValue(1, $_GET["id"]);

if ($requete->execute()){
    while ($donneees = $requete->fetch()){
        $gars->setId($donneees['ID_PERSONNE']);
        $gars->setNom($donneees['nom']);
        $gars->setPrenom($donneees['prenom']);
        $gars->setEmail($donneees['adressemail']);
        $gars->setToto($donneees['motsdepasse']);
        $gars->setDroit($donneees['droit']);
        $gars->setAbo($donneees['abonnement']);
    }
}
if (isset($_POST["oui"])){
    $sql = "DELETE FROM personne WHERE ID_PERSONNE = ?";
    $requete = $pdo->prepare($sql);
    $requete ->bindValue(1,$_GET["id"]);
    $requete->execute();

    header('Location: index.php?page=listePersonne');
    exit();
}
?>