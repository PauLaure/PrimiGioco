<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="img/logo2.png"/>
    <script type="text/javascript" src="script/countElem.js"></script>
    <script type="text/javascript" src="script/jquery-3.5.1.min.js"></script>

    <title>PrimiGioco:Chi Siamo</title>
</head>
<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="model.bean.UserBean" %>
<%@page import="model.Carrello" %>
<%@page import="model.ProdottoCarrello" %>
<%@page import="java.util.*" %>
<body>
<%@include file="header.jsp" %>
<div class="chisiamoimage">
    <img src="./img-banner/chisiamo2.jpg" height="400" width="100%">
</div>
<div class="content chisiamo">
    <h1>CHI SIAMO</h1>
    <h2>Cos'è PrimiGioco?</h2>
    <p>Un sito italiano e-commerce esclusivamente indirizzato per:</p>
    <ul>
        <li>Giochi da Tavolo</li>
        <li>Giochi per bambini</li>
        <li>Giochi per ragazzini</li>
    </ul>
    <h2>Riguardo gli sviluppatori?</h2>
    <p>Si tratta di un gruppo di studenti iscritti presso l'Università degli studi di Salerno (SA) nella facoltà di Informatica,
        che, affascinati dal corso di Tecnologia Software per il Web, si sono impegnati al massimo per offrire un
        servizio sicuro e semplice.</p>
    <h2>Come possiamo contattarvi?</h2>
    <p>Sui vari social situati in basso e al seguente indirizzo email: PrimiGioco.infoitalia@gmail.com</p>
</div>
<%@include file="footer.jsp" %>
</body>
</html>