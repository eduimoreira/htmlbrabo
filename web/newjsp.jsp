<%-- 
    Document   : newjsp
    Created on : 20/11/2019, 20:56:18
    Author     : Aluno
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
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
                            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/aula", "root", "");
                
                //String sqlConsulta = "select * from cliente where nome=";
                 String sqlConsulta = "SELECT * FROM aluno"; 
                
                //String sqlConsulta = "SELECT idTeste, Nome FROM teste WHERE Nome = 'Marcos'";
                
                PreparedStatement stmt2 = conexao.prepareStatement(sqlConsulta);
                ResultSet rs = stmt2.executeQuery();
                
                while (rs.next()) {
                    %>   <option value = "<% out.println(rs.getString("nome"));%>"> <% out.println(rs.getString("nome")); %> </option> <%
                    
                   
                }               
            }catch (SQLException e) {
                out.println("Erro ao selecionar dados " + e);
            }
        %>
    </body>
</html>
