<%-- 
    Document   : InserirLivro
    Created on : 23 de fev. de 2023, 17:14:27
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
        <%  // Instancing the DTO class
            LivroDTO objLivroDTO = new LivroDTO();
            request.setCharacterEncoding("UTF-8");
            objLivroDTO.setNome_livro(request.getParameter("nome"));
            
            LivroDAO objLivroDAO = new LivroDAO();
            objLivroDAO.CadastrarLivro(objLivroDTO);
            
            // Return to home page
            request.getRequestDispatcher("index.html").forward(request, response);
        %>
    </body>
</html>
