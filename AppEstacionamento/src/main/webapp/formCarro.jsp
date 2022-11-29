<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css/styleF.css" type="text/css">
     
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title> Cadastrar Carro</title> 
</head>
<body>
       
	<div class="container">
    <div class="title">Cadastrar Carro</div>
    <div class="content">
    
      <form action="controllerCarro" method="post">
      
        <div class="user-details">
          <div class="input-box">
          
            <span class="details">Placa</span>
            <input type="text" placeholder="Entre com a Placa do veículo" required name="placa" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Cor</span>
            <input type="text" placeholder="Entre com a cor do veículo" required name="cor" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Modelo</span>
            <input type="text" placeholder="Entre com o modelo do veículo" required name="modelo" />
            
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