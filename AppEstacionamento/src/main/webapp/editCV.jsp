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

<title>Cadastro Curso</title>
</head>
<body>

    <%
        long cvid = Long.parseLong(request.getParameter("id"));
        CarroVagaDao dao = new CarroVagaDao();
        carroVaga conCV = dao.findById(carroVaga.class, cvid).get();
    %>

    <h1>Cadastro Curso</h1>

    <form action="controllerCV" method="post">

    <input type="hidden" name="cvid" value="<%= cvid %>" />
    
        <span class="details">Data de entrada</span>
        <input type="date" placeholder="Entre com a Placa do veículo" 
        	required name="dataEntrada"  value="<%= conCV.getDataEntrada() %>"/>
        <br/>

        <span class="details">Data de saída</span>
        <input type="date" placeholder="Entre com a cor do veículo" 
        	required name="dataSaida" value="<%= conCV.getDataSaida() %>"/>
        <br/>

        <span class="details">Preço total</span>
        <input type="text" placeholder="Entre com o modelo do veículo" 
        	required name="preco" value="<%= conCV.getPrecoTotal() %>"/>
        <br/>
        
        <span class="details">Situação</span>
        <input type="text" placeholder="Entre com o modelo do veículo" 
        	required name="situacao" value="<%= conCV.getFatura().getSituacao() %>"/>
        <br/>
        
        <span class="details">Tipo de pagamento</span>
        <input type="text" placeholder="Entre com o modelo do veículo" 
        	required name="tipoPagamento"  value="<%= conCV.getFatura().getTipoPagamento() %>"/>
        <br/>

        <input type="submit" value="Salvar" />

    </form>

</body>
</html>