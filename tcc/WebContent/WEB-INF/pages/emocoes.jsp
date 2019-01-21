<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css">

    <link rel="stylesheet" href="<c:url value='/resources/style.css' />">

    <title>Document</title>
</head>
<body>
    <div class="content">
        
        
        <div class="box emotions has-text-centered">
                <h1 class="title">Como você está hoje?</h1>
                <div class="columns is-multiline">
                    <div class="column"><a href="/tcc/playlists" class="button is-primary">Feliz</a> </div>
                    <div class="column"><a href="/tcc/playlists" class="button is-info">Triste</a> </div>   
                    <div class="column"><a href="/tcc/playlists" class="button is-danger">Com raiva</a> </div>
                    <div class="column"><a href="/tcc/playlists" class="button is-warning">Crítico</a></div> 
                    <div class="column"><a href="/tcc/playlists" class="button is-danger">Apaixonado</a></div>
                    <div class="column"><a href="/tcc/playlists" class="button is-gray">Entediado</a></div>
                </div>

        </div>
    </div>
    
</body>
</html>