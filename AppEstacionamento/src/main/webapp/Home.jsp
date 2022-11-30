<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
		crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Teko&display=swap" 
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="imgs/Estacionamento.png" 
    rel="stylesheet">
    <link href="css/styleH.css" rel="stylesheet">
</head>
<body>
   <div class="home">
   	<nav>
       <a href="Home.jsp">Home</a>
       <a href="formCarro.jsp">Cadastrar Carro</a>
       <span class="logo">CP Estacionamento</span>
       <a href="formVaga.jsp">Cadastrar Vagas</a>
   	</nav>
    <div class="banner-area">
       <h3>CP Estacionamento </h3>
       <h2 style="margin-bottom: 30px" ><span class="typed2"></span></h2>
	       <a class="btn btn-outline-dark" href="conCarro.jsp">Carros</a>
	       <a class="btn btn-outline-dark" href="conVaga.jsp">Vagas</a>
	       <a class="btn btn-outline-dark" href="carrosEstacionados.jsp">Carros Estacionados</a>
	       <a class="btn btn-outline-dark" href="conVC.jsp">Estacionamento</a>
    </div>
   </div>


    <script src="css/typed.js"></script>
    <script>
        var typed = new Typed(".typed2", {
            strings: [
                "Bem-Vindo",
                "Escolha uma opção",
            ],
            typeSpeed: 50,
            backSpeed: 50,
            loop: true
        });
    </script>
   
</body>
</html>

