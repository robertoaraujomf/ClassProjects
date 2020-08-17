<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração</title>
    </head>
    <body>

        
        <%
        try{
            Produto prod = new Produto();
            ProdutoDAO prodao = new ProdutoDAO();
            if (request.getParameter("nomeprod") =="" ||
                request.getParameter("precoun") == ""  ||
                request.getParameter("qt") == ""){
                response.sendRedirect("index.jsp");
            }else{
                prod.setNomeprod(request.getParameter("nomeprod"));
                prod.setPrecoun(Double.parseDouble(request.getParameter("precoun")));
                prod.setQt(Integer.parseInt(request.getParameter("qt")));
                prod.setIdprod(Integer.parseInt(request.getParameter("idprod")));
                prodao.alterar(prod);
                response.sendRedirect("index.jsp");
            }
        }
        catch(Exception erro){
            throw new RuntimeExceptiion("Erro 8\nErro ao alterar dados! \nDescrição: "+erro);
        }
        %>
    </body>
</html>
