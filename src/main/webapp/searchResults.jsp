<%@ page import="com.navpreet.impl.MenuDataService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.navpreet.interfaces.Menu" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bobby's</title>
</head>
<body>
<h1>Bobby's Pizza</h1>

<%
    MenuDataService mds = new MenuDataService();
    mds.addingMenuInList();

    String searchTerm = request.getParameter("st");
    ArrayList<Menu> searchedList = mds.find(searchTerm);


%>
<h2>Searched Results for <%=searchTerm%> : </h2>
<ul>
    <%
        for (Menu searchedItem : searchedList) {
            out.print("<li>" + searchedItem.getId() + "     ");
            out.print(searchedItem.getName() + "     ");
            out.println(searchedItem.getPrice() + "</li>");

        }
    %>

</ul>
<br>
<a href='/BobbyPizzaJsp_war/index.jsp'>Home</a>

</body>
</html>
