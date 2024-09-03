<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        session.removeAttribute("admin");
        session.removeAttribute("adminEmail");
        response.sendRedirect("index.html");
%>
