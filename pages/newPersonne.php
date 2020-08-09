<?php
// Appel des classes utilisées

require_once 'classes/class.Personne.php';

// Si le formulaire est soumis

if(isset($_POST["valider"])){

// Instanciation de la categorie

    $Personne = new gars();
    $Personne->setNom($_POST["nom"]);
    $Personne->setPrenom($_POST["prenom"]);
    $Personne->setEmail($_POST["email"]);
    $Personne->setToto(sha1($_POST["password"]));



// Mise à jour de la base de données // Mise à jour de la base de données

     $sql = "INSERT INTO personne(nom,prenom,adressemail,motsdepasse) VALUES(?,?,?,?)";
     $requete = $pdo->prepare($sql);
     $requete->bindValue(1, $Personne->getNom());
     $requete->bindValue(2, $Personne->getPrenom());
     $requete->bindValue(3, $Personne->getEmail());
     $requete->bindValue(4, $Personne->getToto());
     $requete->execute();

// Redirection sur la liste des potions // Redirection sur la liste des potions

    header('Location: index.php?page=connexion');
    exit();
}
?>
