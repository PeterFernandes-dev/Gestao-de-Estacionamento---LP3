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
		
		<link rel="stylesheet" href="css/styleL.css" type="text/css">
		<link href="css/styleH.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>

	<%
		
		VagaDao dao = new VagaDao();
		List<Vaga> vagas = dao.findAll(Vaga.class);
	
	
	%>
	
	<nav>
       <a href="Home.jsp">Home</a>
       <a href="formCarro.jsp">Cadastrar Carro</a>
       <span class="logo">CP Estacionamento</span>
       <a href="formVaga.jsp">Cadastrar Vagas</a>
   	</nav>
   	
	<h1>Vagas Cadastradas</h1>

    <table>
        <tr id="header">
         	<th> ID </th>
			<th> Cobertura </th>
			<th> Status </th>
			<th> Identificacão</th>
			<th> Preço </th>
			<th> </th>
			
        </tr>
        <% for(Vaga vaga: vagas){ %>
        <tr>
            <td> <%= vaga.getId() %> </td>	
					<td> <%= vaga.getCobertura() %> </td>	
					<td> <%= vaga.getStatus() %> </td>	
					<td> <%= vaga.getIdentificacao() %> </td>	
					<td> <%= vaga.getPreco() %> </td>
			<td> 
				<div class="d-grid gap-2 d-md-block">
					<a class="btn btn-outline-primary btn-sm" 
                		href="editVaga.jsp?id=<%=vaga.getId() %>"> Editar </a>	
		       		<a class="btn btn-outline-danger btn-sm" 
		       			href="<%= request.getContextPath()%>/controllerVaga?id=<%=vaga.getId()%>"> Excluir </a>
		            	        	
		         </div>
		    </td>

        </tr>
        <%} %>
        

    </table>

</body>
</html>