<%@ page import="com.navpreet.impl.MenuDataService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    MenuDataService mds = new MenuDataService();
    mds.addingMenuInList();
    int maxId = mds.getMenuItems().size();
    mds.addingMenuInList();
    System.out.println("Order : \n");

    for (int i = 1; i <= maxId; i++) {
        String quantity = request.getParameter("item_" + i); // Front end Item names eg. item_1..

        try {
            int q = Integer.parseInt(quantity);
            if (q > 0) {
                mds.addToOrder(mds.getItem(i), q); // getItem(i) = get item 1 - 15 according to Ids addToOrder takes item id and quantity
                System.out.println(mds.getItem(i).getName() + " X " + q);
            }

        } catch (NumberFormatException e) {
            // it means that there wasn't any item for this order
        }
    }
    System.out.println();
    Double total = mds.getOrderTotal();
    System.out.println("Price: " + total);
    System.out.println();
    System.out.println();
%>


<!DOCTYPE html>
<html>
<head>
    <title>Bobby's</title>
</head>
<body>
<h1>Bobby's Pizza</h1>
<h2>Thank you - your order has been received. You need to pay Euro: <%= total%>
</h2>
Want to make a <a href='/BobbyPizzaJsp_war/order.html'> New Order </a>? <br>
<a href='/BobbyPizzaJsp_war/index.jsp'>Home</a>

</body>
</html>
