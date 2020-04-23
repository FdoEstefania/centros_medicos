<%-- 
    Document   : index
    Created on : 18-04-2020, 22:52:58
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Centro medico</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        <nav class="navbar navbar-expand navbar-light bg-light">
            <div class="nav navbar-nav">
                <a class="nav-item nav-link active" href="#">Home<span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="#"></a>
            </div>
        </nav>
        <h1 class="text-center">CÁLCULO DEL IMC</h1>
        <div class="container">
            <div class="row">
                <div class="col-md-3 bg-info offset-md-4">
                    <form action="servletImc" method="post">
                        <div class="form-group">
                            <label for="">Escribe tu ALTURA actual:</label>
                            <input type="text" class="form-control form-control-sm" name="altura" id="altura" required="">
                            <small id="emailHelp" class="form-text text-muted"></small>
                        </div>
                        <div class="form-group">
                            <label for="">Escribe tu PESO actual:</label>
                            <input type="text" class="form-control form-control-sm" name="peso" id="peso" placeholder="" required="">
                        </div>
                        <input type="submit" class="btn btn-primary btn-sm btn-block mb-4" value="calcular" id="btncalcular">
                    </form>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                $('#btncalcular').click(function () {
                    if (!$.isNumeric($('#altura').val())) {
                        alert(' Digite solo numeros ');
                        return false;
                    }
                    if (!$.isNumeric($('#peso').val())) {
                        alert(' Digite solo numeros ');
                        return false;
                    }
                });
            });

        </script>
    </body>
</html>
