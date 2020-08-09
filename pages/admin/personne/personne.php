<?php
require_once 'classes/class.Personne.php';

$sql = "SELECT * FROM personne";

// Préparation de la requête
$requete = $pdo->prepare($sql);

// Tableau qui contiendra la liste des personne

$liste = array();


// Si la requête renvoie quelque chose
if($requete->execute()){


// Parcours des résultats
while($donnees = $requete->fetch()){

//    var_dump($donnees['motsdepasse']);

    $Personne = new gars();
    $Personne->setId($donnees['ID_PERSONNE']);
    $Personne->setNom($donnees['nom']);
    $Personne->setPrenom($donnees['prenom']);
    $Personne->setEmail($donnees['adressemail']);
    $Personne->setToto($donnees['motsdepasse']);
    $Personne->setDroit($donnees['droit']);
    $Personne->setAbo($donnees['abonnement']);



//    $donnees['nom'],
//    $donnees['prenom'],
//    $donnees['adressemail'],
//    $donnees['motsdepasse'],
//    $donnees['droit']);
//    $donnees['abonnement']);
//    var_dump($Personne);

    $liste[] = $Personne;

 }
}

?>
