<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="model.bean.UserBean"  %>
<%@page import="model.Carrello"  %>
<%@page import="model.ProdottoCarrello"  %>
<%@page import="java.util.*"  %>
<head>
<link rel="stylesheet" href="css/style.css">
<meta charset="UTF-8">
<title>Attenzione: l'operazione non e' andata a buon fine</title>
</head>
<body>
	<%@include file="header.jsp" %>

<div class="errore">
<h1>L'operazione non e' andata a buon fine</h1><br>
→<a href="./catalogo"> Torna alla Home </a>←<br>
</div>
	<%@ include file="footer.jsp" %>

</body>
</html>