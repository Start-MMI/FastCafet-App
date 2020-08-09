<?php
require_once 'classes/class.Produits.php';

$gars = new Produits();
$sql = " SELECT * FROM produit WHERE ID_PRODUIT = ?";
$requete = $pdo->prepare($sql);
$requete->bindValue(1, $_GET["id"]);

if ($requete->execute()){
    while ($donneees = $requete->fetch()){
        $gars->setId($donneees['ID_PRODUIT']);
        $gars->setNom($donneees['nom_p']);
        $gars->setPrix($donneees['prix_p']);
        $gars->setType($donneees['type_p']);
        $gars->setImage($donneees['image_p']);
        $gars->setDesc($donneees['description_p']);
    }
}
if (isset($_POST["oui"])){
    $sql = "DELETE FROM produit WHERE ID_PRODUIT = ?";
    $requete = $pdo->prepare($sql);
    $requete ->bindValue(1,$_GET["id"]);
    $requete->execute();

    header('Location: index.php?page=listeProduit');
    exit();
}
?>