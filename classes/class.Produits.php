<?php

class Produits
{
    private $id = 0;
    private $nom = null;
    private $description = null;
    private $image = null;
    private $prix = 0;
    private $type = 0;


    public function getId() {return $this->id;}
    public function getNom() {return $this->nom;}
    public function getDesc() {return $this->description;}
    public function getImage() {return $this->image;}
    public function getPrix() {return $this->prix;}
    public function getType() {return $this->type;}


    public function setId($id) {$this->id = $id;}
    public function setNom($nom) {$this->nom = $nom;}
    public function setDesc($description) {$this->description = $description;}
    public function setImage($image) {$this->image = $image;}
    public function setPrix($prix) {$this->prix = $prix;}
   public function setType($type) {$this->type = $type;}
}
?>