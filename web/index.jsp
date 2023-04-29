<%-- 
    Document   : index
    Created on : 23/08/2022, 03:20:07 PM
    Author     : monte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Página Principal</title>
    </head>
    <style>
        h1{
            color: #000000;
            font-weight: normal;
            font-size: 40px;
            font-family: Arial;
            text-transform: uppercase;
        }
        body {
            background: rgb(238,174,202);
            background: linear-gradient(90deg, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
        }
    </style>
    <body>
        <h1 class="text-center">Proyecto Java EE con JSP</h1>
        <div class="text-center">
            <a class="btn btn-success btn-lg btn-block" href ="Controlador?accion=listar">Listar Persona</a>
        </div>
    </body>
</html>
