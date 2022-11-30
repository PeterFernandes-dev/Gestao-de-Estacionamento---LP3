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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
		crossorigin="anonymous">
    
    <link rel="stylesheet" href="css/styleF.css" type="text/css">
     
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title> Vincular Carro</title> 
</head>
<body>
       
	<%
        long id = Long.parseLong(request.getParameter("id"));

        VagaDao vdao = new VagaDao();
        //List<Vaga> listVaga = vdao.findAll(Vaga.class);
        
        List<Vaga> listVaga = vdao.BuscaVagaVazia();
    %>  
       
	<div class="container">
    <div class="title">Vincular Carro</div>
    <div class="content">
    
      <form action="controllerCV" method="post">
      <input type="hidden" value="<%= id %>" name="id" />
      
        <div class="user-details">
          <div class="input-box">
          
            <span class="details">Data de Entrada:</span>
            <input type="date" required name="dataEntrada" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Hora de Entrada:</span>
            <input type="time" required name="horaEntrada" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Data de saída:</span>
            <input type="date" required name="dataSaida" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Hora de Saida:</span>
            <input type="time" required name="horaSaida" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Situação:</span>
            <select class="form-control" name="situacao" required>
            	<option>Pago</option> 
            	<option>Nao Pago</option> 
            </select>
            
            
          </div>
          <div class="input-box">
          
            <span class="details">Tipo de Pagamento:</span>
            <select class="form-control" name="tipoPagamento" required>
            	<option>Cartao</option> 
            	<option>Cheque</option> 
            	<option>A vista</option>
            </select>
            
            
          </div>
          <div class="input-box">
          	
          	<span class="details">Selecionar Vaga:</span>
          	<select class="form-control" name="Vagaid"> 

                  <option value=""> Selecione uma Vaga</option>
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