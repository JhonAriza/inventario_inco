
<?php
include("../../conexion/conexiones.php");
include("header.php");
?>
<html>
    <head>
        <title>
            Administrador
        </title>
    </head>
    
    <body>
        
			<div class="articulo">
        <center>
               <H1>Clientes2 </H1>
               <table border="1">
                        <tr>
                            <td>Código cliente</td>
                            <td>Nombre</td>
                            <td>Apellidos</td>
                            <td>Teléfono</td>
                           
                        </tr>
                        <?php
                            $c= new Conexion();
                            $fun=$c->conectar();
                            $p ="select * from cliente";
                            $rs = mysqli_query($fun,$p);
                            $arre = mysqli_fetch_row($rs);

                            do{
                        ?>
                        <tr>
                                <td><?php echo $arre[0] ?></td>
                                <td><?php echo $arre[1] ?></td>
                                <td><?php echo $arre[2] ?></td>
                                <td><?php echo $arre[3] ?></td>
                               
                        </tr>
                        <?php
	 					}while($arre = mysqli_fetch_row($rs));
					?>
               </table> 
               </div>
        </center>


       
    </body>
</html>