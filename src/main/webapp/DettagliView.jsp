<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	ProdottoBean prodotto = (ProdottoBean) request.getAttribute("prodotto");
    	ArrayList<?> prodotti = (ArrayList<?>) request.getAttribute("prodotti");
   		ArrayList<?> comms = (ArrayList<?>) request.getAttribute("commenti");
   		
    %>
<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="model.bean.*, java.util.*"%>
<head>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="script/jquery-3.5.1.min.js"></script>

<script type="text/javascript" src="script/countElem.js"></script>
<script type="text/javascript" src="script/AddCart.js"></script>



<meta charset="UTF-8">
<link rel="icon" type="image/png" href="img/favicon.png" />
<title>PrimiGioco: Dettagli <%=prodotto.getDescrizione() %></title>
</head>
<body>
<%@include file="header.jsp" %>
<div class="content">
	<%if(prodotto != null){ %>
	<div class="dettagli">
		<div class="bloccodescrizione">
		<div class="descrizioneimage">
		<img src="<%=prodotto.getPath()%>" style="display: block; float:left; padding-left: 20px;" width="256px" height="256px" >
		</div>
		<div class="descrizione"><h3>Descrizione</h3><%=prodotto.getDescrizione()%></div>
		</div>
		<div class="infodescrizione">
			<div class="prezzodescrizione">€<%=prodotto.getPrezzo()%></div>
			<%if(prodotto.getQuantita() == 0) {%>
			<h4>Quantità non disponibile</h4>
			<%}else if(prodotto.getQuantita()>=1){ %>
			<div class="iconCart" id="desc"><button id= "add" onclick="addTocart(<%=prodotto.getIdProdotto()%>),increment()"><img src="img/icon-cart.png" class="image"></button></div>
			
			<div class="quant"><h4>Quantità scorte:</h4><p><%=prodotto.getQuantita() %></p></div>
			<div class="comProd"><a href="#commento">Lascia un commento</a></div>
			<%} %>
		</div>
	</div>
	
	</div>
	<%} %>
	
	
<%@include file="footer.jsp" %>
</body>
</html>