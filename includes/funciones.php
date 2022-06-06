<?php

function obtenerProductos() : array{
    try{
        // Importamos una conexión
        require 'database.php';
    
        // Escrbimos el código SQL
        $sql = 'SELECT * FROM productos';
        $consulta = mysqli_query($db, $sql);
    
        // Arreglo vacío
        $productos = [];
        // contador
        $i=0;
        // Obtenemos los resultados
        while($row = mysqli_fetch_assoc($consulta)){
            $productos[$i]['id'] = $row['id'];
            $productos[$i]['nombre'] = $row['nombre'];
            $productos[$i]['descripcion'] = $row['descripcion'];
            $productos[$i]['precio'] = $row['precio'];
            $i++;
        }
        // echo '<pre>';
        // var_dump($productos);
        // echo '</pre>';
    } catch (\Throwable $th){
        echo '<pre>';
        var_dump($th);
        echo '</pre>';
    }
    return $productos;
}

obtenerProductos();