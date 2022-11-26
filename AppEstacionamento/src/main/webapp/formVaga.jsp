<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css/styleC.css" type="text/css">
     
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title> Cadastrar Vaga</title> 
</head>
<body>
       
	<div class="container">
    <div class="title">Cadastrar Carro</div>
    <div class="content">
    
      <form action="controllerVaga" method="post">
      
        <div class="user-details">
          <div class="input-box">
          
            <span class="details">Cobertura</span>
            <input type="text" placeholder="Entre com a cobertura da vaga" required name="cobertura" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Status</span>
            <input type="text" placeholder="Entre com o status da vaga" required name="status" />
            
          </div>
          <div class="input-box">
          
            <span class="details">Identificacão</span>
            <input type="text" placeholder="Entre com a identificacão da vaga" required name="identificacao" />
            
          </div>
          
          <div class="input-box">
          
            <span class="details">Preço</span>
            <input type="text" placeholder="Entre com o preço da vaga" required name="preco" />
            
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