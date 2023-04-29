<%-- 
    Document   : editar
    Created on : 23/08/2022, 03:31:13 PM
    Author     : monte
--%>

<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Actualizar Persona</title>
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
                <%
                   PersonaDAO nuevaPersonaDAO = new PersonaDAO();
                   int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
                   Persona nuevaPersona = (Persona)nuevaPersonaDAO.list(codPersona);
                 %>
                <h1 class="text-center">Modificar Datos</h1>
                <form action="Controlador">
                <strong>DPI:</strong> <br>   
                <input class="form-control" type="text" name="txtDPI" value="<%=nuevaPersona.getDPI()%>"> <br><br>
                <strong>Nombres:</strong><br>
                <input class="form-control" type="text" name="txtNombre" value="<%=nuevaPersona.getNombrePersona()%>"> <br><br>
                <input type="hidden" name="txtCodigoPersona" value="<%=nuevaPersona.getCodigoPersona()%>"> <br>
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">                   
                </form>
            </div>
        </div>
    </body>
</html>
