<?php

header('content-type:application/json');


$dbh=new PDO 

('mysql:host=localhost; dbname=apiCirkwi;charset=utf8',
'root',
'',

[PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC  
]
);

$query="SELECT * FROM pokemon ORDER BY nom  ";
$sth=$dbh->prepare($query);

$sth->execute();
$recupPokemon['Pokemon']=$sth->fetchAll();


echo json_encode($recupPokemon);

?>