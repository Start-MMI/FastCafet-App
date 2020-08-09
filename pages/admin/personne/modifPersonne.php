<?php
require_once 'classses/class.Personne.php';

$gars = new gars();
$sql = "SELECT * FROM personne WHERE ID_PERSONNE =?";

$requete = $pdo->prepare($sql);
$requete->bindValue(1,$_GET["id"]);

if($requete->execute()){
    while ($donnees = $requete->fetch()){
        $gars->setId($donnees['ID_PERSONNE']);
        $gars->setNom($donnees['nom']);
        $gars->setToto($donnees['motsdepasse']);
        $gars->setPrenom($donnees['prenom']);
        $gars->setEmail($donnees['adressemail']);
        $gars->setAbo($donnees['abonnement']);
        $gars->setDroit($donnees['droit']);

    }
    var_dump($gars);
}

?>