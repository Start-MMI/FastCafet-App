<?php
require_once 'classes/class.Produits.php';

$sql = "SELECT * FROM produit";

// Préparation de la requête
$requete = $pdo->prepare($sql);

// Tableau qui contiendra la liste des personne

$liste = array();


// Si la requête renvoie quelque chose
if($requete->execute()){


// Parcours des résultats
    while($donnees = $requete->fetch()){

//    var_dump($donnees['motsdepasse']);

        $Produits = new Produits();
        $Produits->setId($donnees['ID_PRODUIT']);
        $Produits->setNom($donnees['nom_p']);
        $Produits->setDesc($donnees['description_p']);
        $Produits->setImage($donnees['image_p']);
        $Produits->setPrix($donnees['prix_p']);
        $Produits->setType($donnees['type_p']);


//    $donnees['nom'],
//    $donnees['prenom'],
//    $donnees['adressemail'],
//    $donnees['motsdepasse'],
//    $donnees['droit']);
//    $donnees['abonnement']);
//
//        var_dump($Produits);

        $liste[] = $Produits;

    }
}

?>
