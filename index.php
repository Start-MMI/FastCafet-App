<?php
session_start();
include 'fonctions.php';
include 'cnx.php';

$page = "";
$param = 0;
$titre = "";

// Si aucune page demandée => on prend l'accueil par défaut
if(!isset($_GET["page"])){
    $_GET["page"] = "accueil";
}

if(isset($_GET["page"])){
    // Ouverture du fichier des routes
    $routes = parse_ini_file("param/routes.ini", true);
    $page = $routes[$_GET["page"]]["page"];
    $att = $routes[$_GET["page"]]["att"];
    $template = $routes[$_GET["page"]]["template"];
    if(isset($routes[$_GET["page"]]["param"])){
        $param = $routes[$_GET["page"]]["param"];
    }
    if(isset($routes[$_GET["page"]]["titre"])){
        $titre = $routes[$_GET["page"]]["titre"];
    }

}
?>

<?php if($att == ""){
?>
<!DOCTYPE html>
<html lang="fr">
<?php include 'header.html'; ?>
<body>
    <?php
    if($page != ""){include $page;}
    ?>
    <?php include $template; ?>
<?php include 'footer.html'; ?>
</body>
</html>
<?php } ?>


<?php
if($att == "1"){
?>
    <!DOCTYPE html>
    <html lang="fr">
    <?php include 'headera.html'; ?>
    <body>
    <div class="container">
        <?php
        if($page != ""){include $page;}
        include $template;
        ?>
        <div class="container">
            <div class="row">
                <?php
                if($page != ""){
                    include 'navigAdmin.html';
                }
                ?>
            </div>
        </div>
    </div>
    </body>
    </html>
<?php
}?>