<?php

namespace Rhod;

class Producto{

    private $config;
    private $cn = null;

    public function __construct(){

        $this->config = parse_ini_file(__DIR__.'/../config.ini') ;
        $this->cn = new \PDO( $this->config['dns'], $this->config['usuario'],$this->config['clave'],array(
            \PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
        ));
    }
    public function registrar($_params){
        $sql = "INSERT INTO `productos`(`nombre`, `foto`, `descripcion`, `precio`, `categoria_id`, `marca_id`, `ensamblador_id`)
        VALUES (:nombre, :foto, :descripcion, :precio, :categoria_id, :marca_id, :ensamblador_id)";
        $resultado = $this->cn->prepare($sql);
        $arreglo = array(
            ":nombre"=> $_params['nombre'],
            ":foto"=> $_params['foto'],
            ":descripcion"=> $_params['descripcion'],
            ":precio"=> $_params['precio'],
            ":categoria_id"=> $_params['categoria_id'],
            ":marca_id"=> $_params['marca_id'],
            ":ensamblador_id" => $_params['ensamblador_i'],
        );
        if ($resultado -> execute($arreglo))
            return true;
        return false;
    }
    public function actializar($_params){
        $sql = "UPDATE `productos` SET `nombre`=:titulo,`foto`=:foto,`descripcion`=:descripcion',`precio`=precio:,`categoria_id`=:categoria_id,`marca_id`=:marca_id,`ensamblador_id`=:ensamblador_id WHERE ´id´=:id";
        $resultado = $this->cn->prepare($sql);
        $arreglo = array(
            ":nombre"=> $_params['nombre'],
            ":foto"=> $_params['foto'],
            ":descripcion"=> $_params['descripcion'],
            ":precio"=> $_params['precio'],
            ":categoria_id"=> $_params['categoria_id'],
            ":marca_id"=> $_params['marca_id'],
            ":ensamblador_id" => $_params['ensamblador_i'],
        );
        if ($resultado -> execute($arreglo))
            return true;
        return false;
    }
    public function eliminar($id){
        $sql = "DELETE FROM `peliculas` WHERE `id`=:id";
        $resultado = $this->cn->prepare($sql);
        if ($resultado -> execute($arreglo))
            return true;
        return false;
    }
    public function mostrar($_params){
        $sql = "SELECT * FROM productos
            INNER JOIN categoria
            ON productos.categoria_id = categoria.id ORDER BY productos.id DESC
            ";
        $resultado = $this->cn->prepare($sql);
        if ($resultado -> execute($arreglo))
            return true;
        return false;
    }
}