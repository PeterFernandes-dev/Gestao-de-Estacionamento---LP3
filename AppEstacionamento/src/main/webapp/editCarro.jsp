<%@page import="br.computacao.AppEstacionamento.model.Carro"%>
<%@page import="br.computacao.AppEstacionamento.dao.CarroDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

    <link rel="stylesheet" href="css/styleF.css" type="text/css">
     
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

<title>Cadastro Curso</title>
</head>
<body>

    <%
        long carroid = Long.parseLong(request.getParameter("id"));
        CarroDao dao = new CarroDao();
        Carro conCarro = dao.findById(Carro.class, carroid).get();
    %>
    
    <div class="container">
    <div class="title">Editar Carro</div>
    <div class="content">
    
      <form action="controllerCarro" method="post">
      	
      	<input type="hidden" name="carroid" value="<%= carroid %>" />
      	
        <div class="user-details">
          <div class="input-box">
          
            <span class="details">Placa</span>
            <input  type="text" name="placa" value="<%= conCarro.getPlaca() %>" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Cor</span>
            <input  type="text" name="cor" value="<%= conCarro.getCor() %>" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Modelo</span>
            <input  type="text" name="modelo" value="<%= conCarro.getModelo() %>"/>
            
          </div>
         </div>
        <div class="button">
          <input type="submit" value="Salvar" />
        </div>
        
      </form>
    </div>
  </div>

</body>
</html>