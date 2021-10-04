<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DB Connection</title>
</head>
<body>
<%
/* String name=request.getParameter("uname");
String pass=request.getParameter("upass"); */

try {
    Class.forName("org.postgresql.Driver");
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}


try (Connection conn = DriverManager.getConnection(
		"jdbc:postgresql://127.0.0.1:5432/first", "postgres", "gobi123")) {

    if (conn != null) {
        out.println("Connected to the database!");
    } else {
        out.println("Failed to make connection!");
    }

    }
 catch (SQLException e) {
    System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
} catch (Exception e) {
    e.printStackTrace();
}


%>

</body>
</html>