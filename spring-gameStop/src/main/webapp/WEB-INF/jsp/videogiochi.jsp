<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Videogiochi</title>
</head>
<body>
<hr>
<h4 class="text-center">Aggiungi Gioco</h4>
<br>
<div class="row justify-content-center align-items-center">
<form:form action="nuovoVideogioco" method="post" modelAttribute="videogioco" class="form-inline">
 <div class="row justify-content-center">
<div class="form-group">
<label>Titolo</label>
<form:input path="titolo" class="form-control"/>
</div>
<div class="form-group">
<label>Classificazione PEGI:</label>
<form:select path="classificazione">
	<form:options items="${classificazione}" />
</form:select>
</div>
<div class="form-group">
<label>Categoria</label>
<form:select path="categoria">
	<form:options items="${categoria}" />
</form:select>
</div>
<div class="form-group">
<label>Prezzo</label>
<div class="col-xs-1">
<form:input path="prezzo" class="form-control"/>
</div>
<br>
</div>
<input type="submit" class="btn btn-primary" value="Aggiungi">
</div>
</form:form>
</div>

<hr>
<br>
<div class="container center_div">
<label>Ordina per:</label>
<form action="sort" method="post">
<select name="sort">
  <option value="1">Titolo</option>
  <option value="2">Classificazione</option>
  <option value="3">Categoria</option>
  <option value="4">Prezzo</option>
</select>
<input type="submit" class="btn btn-secondary" value="Ordina">
</form>
<label>Filtra per:</label>
<form action="filter" method="post">
<select name="filter">
  <option value="1">Titolo</option>
  <option value="2">Classificazione</option>
  <option value="3">Categoria</option>
  <option value="4">Prezzo</option>
</select>
<input type="text" name="text">
<input type="submit" class="btn btn-secondary" value="Filtra">
</form>
</div>
<br>
<form action="videogiochi" method="post">
 <div class="text-center">
<input type="submit" class="btn btn-danger" value="Mostra tutti">
</div>
</form>
<table class="table table-striped">
<thead>
		<tr>
			<th>Titolo</th>
			<th>Classificazione Pegi</th>
			<th>Categoria</th>
			<th>Prezzo</th>
			<th></th>
		</tr>
		</thead>
		<c:forEach items="${lista}" var="videogioco">
		<tbody>
		<tr>
			<td>${videogioco.titolo}</td>
			<td>${videogioco.classificazione}</td>
			<td>${videogioco.categoria}</td>
			<td>${videogioco.prezzo}</td>
			<td>
				<a href="modifica?videogioco=${videogioco.id}">Modifica</a>
				<a href="elimina?videogioco=${videogioco.id}">Rimuovi</a>
			</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	<form action="home">
	 <div class="text-center">
	<input type="submit" class="btn btn-primary" value="Torna Alla Home">
	 </div>
	</form>
</body>
</html>