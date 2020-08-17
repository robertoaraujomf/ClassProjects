<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ProdutoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exclusão</title>
    </head>
    <body>
        
        <%
            try{
                ProdutoDAO prodao = new ProdutoDAO();
                prodao.excluir(Integer.parseInt(request.getParameter("idprod")));
                response.sendRedirect("index.jsp");
            }
            catch(Exception erro){
                throw new RuntimeException("Erro 9\nErro ao excluir dados!\nDescrição: "+erro);
            }
        
        %>
    </body>
</html>
