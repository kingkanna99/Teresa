<%@ page session="true"%>
<html>
	<head>
		<title>Start Web Application</title>
	</head>
	<body>
	<%
		String parola = (String)request.getAttribute("parola");
		if(parola !=null){	%>
			<p>
				<%=parola%>
			</p>
		<%	
		}else{	%>
			<p>
				Test
			</p>
			<%
		}
	%>
		<div>
			<form action="/Teresa/Server" method="post"> 
				<input type="text" id="parola" name="parola"/><br>
				<input type="submit" name = "azione" value="input"/>
			</form> 
			<form action="https://api.instagram.com/oauth/authorize
							?client_id=483700669290024
							&redirect_uri=http://3.22.234.248:83/Teresa/
							&scope=user_profile,user_media
							&response_type=code" method="post">
				<input type="submit" name = "insta" value="insta"/>
			
			</form>
		</div>
	</body>
</html>

