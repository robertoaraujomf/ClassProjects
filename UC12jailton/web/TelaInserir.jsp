<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela de Inserir</title>
    </head>
    <body>
        <h1>Tela de Inserir</h1>
        
        
        <form action="Cadastro.jsp" method="post">
            
            <!--
            <label for="idprod">Código do produto:
                <input type="text" id="idprod"><br>
            </label>
            -->
            <label for="nomeprod">Nome do produto:
                <input type="text" id="nomeprod"><br>
            </label>
            
            <label for="precoun">Preço unitário do produto:
                <input type="text" id="precoun"> <br>
            </label>
            
            <label for="qt">Quantidade em estoque:
                <input type="text" id="qt"> <br>
            </label>
            
            <button type="submit">Enviar</button>
            
        </form>
    </body>
</html>
