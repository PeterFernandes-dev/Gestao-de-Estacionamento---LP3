<%@page import="br.computacao.AppEstacionamento.model.carroVaga"%>
<%@page import="br.computacao.AppEstacionamento.dao.CarroVagaDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

    <link rel="stylesheet" href="css/styleF.css" type="text/css">
     
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

<title>Cadastro Curso</title>
</head>
<body>

    <%
        long cvid = Long.parseLong(request.getParameter("id"));
        CarroVagaDao dao = new CarroVagaDao();
        carroVaga conCV = dao.findById(carroVaga.class, cvid).get();
    %>

    
    <div class="container">
    <div class="title">Editar Estacionamento</div>
    <div class="content">
    
      <form action="controllerCV" method="post">
      	
      	<input type="hidden" name="cvid" value="<%= cvid %>" />
      	
        <div class="user-details">
          <div class="input-box">
          
            <span class="details">Data de entrada</span>
            <input type="date" placeholder="Entre com a Placa do veículo" 
        		required name="dataEntrada"  value="<%= conCV.getDataEntrada() %>"/>
            
          </div>
          <div class="input-box">
          
            <span class="details">Hora de entrada</span>
            <input type="time" placeholder="Entre com a cor do veículo" 
        		required name="horaEntrada" value="<%= conCV.getHoraEntrada() %>"/>
            
          </div>
          <div class="input-box">
          
            <span class="details">Data de saída</span>
            <input type="date" placeholder="Entre com a cor do veículo" 
        		required name="dataSaida" value="<%= conCV.getDataSaida() %>"/>
            
          </div>
          <div class="input-box">
          
            <span class="details">Hora de saída </span>
            <input type="time" placeholder="Entre com a cor do veículo" 
        		required name="horaSaida" value="<%= conCV.getHoraSaida() %>"/>
            
          </div>
          <div class="input-box">
          
            <span class="details">Preço total </span>
            <input type="text" placeholder="Entre com o modelo do veículo" 
        		required name="preco" value="<%= conCV.getPrecoTotal() %>"/>
            
          </div>
          <div class="input-box">
          
            <span class="details">Situação</span>
            <input type="text" placeholder="Entre com o modelo do veículo" 
        		required name="situacao" value="<%= conCV.getFatura().getSituacao() %>"/>
            
          </div>
          <div class="input-box">
          
            <span class="details">Tipo de pagamento</span>
            <input type="text" placeholder="Entre com o modelo do veículo" 
        		required name="tipoPagamento"  value="<%= conCV.getFatura().getTipoPagamento() %>"/>
            
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