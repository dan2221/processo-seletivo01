<%-- 
    Document   : AlterarLivro
    Created on : 23 de fev. de 2023, 21:48:01
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
        <%  // Instanciando classe DTO
            LivroDTO objLivroDTO = new LivroDTO();
            objLivroDTO.setId_livro(Integer.parseInt(request.getParameter("id")));

            
            request.setCharacterEncoding("UTF-8");
            objLivroDTO.setNome_livro(request.getParameter("nome"));
            LivroDAO objLivroDAO = new LivroDAO();
            objLivroDAO.AlterarLivro(objLivroDTO);
        %>
    </body>
</html>
