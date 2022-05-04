
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*, delivery.*, util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<title>로그인 환영 화면</title>


</head>
<body>
<table width=100%>
<tr>
<td bgcolor='#CCEEFF'><h1 align=center>요기따</h1>
<div align=right>
      <%=session.getAttribute("id")%>님이 로그인 했습니다.<br> <input type=button
         value="로그아웃" onclick="location.href='Logout.jsp'"> 
      <form action = "CustomerOrderTablePrint.jsp" method="POST">
      <input type="hidden" name="CID" value= <%=session.getAttribute("id")%>>
      <input type="submit" value="주문내역">
      </form>
   </div>
   </td>
</tr>
</table><hr><br>

<div align="right">
<form action = "FindStorebyName.jsp" method="POST">
	가게이름:<input type="text" name="StoreName" size = 10>
	<input type="submit" value="검색"><br>
</form>
</div>

<script>
function move(classification){
	document.location.href="FindStorebyClassification.jsp?classification="+classification;
}</script>
<style>
.button{
font:15px 굴림;
font-weight:bold;
width:200;height:50;
}</style>
<h3>카테고리</h3>
<input type ="button" style="float:left" value="한식" class=button onclick="move('Kfood')"/>&nbsp;&nbsp;
<input type ="button" style="float:left" value="분식" class=button onclick="move('Flourfood')"/>&nbsp;&nbsp;
<input type ="button" style="float:left" value="카페,디저트" class=button onclick="move('Cafe')"/>&nbsp;&nbsp;
<input type ="button" style="float:left" value="치킨" class=button onclick="move('Chicken')"/>&nbsp;&nbsp;
<input type ="button" style="float:left" value="피자" class=button onclick="move('Pizza')"/><br><br>
<input type ="button" style="float:left" value="아시안,양식" class=button onclick="move('Asian')"/>&nbsp;&nbsp;
<input type ="button" style="float:left" value="중국집" class=button onclick="move('Cfood')"/>&nbsp;&nbsp;
<input type ="button" style="float:left" value="족발,보쌈" class=button onclick="move('Jokbal')"/>&nbsp;&nbsp;
<input type ="button" style="float:left" value="찜,탕" class=button onclick="move('Steamed')"/>&nbsp;&nbsp;
<input type ="button" style="float:left" value="도시락" class=button onclick="move('Lunchbox')"/><br><br>
<input type ="button" style="float:left" value="패스트푸드" class=button onclick="move('Fastfood')"/>	
</body>
</html>

