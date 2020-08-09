<?php


require_once 'classes/class.Personne.php';



if(isset($_POST["valider"])){


    $gars = new gars();
    $gars->setNom($_POST["n"]);
    $gars->setPrenom($_POST["n1"]);
    $gars->setEmail($_POST["n2"]);
    $gars->setToto(sha1($_POST["n3"]));




    $sql = "INSERT INTO personne(nom , prenom , adressemail , motsdepasse) VALUES(? , ? , ?, ?)";
    $requete = $pdo->prepare($sql);
    $requete->bindValue(1, $gars->getNom());
    $requete->bindValue(2, $gars->getPrenom());
    $requete->bindValue(3, $gars->getEmail());
    $requete->bindValue(4, $gars->getToto());
    $requete->execute();


    header('Location: index.php?page=listePersonne');
    exit();
}
?>
