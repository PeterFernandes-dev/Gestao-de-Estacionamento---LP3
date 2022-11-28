<%@page import="java.util.List"%>
<%@page import="br.computacao.AppEstacionamento.model.Vaga"%>
<%@page import="br.computacao.AppEstacionamento.dao.VagaDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css/styleC.css" type="text/css">
     
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title> Cadastrar Carro</title> 
</head>
<body>
       
	<%
        long id = Long.parseLong(request.getParameter("id"));

        VagaDao vdao = new VagaDao();
        //List<Vaga> listVaga = vdao.findAll(Vaga.class);
        
        List<Vaga> listVaga = vdao.BuscaVagaVazia();
    %>  
       
	<div class="container">
    <div class="title">Cadastrar Carro</div>
    <div class="content">
    
      <form action="controllerCV" method="post">
      <input type="hidden" value="<%= id %>" name="id" />
      
        <div class="user-details">
          <div class="input-box">
          
            <span class="details">Data de entrada</span>
            <input type="date" placeholder="Entre com a Placa do veículo" required name="dataEntrada" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Hora de entrada</span>
            <input type="time" placeholder="Entre com a Placa do veículo" required name="horaEntrada" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Data de saída</span>
            <input type="date" placeholder="Entre com a cor do veículo" required name="dataSaida" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Hora de saida</span>
            <input type="time" placeholder="Entre com a Placa do veículo" required name="horaSaida" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Situação</span>
            <input type="text" placeholder="Entre com o modelo do veículo" required name="situacao" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Tipo de pagamento</span>
            <input type="text" placeholder="Entre com o modelo do veículo" required name="tipoPagamento" />
            
          </div>
          <div class="input-box">
          
          	<select name="Vagaid"> 

                  <option value=""> Selecione uma Vaga </option>
                  <%
                      for(Vaga obj : listVaga) 
                      {
                  %>
                          <option value="<%= obj.getId() %>"> <%= obj.getIdentificacao() %> </option>
                  <%
                      }
                  %>

              </select>
            
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