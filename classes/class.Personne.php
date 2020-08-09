<?php

class gars{

    private $id = 0;
    private $nom = null;
    private $prenom = null;
    private $email = null;
    private $toto = null;
    private $droit = 0;
    private $abonnement = 0;



    public function getAbo(){return $this->abonnement;}
    public function getId() {return $this->id;}
    public function getNom() {return $this->nom;}
    public function getPrenom() {return $this->prenom;}
    public function getEmail() {return $this->email;}
    public function getToto() {return $this->toto;}
    public function getDroit() {return $this->droit;}



    public function setAbo($abonnement){$this->abonnement=$abonnement;}
    public function setId($id) {$this->id = $id;}
    public function setNom($nom) {$this->nom = $nom;}
    public function setPrenom($prenom) {$this->prenom = $prenom;}
    public function setEmail($email) {$this->email = $email;}
    public function setToto($toto) {$this->toto = $toto;}
    public function setDroit($droit) {$this->mdp = $droit;}


}