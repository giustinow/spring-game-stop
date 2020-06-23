<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modifica Videogioco</title>
</head>
<body>
<div class="container center_div">
<form:form action="aggiorna" method="post" modelAttribute="videogioco">
<form:hidden path="id"/>
<label>Titolo</label>
<form:input path="titolo" class="form-control-sm"/>
<label>Classificazione PEGI</label>
<form:select path="classificazione">
	<form:options items="${classificazione}" />
</form:select>
<label>Categoria</label>
<form:select path="categoria">
	<form:options items="${categoria}" />
</form:select>
<label>Prezzo</label>
<form:input path="prezzo" class="form-control-sm"/>
<input type="submit" class="btn btn-primary" value="Modifica">
</form:form>
</div>
</body>
</html>