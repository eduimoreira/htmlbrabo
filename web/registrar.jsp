<%-- 
    Document   : registrar
    Created on : 23/10/2019, 20:49:50
    Author     : Aluno
--%>
<%@page import="cadastro.Cadastro"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Types"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
              <%
            
          //  ConexaoBancoDeDados cx=new ConexaoBancoDeDados();            
            
             String nome = request.getParameter("usernamesignup");
             String email = request.getParameter("emailsignup");
             String senha = request.getParameter("passwordsignup");

            Cadastro c = new Cadastro();
            
            c.setjNome(nome);
            c.setjEmail(email);
            c.setjSenha(senha);
            
            try {
//Conexão com Banco de dados
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/aula", "root", "");

// cria um preparedStatement
                String sql = "insert into cliente (nome,email,senha) values (?,?,?)";

                PreparedStatement stmt = conexao.prepareStatement(sql);

//preenche os valores            
                stmt.setString(1, c.getjNome());
                stmt.setString(2, c.getjEmail());
                stmt.setString(3, c.getjSenha());
                
// executa
                stmt.execute();
                stmt.close();
                out.println("Gravado com suCELSO!");
                conexao.close();
                 response.sendRedirect("index.html"); 
            } catch (SQLException e) {
                out.println("Erro " + e);
            }
         
        %>
      
    </body>
</html>
