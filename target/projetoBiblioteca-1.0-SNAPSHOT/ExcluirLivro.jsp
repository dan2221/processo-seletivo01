<%-- 
    Document   : ExcluirLivro
    Created on : 23 de fev. de 2023, 21:09:58
    Author     : danie
--%>

<%@page import="br.com.DAO.LivroDAO"%>
<%@page import="br.com.DTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  // Instancing DTO class
            LivroDTO objLivroDTO = new LivroDTO();
            objLivroDTO.setId_livro(Integer.parseInt(request.getParameter("id")));
            
            LivroDAO objLivroDAO = new LivroDAO();
            objLivroDAO.ExcluirLivro(objLivroDTO);
            // Return to homepage
            request.getRequestDispatcher("ListarLivro.jsp").forward(request, response);
        %>
    </body>
</html>
