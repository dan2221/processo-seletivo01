<%-- 
    Document   : frmAlterarLivroVIEW
    Created on : 23 de fev. de 2023, 21:45:15
    Author     : danie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="AlterarLivro.jsp" method="POST">
            <label>Código do Livro: </label><br>
            <input type="text" name="id" value="<%=request.getParameter("id")%>">
            
            <BR><BR>
            
            <label>Nome do Livro: </label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>">
            
            <button type="submit">Alterar</button>
        </form>
    </body>
</html>
