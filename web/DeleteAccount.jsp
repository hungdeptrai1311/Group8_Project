<%-- 
    Document   : DeleteAccount
    Created on : Jun 12, 2022, 6:05:34 PM
    Author     : baqua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="DeleteController">
            <input type="text" name="account"  value="${account}" />
            <input type="submit" value="DELETE" />
        </form>
       
    </body>
</html>
