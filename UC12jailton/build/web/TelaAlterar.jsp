<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela de Alterar</title>
    </head>
    <body>
        <h1>Tela de Alterar</h1>
        
        
        <form action="Alteracao.jsp" method="post">
            
            
            <label for="idprod">Código do produto:
                <input type="text" id="idprod" value="<%=request.getParameter("idprod")%>"><br>
            </label>
            
            <label for="nomeprod">Nome do produto:
                <input type="text" id="nomeprod" value="<%=request.getParameter("nomeprod")%>"><br>
            </label>
            
            <label for="precoun">Preço unitário do produto:
                <input type="text" id="precoun" value="<%=request.getParameter("precoun")%>"> <br>
            </label>
            
            <label for="qt">Quantidade em estoque:
                <input type="text" id="qt" value="<%=request.getParameter("qt")%>"> <br>
            </label>
            
            <button type="submit">Enviar</button>
            
        </form>
    </body>
</html>
