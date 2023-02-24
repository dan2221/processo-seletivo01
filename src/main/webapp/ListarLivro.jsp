<%-- 
    Document   : ListarLivro
    Created on : 23 de fev. de 2023, 18:40:32
    Author     : danie
--%>

<%@page import="br.com.DTO.LivroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                LivroDAO objLivroDAO = new LivroDAO();
                ArrayList<LivroDTO> lista = objLivroDAO.PesquisarLivro();

                for (int i = 0; i < lista.size(); i++) {
                    out.print("Código: " + lista.get(i).getId_livro() + "<br>");
                    out.print("Nome: " + lista.get(i).getNome_livro() + "<br>");

                    // Option to Delete item
                    out.print("<a href='frmExcluirLivroVIEW.jsp?"
                            + "id=" + lista.get(i).getId_livro()
                            + "&nome=" + lista.get(i).getNome_livro()
                            + "'> Excluir </a>&ensp;");

                    // Option to Edit item        
                    out.print("<a href='frmAlterarLivroVIEW.jsp?"
                            + "id=" + lista.get(i).getId_livro()
                            + "&nome=" + lista.get(i).getNome_livro()
                            + "'> Alterar </a>");
        %>
        <br><hr> <!-- Space between each showed item -->
        <%
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
