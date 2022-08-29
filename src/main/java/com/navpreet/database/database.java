package com.navpreet.database;

import java.sql.*;

public class database {
    public static void main(String[] args) throws SQLException {
        Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/pizzashop","pizzashop","pizzashop");
        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery("SELECT * From Menu");

        while (resultSet.next()) {
            System.out.println(resultSet.getString("name"));
        }

        System.out.println("DONE");

    }
}
