<?php
class Productos {
    // Definición de propiedades de la clase
    public $codigoProducto;
    public $precioProducto;
    public $nombreProducto;
    public $cantidadProducto;
    public $ivaProducto;
    public $descripcionProducto;
    public $ubicacionProducto;
    public $fechaEntradaProducto;
    public $codigoProveedor;
    public $codigoEmpleado;
    
    // Método para limpiar los valores de las propiedades
    function limpiar(){
        // Establece todas las propiedades a null
        $this->codigoProducto=null;
        $this->precioProducto=null;
        // ... y así sucesivamente para todas las propiedades
    }
    
    // Método para guardar un producto en la base de datos
    function guardar(){
        // Crea una conexión a la base de datos
        $c = new Conexion();
        $fun = $c->conectar();
        
        // Consulta para verificar si el producto ya existe
        $p = "select * from productos where codigoProducto = '$this->codigoProducto'";
        $r1 = mysqli_query($fun, $p);
        
        // Si ya existe, muestra una alerta
        if(mysqli_fetch_array($r1)){
            echo "<script> alert ('El producto ya existe en el Sistema')</script>";
        } else {
            // Si no existe, inserta el producto en la base de datos
            $insertar = "insert into productos values( '$this->codigoProducto',
                                                       '$this->precioProducto',
                                                        '$this->nombreProducto',
                                                        '$this->cantidadProducto', 
                                                        '$this->ivaProducto',
                                                        '$this->descripcionProducto',
                                                        '$this->ubicacionProducto',
                                                        '$this->fechaEntradaProducto',	
                                                        '$this->codigoProveedor',
                                                        '$this->codigoEmpleado'
                                                        )";  
            mysqli_query($fun, $insertar);
            echo "<script> alert('El Producto fue Creado en el Sistema')</script>";
            header("Location: productos.php");
            exit();
        }  
    }
    
    // Métodos para modificar y eliminar productos (no implementados en este código)
    function modificar(){
        // Código para modificar un producto
    }
    
    function eliminar(){
        // Código para eliminar un producto
    }
    
    // Método para consultar y cargar los datos de un producto desde la base de datos
    function consultar(){
        // Crea una conexión a la base de datos
        $c = new Conexion();
        $fun = $c->conectar();
        
        // Consulta para obtener los datos del producto
        $p = "select * from productos where codigoProducto = '$this->codigoProducto'";
        $r1 = mysqli_query($fun, $p);
        
        // Si la consulta devuelve resultados, carga los valores en las propiedades
        if($row = mysqli_fetch_array($r1)){
            $this->codigoProducto=$row['codigoProducto'];
            $this->precioProducto=$row['precioProducto'];
            // ... y así sucesivamente para todas las propiedades
            $this->codigoEmpleado=$row['codigoEmpleado'];
        }
    }
}
