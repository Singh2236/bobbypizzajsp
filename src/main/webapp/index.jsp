<%@ page import="com.navpreet.impl.MenuDataService" %>
<%@ page import="com.navpreet.interfaces.Menu" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bobby's</title>
</head>
<body>
<h1>Bobby's Pizza</h1>
<h2>Menu</h2>

<!-- Dashboard -->
<a href='/BobbyPizzaJsp_war/searchResults.jsp?st=pizza'> PIZZA </a> &nbsp
<a href='/BobbyPizzaJsp_war/searchResults.jsp?st=flamkuchen'> FLAMKUCHEN </a> &nbsp
<a href='/BobbyPizzaJsp_war/searchResults.jsp?st=SALAT'> SALAT </a> &nbsp
<a href='/BobbyPizzaJsp_war/searchResults.jsp?st=GYROS'> GYROS </a> &nbsp
<a href='/BobbyPizzaJsp_war/searchResults.jsp?st=ÜBERBAKEN'> ÜBERBAKEN </a> &nbsp
<a href='/BobbyPizzaJsp_war/searchResults.jsp?st=FLEISH'> FLEISH </a> &nbsp
<a href='/BobbyPizzaJsp_war/order.html'> Place Order </a> &nbsp
<a href='/BobbyPizzaJsp_war/SearchMenu.jsp'> Search Item </a>

<!-- -->
<ul>
    <%
        MenuDataService menuData = new MenuDataService();
        menuData.addingMenuInList();
        System.out.println("Menu added to ArrayList");
    %>

        <% for (Menu items : menuData.getMenuItems()) {
            out.println(items.getId());
            out.println("&nbsp&nbsp");
            out.println(items.getName());
            out.println("&nbsp&nbsp");
            out.println(items.getCategory());
            out.println("&nbsp&nbsp");
            out.println(items.getPrice() + " €");
            out.println("<br>");
        }%>

</ul>


</body>
</html>