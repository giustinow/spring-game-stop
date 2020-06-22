<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Digimon</title>
</head>
<body>
<form:form action="nuovoVideogioco" method="post" modelAttribute="videogioco">
<label>Titolo</label>
<form:input path="titolo"/>
<label>Classificazione</label>
<form:input path="classificazione"/>
<label>Categoria</label>
<form:input path="categoria"/>
<label>Prezzo</label>
<form:input path="prezzo"/>
<input type="submit" value="Aggiungi">
</form:form>
<br>
<label>Ordina per:</label>
<form action="sort" method="post">
<select name="sort">
  <option value="1">Titolo</option>
  <option value="2">Classificazione</option>
  <option value="3">Categoria</option>
  <option value="4">Prezzo</option>
</select>
<input type="submit" value="Ordina">
</form>
<br>
<label>Filtra per:</label>
<form action="filter" method="post">
<select name="filter">
  <option value="1">Titolo</option>
  <option value="2">Classificazione</option>
  <option value="3">Categoria</option>
  <option value="4">Prezzo</option>
</select>
<input type="text" name="testo">
<input type="submit" value="Filtra">
</form>
<table>
		<tr>
			<th>Titolo</th>
			<th>Classificazione Pegi</th>
			<th>Categoria</th>
			<th>Prezzo</th>
			<th></th>
		</tr>
		<c:forEach items="${lista}" var="videogioco">
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
	</table>
	<form action="home">
	<input type="submit" value="Torna Alla Home">
	</form>
</body>
</html>