<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
        
        <%
        try{
            Produto prod = new Produto();
            ProdutoDAO prodao = new ProdutoDAO();
            if (request.getParameter("nomeprod") == "" ||
                request.getParameter("precoun") == ""  ||
                request.getParameter("qt") == ""){
                response.sendRedirect("index.jsp");
            }else{
                prod.setNomeprod(request.getParameter("nomeprod"));
                prod.setPrecoun(Double.parseDouble(request.getParameter("precoun")));
                prod.setQt(Integer.parseInt(request.getParameter("qt")));
                prodao.inserir(prod);
                response.sendRedirect("index.jsp");
            }
        }
        catch(Exception erro){
            throw new RuntimeException("Erro 7\nErro ao inserir dados! \nDescrição: "+erro);
        }
        %>
    </body>
</html>
