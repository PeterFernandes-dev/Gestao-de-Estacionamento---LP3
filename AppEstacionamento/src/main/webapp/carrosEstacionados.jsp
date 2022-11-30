<%@page import="br.computacao.AppEstacionamento.model.Carro"%>
<%@page import="br.computacao.AppEstacionamento.dao.CarroDao"%>
<%@page import="br.computacao.AppEstacionamento.model.Vaga"%>
<%@page import="br.computacao.AppEstacionamento.dao.VagaDao"%>
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
			
			<link rel="stylesheet" href="css/styleL.css" type="text/css">
			<link href="css/styleH.css" rel="stylesheet">
	
	<title>Carros Estacionados</title>
</head>

<body>

	<%
		//CarroVagaDao dao = new CarroVagaDao();
	    VagaDao vdao = new VagaDao();
	    
	    List<Vaga> listVaga = vdao.BuscaVagaOcupada();
	    
	    CarroDao dao = new CarroDao();
		List<Carro> carros = dao.findAll(Carro.class);
		
		CarroVagaDao cvdao = new CarroVagaDao();
		List<carroVaga> cvs = cvdao.findAll(carroVaga.class);
	%>
	
	<nav>
       <a href="Home.jsp">Home</a>
       <a href="formCarro.jsp">Cadastrar Carro</a>
       <span class="logo">CP Estacionamento</span>
       <a href="formVaga.jsp">Cadastrar Vagas</a>
   	</nav>
   	
   	<h1>Carros Estacionados</h1>

	
		<table>
			<thead>
				<tr>
					<th> Placa </th>
					<th> Modelo </th>
					<th> Nome da Vaga </th>
					<th> Valor cobrado </th>
					<th> Situação do pagamento </th>
				</tr>
			</thead>
			
			<tbody> 
				<% 
					for(Vaga obj : listVaga){ 
						for(carroVaga obj2 : cvs){
							if(obj.getId() == obj2.getVaga().getId())
								for(Carro obj3 : carros){
									if(obj3.getId() == obj2.getCarro().getId())
									{
				%>
										<tr> 
											<td> <%= obj3.getPlaca() %> </td>
						                    <td> <%= obj3.getModelo() %> </td>
						                    <td> <%= obj.getIdentificacao() %> </td>
						                    <td> <%= obj2.getPrecoTotal() %> </td>
						                    <td> <%= obj2.getFatura().getSituacao() %> </td>
										</tr>
				<%
					}
						} 
							}	
								}
				%>
			</tbody>
			
		</table>
	

</body>
</html>