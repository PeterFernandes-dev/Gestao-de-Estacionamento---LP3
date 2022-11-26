<%@page import="br.computacao.AppEstacionamento.model.Vaga"%>
<%@page import="br.computacao.AppEstacionamento.dao.VagaDao"%>
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
        long vagaid = Long.parseLong(request.getParameter("id"));
        VagaDao dao = new VagaDao();
        Vaga conVaga = dao.findById(Vaga.class, vagaid).get();
    %>

    <h1>Cadastro Curso</h1>

    <form action="controllerVaga" method="post">

    <input type="hidden" name="vagaid" value="<%= vagaid %>" />
    
        <label> Cobertura </label>
        <input  type="text" name="cobertura" value="<%= conVaga.getCobertura() %>" />
        <br/>

        <label> Status </label>
        <input  type="text" name="status" value="<%= conVaga.getStatus() %>" />
        <br/>

        <label> Identificação </label>
        <input  type="text" name="identificacao" value="<%= conVaga.getIdentificacao() %>"/>
        <br/>
        
        <label> Preço </label>
        <input  type="text" name="preco" value="<%= conVaga.getPreco() %>"/>
        <br/>

        <input type="submit" value="Salvar" />

    </form>

</body>
</html>