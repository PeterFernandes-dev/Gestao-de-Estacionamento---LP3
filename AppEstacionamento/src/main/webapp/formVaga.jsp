<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

    <title> Cadastrar Vaga</title> 
</head>
<body>
       
	<div class="container">
    <div class="title">Cadastrar Vaga</div>
    <div class="content">
    
      <form action="controllerVaga" method="post">
      
        <div class="user-details">
          <div class="input-box">
          
            <span class="details">Cobertura:</span>
            <select class="form-control" name="cobertura" required>
            	<option>Sim</option> 
            	<option>Nao</option> 
            </select>
            
            
            
          </div>
          <div class="input-box">
          
            <span class="details">Status:</span>
            <select class="form-control" name="status" required>
            	<option>Ocupada</option> 
            	<option>Vazia</option> 
            </select>
            
            
          </div>
          <div class="input-box">
          
            <span class="details">Identificacão:</span>
            <input class="form-control" type="text" placeholder="Entre com a identificacão da vaga" required name="identificacao" />
            
          </div>
          
          <div class="input-box">
          
            <span class="details">Preço:</span>
            <input class="form-control" type="text" placeholder="Entre com o preço da vaga" required name="preco" />
            
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