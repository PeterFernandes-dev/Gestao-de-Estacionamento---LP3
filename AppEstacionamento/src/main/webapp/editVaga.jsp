<%@page import="br.computacao.AppEstacionamento.model.Vaga"%>
<%@page import="br.computacao.AppEstacionamento.dao.VagaDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
        crossorigin="anonymous">
       
    <link rel="stylesheet" href="css/styleF.css" type="text/css">
     
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

<title>Editar Vaga</title>
</head>

<body>

    <%
        long vagaid = Long.parseLong(request.getParameter("id"));
        VagaDao dao = new VagaDao();
        Vaga conVaga = dao.findById(Vaga.class, vagaid).get();
    %>
    
    <div class="container">
    <div class="title">Editar Vaga</div>
    <div class="content">
    
      <form action="controllerVaga" method="post">
      	
      	<input type="hidden" name="vagaid" value="<%= vagaid %>" />
      	
        <div class="user-details">
          <div class="input-box">
          
            <span class="details">Cobertura</span>
            <select class="form-control" name="cobertura" value="<%= conVaga.getCobertura() %>" required>
            	<option>Sim</option> 
            	<option>Nao</option> 
            </select>
            
            
          </div>
          <div class="input-box">
          
            <span class="details">Status</span>
            <select class="form-control" name="status" value="<%= conVaga.getStatus() %>" required>
            	<option>Ocupada</option> 
            	<option>Vazia</option> 
            </select>
            
          </div>
          <div class="input-box">
          
            <span class="details">Identificação</span>
            <input type="text" name="identificacao" value="<%= conVaga.getIdentificacao() %>"/>
            
          </div>
          <div class="input-box">
          
            <span class="details">Preço</span>
            <input type="text" name="preco" value="<%= conVaga.getPreco() %>"/>
            
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