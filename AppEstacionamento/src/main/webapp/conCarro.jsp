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
		
		<link rel="stylesheet" href="css/styleL.css" type="text/css">
		<link href="css/styleH.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>

	<%
		
		CarroDao dao = new CarroDao();
		List<Carro> carros = dao.findAll(Carro.class);
	
	
	%>
	
	<nav>
       <a href="Home.jsp">Home</a>
       <a href="formCarro.jsp">Cadastrar Carro</a>
       <span class="logo">CP Estacionamento</span>
       <a href="formVaga.jsp">Cadastrar Vagas</a>
   	</nav>
	
    <h1>Carros Cadastrados</h1>

    <table>
        <tr id="header">
            <th> ID </th>
			<th> Placa </th>
			<th> Cor </th>
			<th> Modelo </th>
			<th> </th>
			
        </tr>
        <% for(Carro carro: carros){ %>
        <tr>
            <td> <%= carro.getId() %> </td>	
			<td> <%= carro.getPlaca() %> </td>	
			<td> <%= carro.getCor() %> </td>	
			<td> <%= carro.getModelo() %> </td>	
			<td> 
				<div class="d-grid gap-2 d-md-block">
					<a class="btn btn-outline-primary btn-sm" 
                		href="editCarro.jsp?id=<%=carro.getId() %>"> Editar </a>	
		       		<a class="btn btn-outline-danger btn-sm" 
		       			href="<%= request.getContextPath()%>/controllerCarro?id=<%=carro.getId()%>"> Excluir </a>
		            	        	
		          	<a class="btn btn-outline-dark btn-sm" 
		          		href="formCV.jsp?id=<%=carro.getId() %>"> Vincular Vaga </a>
		         </div>
		    </td>

        </tr>
        <%} %>
        

    </table>
    


</body>
</html>