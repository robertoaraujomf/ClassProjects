<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página inicial</title>
    </head>
    <body>
        <h1>Página inicial</h1>
        
        
        
        
        <form action="index.jsp" method="post">
            
            <label for="nomeprod">Digite o nome de um produto:
                <input type="text" id="nomeprod"> <br>
                
            </label>
            
            <button type="submit">OK</button>
            
        </form>
        
        
        
        <%
            try{
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>Código</th>"
                        + "<th>Nome do produto</th>"
                        + "<th>Preço unitário</th>"
                        + "<th>Quantidade em estoque</th>"
                        + "<th>Alterar</th>"
                        + "<th>Excluir</th>");
                ProdutoDAO prodao = new ProdutoDAO();
                if (request.getParameter("nomeprod") == "" ||
                    request.getParameter("") == null){
                    ArrayList<Produto> lista = prodao.listarTodos();
                    for (int num=0; num < lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getIdprod()+"</td>");
                        out.print("<td>"+lista.get(num).getNomeprod()+"</td>");
                        out.print("<td>"+lista.get(num).getPrecoun()+"</td>");
                        out.print("<td>"+lista.get(num).getQt()+"</td>");
                        out.print("<td><a href='Alteracao.jsp?idprod="+lista.get(num).getIdprod()+
                                                          "&nomeprod="+lista.get(num).getNomeprod()+
                                                           "&precoun="+lista.get(num).getPrecoun()+
                                                                "&Qt="+lista.get(num).getQt()+
                                                                "'>ALTERAR</a></td>");
                        
                        out.print("<td><a href='Exclusao.jsp?idprod="+lista.get(num).getIdprod()+
                        "'>EXCLUIR</a></td>");
                        out.print("</tr>");
                    }
                }else{
                    //ArrayList<Produto> lista = prodao.listarTodos(request.getParameter("nomeprod"));
                     ArrayList<Produto> lista = prodao.listarTodos();
                    for (int num=0; num < lista.size();num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getIdprod()+"</td>");
                        out.print("<td>"+lista.get(num).getNomeprod()+"</td>");
                        out.print("<td>"+lista.get(num).getPrecoun()+"</td>");
                        out.print("<td>"+lista.get(num).getQt()+"</td>");
                        out.print("<td><a href='Alteracao.jsp?idprod="+lista.get(num).getIdprod()+
                                                          "&nomeprod="+lista.get(num).getNomeprod()+
                                                           "&precoun="+lista.get(num).getPrecoun()+
                                                                "&Qt="+lista.get(num).getQt()+
                                                                "'>ALTERAR</a></td>");

                        out.print("<td><a href='Exclusao.jsp?idprod="+lista.get(num).getIdprod()+
                        "'>EXCLUIR</a></td>");
                        out.print("</tr>");
                    }
                }
                out.print("</tr>");
                out.print("</table>");
            }
            catch(Exception erro){
                throw new RuntimeException("Erro 10\nErro ao enviar e processar dados!\nDescrição: "+erro);
            }
        
        %>
        <a href="TelaInserir.jsp">Novo</a>
    </body>
</html>
