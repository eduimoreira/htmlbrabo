<%-- 
    Document   : listarDados
    Created on : 02/08/2019, 16:16:46
    Author     : Aluno
--%>


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

            String consultaSenha= request.getParameter("password");;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/aula", "root", "");
                
                //String sqlConsulta = "select * from cliente where nome=";
                 String sqlConsulta = "SELECT * FROM cliente WHERE senha LIKE '%"+consultaSenha+"%'"; 
                //String sqlConsulta = "SELECT idTeste, Nome FROM teste WHERE Nome = 'Marcos'";
                
                PreparedStatement stmt2 = conexao.prepareStatement(sqlConsulta);
                ResultSet rs = stmt2.executeQuery();
                
                while (rs.next()) {
                    //int bdid = rs.getInt("idCli");
                    //String bdnm = rs.getString("nome");                    
                    String ssenha = rs.getString("senha");                    
                    
                    
                    //out.println("Id: " + bdid+ "<p></p>");
                   // out.println("Nome: " + bdnm + "<p></p>");                    
                    out.println("Senha: " + ssenha + "<p></p>");                    
                   // out.println("-----------------------------------------------<br>");
                }                
            } catch (Exception e) {
                out.println("Erro ao selecionar dados " + e);
            }
        %>
    </body>
</html>
