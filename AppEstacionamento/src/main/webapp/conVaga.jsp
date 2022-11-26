<%@page import="br.computacao.AppEstacionamento.model.Vaga"%>
<%@page import="java.util.List"%>
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

<title>Insert title here</title>
</head>
<body>

	<%
		
		VagaDao dao = new VagaDao();
		List<Vaga> vagas = dao.findAll(Vaga.class);
	
	
	%>

	<div class="container">
		<a class="btn btn-primary" href="formVaga.jsp">Nova Vaga</a>
			<table class="table table-bordered">
		
				<thead>
				
				<tr>
				
					<th> ID </th>
					<th> Cobertura </th>
					<th> Status </th>
					<th> Identificacão</th>
					<th> Preço </th>
					<th> </th>
					
				</tr>
				
				</thead>
				<tbody> 
				<% for(Vaga vaga: vagas){ %>
				<tr> 
				
					<td> <%= vaga.getId() %> </td>	
					<td> <%= vaga.getCobertura() %> </td>	
					<td> <%= vaga.getStatus() %> </td>	
					<td> <%= vaga.getIdentificacao() %> </td>	
					<td> <%= vaga.getPreco() %> </td>
					
					<td> 
						<a class="btn btn-secondary btn-sm" 
                			href="editVaga.jsp?id=<%=vaga.getId() %>"> Editar </a>	

		                <a class="btn btn-danger btn-sm" 
		                	href="<%= request.getContextPath()%>/controllerVaga?id=<%=vaga.getId()%>"> Excluir </a>
		        	</td>
					
				</tr>
				<%} %>
				</tbody>
				
			</table>
	</div>

</body>
</html>