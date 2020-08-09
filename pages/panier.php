<?php
if (isset($_POST['vider'])) {
    unset($_SESSION['panier']);
    unset($_SESSION['essai']);
    unset($_SESSION['img']);
}
?>
