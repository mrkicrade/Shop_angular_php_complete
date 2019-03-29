<?php

class QueryBuilder {
    public $pdo;
    function __construct($pdo){
        $this->pdo = $pdo;
    }

    public function getAllCollections(){
        $sql = $this->pdo->prepare("SELECT * FROM collections");
        $sql->execute(); 
        $result = $sql->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }
}

$db = new QueryBuilder(Connection::make());

return $db;