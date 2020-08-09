<?php
// Appel des classes utilisées

require_once 'classes/class.Produits.php';

// Si le formulaire est soumis

if(isset($_POST["valider"])){

// Instanciation de la categorie

    $produits = new produits();
    $produits->setNom($_POST["n"]);
    $produits->setDesc($_POST["n1"]);
    $produits->setPrix($_POST["n2"]);
    $produits->setImage($_POST["n3"]);



// Mise à jour de la base de données // Mise à jour de la base de données

    $sql = "INSERT INTO produit(nom_p , description_p , prix_p , image_p) VALUES(? , ? , ?, ?)";
    $requete = $pdo->prepare($sql);
    $requete->bindValue(1, $produits->getNom());
    $requete->bindValue(2, $produits->getDesc());
    $requete->bindValue(3, $produits->getPrix());
    $requete->bindValue(4, $produits->getImage());
    $requete->execute();

// Redirection sur la liste des potions // Redirection sur la liste des potions

    header('Location: index.php?page=listeProduit');
    exit();
}
?>
