<%-- 
    Document   : resultado
    Created on : 19-04-2020, 0:17:59
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Centro medico</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand navbar-light bg-light">
            <div class="nav navbar-nav">
                <a class="nav-item nav-link active" href="index.jsp">Home<span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="#"></a>
            </div>
        </nav>
        <div class="container">
            <h2 class="text-center">Resultado del IMC</h2>
            <div class="row">
                <div class="col-md-6 bg-info offset-md-4">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Índice de Masa Corporal</th>
                                <th>Atendiendo al IMC, tiene</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td scope="row"><input value="<%=request.getAttribute("imc")%>"></td>
                                <td><input value="<%=request.getAttribute("clasificacion")%>"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
