<%-- 
    Document   : add
    Created on : 23/08/2022, 03:25:18 PM
    Author     : monte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Agregar Persona</title>
    </head>
    <style>
        h1{
            color: #4f4866;
            font-weight: normal;
            font-size: 30px;
            font-family: Arial;
            text-transform: uppercase;
        }
        body {
            background: rgb(238,174,202);
            background: linear-gradient(90deg, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        }
    </style>
    <body>
        <div class="container">
            <div class="col-lg-5">
                <h1 class="text-center">Agregar Persona</h1>
                <form action="Controlador">
                    <strong>DPI:</strong><br>   
                    <input class="form-control" type="txt" name="txtDPI"><br><br>
                    <strong>Nombres:</strong><br>
                    <input class="form-control" type="txt" name="txtNombre"><br><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><br>
                </form>
            </div>
        </div>
    </body>
</html>
