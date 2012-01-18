<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <%
        String x = request.getParameter("name");
        String y = request.getParameter("email");
        if (x != null && y != null) {
            session.setAttribute("session_name", x);
            session.setAttribute("session_email", y);
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        <html:base/>
    </head>
    <body style="background-color: lightskyblue" align="center">
        
        <logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
            <div  style="color: red">
                ERROR:  Application resources not loaded -- check servlet container
                logs for error messages.
            </div>
        </logic:notPresent>
        
        <h1><bean:message key="welcome.heading"/></h1>
        <p align="center">Hello <%out.print(session.getAttribute("session_name"));%>!</p>
        <div>
            <html:form action="/main" method="POST">
                <table border="1" align="center" style="background-color: darkorange">
                    <tr>
                        <td><b>Item</b></td>
                        <td><b>Price</b></td>
                        <td><b>Quantity</b></td>
                        <td><b>Total</b></td>
                    </tr>
                    <tr>
                        <td>Coffee</td>
                        <td>${initParam.coffee_price}</td>
                        <td><html:text property="coffee_amount"/></td>
                        <td><bean:write name="product" property="coffee_total"/></td>
                    </tr>
                    <tr>
                        <td>Sugar</td>
                        <td>${initParam.sugar_price}</td>
                        <td><html:text property="sugar_amount"/></td>
                        <td><bean:write name="product" property="sugar_total"/></td>
                    </tr>
                    <tr>
                        <td>Water</td>
                        <td>${initParam.water_price}</td>
                        <td><html:text property="water_amount"/></td>
                        <td><bean:write name="product" property="water_total"/></td>
                    </tr>
                    <tr>
                        <td><b>Total</b></td>
                        <td></td>
                        <td></td>
                        <td><bean:write name="product" property="total"/></td>
                    </tr>
                </table>
                <html:submit>Check Out</html:submit>
            </html:form>
            <p>The bill will be sent at <%out.print(session.getAttribute("session_email"));%></p>
            <form align="right">
                <input type="BUTTON" value="Info" onclick="window.location.href='http://gfikas.wordpress.com/2012/01/18/project_4-200112/'">
            </form>
            <form align="right">
                <input type="BUTTON" value="Code" onclick="window.location.href='https://github.com/gfikas/Project4_ShoppingCartWithStruts/zipball/master'">
            </form>
    </body>
</html:html>
