<%@page import="br.computacao.AppEstacionamento.model.Carro"%>
<%@page import="br.computacao.AppEstacionamento.dao.CarroDao"%>
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
        long carroid = Long.parseLong(request.getParameter("id"));
        CarroDao dao = new CarroDao();
        Carro conCarro = dao.findById(Carro.class, carroid).get();
    %>

    <h1>Cadastro Curso</h1>

    <form action="controllerCarro" method="post">

    <input type="hidden" name="carroid" value="<%= carroid %>" />
    
        <label> Placa </label>
        <input  type="text" name="placa" value="<%= conCarro.getPlaca() %>" />
        <br/>

        <label> Cor </label>
        <input  type="text" name="cor" value="<%= conCarro.getCor() %>" />
        <br/>

        <label> Modelo </label>
        <input  type="text" name="modelo" value="<%= conCarro.getModelo() %>"/>
        <br/>

        <input type="submit" value="Salvar" />

    </form>

</body>
</html>