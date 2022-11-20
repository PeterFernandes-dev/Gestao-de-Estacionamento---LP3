<%@page import="br.computacao.AppEstacionamento.model.Carro"%>
<%@page import="java.util.List"%>
<%@page import="br.computacao.AppEstacionamento.dao.CarroDao"%>
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

<title>Insert title here</title>
</head>
<body>

	<%
		
		CarroDao dao = new CarroDao();
		List<Carro> carros = dao.findAll(Carro.class);
	
	
	%>

	<div class="container">
		<a class="btn btn-primary" href="formAluno.jsp">Novo Carro</a>
			<table class="table table-bordered">
		
				<thead>
				
				<tr>
				
					<th> ID </th>
					<th> Placa </th>
					<th> Cor </th>
					<th> Modelo </th>
					
				</tr>
				
				</thead>
				<tbody> 
				<% for(Carro carro: carros){ %>
				<tr> 
				
					<td> <%= carro.getId() %> </td>	
					<td> <%= carro.getPlaca() %> </td>	
					<td> <%= carro.getCor() %> </td>	
					<td> <%= carro.getModelo() %> </td>	
					
				</tr>
				<%} %>
				</tbody>
				
			</table>
	</div>

</body>
</html>