<%@page import="java.util.List"%>
<%@page import="br.computacao.AppEstacionamento.model.carroVaga"%>
<%@page import="br.computacao.AppEstacionamento.dao.CarroVagaDao"%>
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
		
		CarroVagaDao dao = new CarroVagaDao();
		
	
	%>

	<div class="container">
			<table class="table table-bordered">
		
				<thead>
				
				<tr>
				
					<th> Placa </th>
					<th> Modelo </th>
					<th> Nome da Vaga </th>

					
				</tr>
				
				</thead>
				<tbody> 
				<% for(carroVaga cvs: dao.Ce()){ %>
				<tr> 
				
					<td> <%= cvs.getCarro().getPlaca() %> </td>	
					<td> <%= cvs.getCarro().getModelo() %> </td>	
					<td> <%= cvs.getVaga().getIdentificacao() %> </td>	
				
					
				</tr>
				<%} %>
				</tbody>
				
			</table>
	</div>

</body>
</html>