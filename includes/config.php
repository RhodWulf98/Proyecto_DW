<?php
$servidor = 'localhost';
$usuario = 'root';
$password = '';
$BD = 'tienda-componentes';
$con = mysqli_connect($servidor,$usuario,$password,$BD);
// Revisa la conexión
if (mysqli_connect_errno())
{
 echo "Ha fallado la conexión a la base de datos" . mysqli_connect_error();
}
?>