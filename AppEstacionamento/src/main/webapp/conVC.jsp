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
			
			<link rel="stylesheet" href="css/styleL.css" type="text/css">
			<link href="css/styleH.css" rel="stylesheet">
	
	<title>Editar Estacionamento</title>
</head>
<body>

	<%
		CarroVagaDao dao = new CarroVagaDao();
		List<carroVaga> cvs = dao.findAll(carroVaga.class);
	%>
	
	<nav>
       <a href="Home.jsp">Home</a>
       <a href="formCarro.jsp">Cadastrar Carro</a>
       <span class="logo">CP Estacionamento</span>
       <a href="formVaga.jsp">Cadastrar Vagas</a>
   	</nav>
   	
	<h1>Editar Estacionamento</h1>

	
	    <table>
	    	<thead>
		        <tr id="header">
	         		<th> ID </th>
					<th> Data de entrada </th>
					<th> Hora de entrada </th>
					<th> Data de saída </th>
					<th> Hora de entrada </th>
					<th> Preço total </th>
					<th> Situação </th>
					<th> Tipo de pagamento </th>
					<th>  </th>
					<th>  </th>
		        </tr>
		    </thead>
		    
		    <tbody>
		        <% for(carroVaga cv: cvs){  %>
			        <tr>
			           	<td> <%= cv.getId() %> </td>
						<td> <%= cv.getDataEntrada() %> </td>
						<td> <%= cv.getHoraEntrada() %> </td>
						<td> <%= cv.getDataSaida() %>   </td>		
						<td><%= cv.getHoraSaida() %> </td>	
						<td> <%= cv.getPrecoTotal() %> </td>
						<td> <%= cv.getFatura().getSituacao() %> </td>	
						<td> <%= cv.getFatura().getTipoPagamento() %> </td>
						<td> 
							<a class="btn btn-outline-primary btn-sm" 
			                		href="editCV.jsp?id=<%=cv.getId() %>"> Editar </a>	
					       	
					    </td>
					    
					    <td>
					    	<a class="btn btn-outline-danger btn-sm" 
					       			href="<%= request.getContextPath()%>/controllerCV?id=<%=cv.getId()%>"> Excluir </a>
					    </td>
			
			        </tr>
		        <%} %>
		    </tbody>
	    </table>
	
</body>
</html>