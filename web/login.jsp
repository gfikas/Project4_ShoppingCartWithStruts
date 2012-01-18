<%-- 
    Document   : login
    Created on : Jan 18, 2012, 5:08:01 PM
    Author     : g_f
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body style="background-color: lightskyblue" align="center">
        <h1>Please login first!</h1>
        <html:form action="/login">
            First name: <html:text property="name"/><br />
            Your email: <html:text property="email"/><br />
            <html:submit>Log In!</html:submit>
        </html:form>
    </body>
</html>
