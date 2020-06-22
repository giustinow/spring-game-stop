<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modifica Videogioco</title>
</head>
<body>
<form:form action="aggiorna" method="post" modelAttribute="videogioco">
<form:hidden path="id"/>
<label>Titolo</label>
<form:input path="titolo"/>
<label>Classificazione</label>
<form:input path="classificazione"/>
<label>Categoria</label>
<form:input path="categoria"/>
<label>Prezzo</label>
<form:input path="prezzo"/>
<input type="submit" value="Modifica">
</form:form>
</body>
</html>