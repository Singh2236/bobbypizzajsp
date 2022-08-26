<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bobby's Pizza</title>
</head>
<body>
<h1>Bobby's Pizza</h1>
<h2>Find your favorite dish: </h2>
<form action="/BobbyPizzaJsp_war/searchResults.jsp" method="GET">
    Find all the dishes containing:
    <input type="text" name="st"/>
    <input type="submit" value="search"/>
</form>

<br><a href='/BobbyPizzaJsp_war/index.jsp'>Home</a>
</body>
</html>
