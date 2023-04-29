<%-- 
    Document   : listar
    Created on : 23/08/2022, 03:31:38 PM
    Author     : monte
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.Persona"%>
<%@page import="java.util.List"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Listar Personas</title>
    </head>
    <style>
        h1{
            color: #4f4866;
            font-weight: normal;
            font-size: 45px;
            font-family: Arial;
            text-transform: uppercase;
        }
        table th{
            background-color: #FBFFBF;
        }
    </style>
    <body>
        <div class="container">
            <h1 class="text-center">Registro de Personas</h1><br><br>
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Nueva Persona</a><br><br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center text-primary">CÓDIGO PERSONA</th>
                        <th class="text-center text-primary">DPI</th>
                        <th class="text-center text-primary">NOMBRES</th>
                        <th class="text-center text-primary">ACCIONES</th>
                    </tr>             
                </thead> 
                <%
                  PersonaDAO dao = new PersonaDAO();
                  List<Persona> listaPersona = dao.listar();
                  Iterator<Persona> iterator = listaPersona.iterator();
                  Persona per = null;
                  while(iterator.hasNext()){
                      per = iterator.next();

                %>
                <tbody>
                    <tr>
                        <td class="text-center active"><%= per.getCodigoPersona() %></td>
                        <td class="text-center"><%= per.getDPI() %></td>
                        <td class="text-center active"><%= per.getNombrePersona() %></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&codigoPersona=<%=per.getCodigoPersona()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&codigoPersona=<%=per.getCodigoPersona()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
