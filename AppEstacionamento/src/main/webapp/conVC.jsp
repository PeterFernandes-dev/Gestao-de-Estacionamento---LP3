<%@page import="br.computacao.AppEstacionamento.model.carroVaga"%>
<%@page import="java.util.List"%>
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
		List<carroVaga> cvs = dao.findAll(carroVaga.class);
	
	
	%>

	<div class="container">
		<a class="btn btn-primary" href="formCV.jsp">Nova Vaga</a>
			<table class="table table-bordered">
		
				<thead>
				
				<tr>
				
					<th> ID </th>
					<th> Data de entrada </th>
					<th> Data de saída </th>
					<th> Preço total </th>
					<th> Situação </th>
					<th> Tipo de pagamento </th>
					<th>  </th>
					
				</tr>
				
				</thead>
				<tbody> 
				<% for(carroVaga cv: cvs){ %>
				<tr> 

					<td> <%= cv.getId() %> </td>
					<td> <%= cv.getDataEntrada() %> &nbsp; <%= cv.getHoraEntrada() %> </td>
					<td> <%= cv.getDataSaida() %> &nbsp; <%= cv.getHoraSaida() %> </td>		
					<td> <%= cv.getPrecoTotal() %> </td>
					<td> <%= cv.getFatura().getSituacao() %> </td>	
					<td> <%= cv.getFatura().getTipoPagamento() %> </td>		
					
					<td> 
						<a class="btn btn-secondary btn-sm" 
                			href="editCV.jsp?id=<%=cv.getId() %>"> Editar </a>	

		                <a class="btn btn-danger btn-sm" 
		                	href="<%= request.getContextPath()%>/controllerCV?id=<%=cv.getId()%>"> Excluir </a>
		        	</td>
					
				</tr>
				<%} %>
				</tbody>
				
			</table>
	</div>

</body>
</html>