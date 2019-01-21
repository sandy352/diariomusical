<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Musicas</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css">

<link rel="stylesheet" href="<c:url value='/resources/style.css' />">
</head>
<body>

	<%-- 	<c:import url="../menu.jsp"></c:import> --%>
<div class="box">
	<h1 class="title">Musicas</h1>

	<table class="table" border=1>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Música</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="playlist" items="${playlist}">


				<tr>

					<td>${playlist.musica.nome}</td>
					<td><iframe width="400" height="300" src="${playlist.musica.link}"
						frameborder="0"
						allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen> </iframe></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</div>
</body>
</html>
