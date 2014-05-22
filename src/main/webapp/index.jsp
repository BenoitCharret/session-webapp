<%@ page import="com.axioconsulting.test.*" %>
<%@ page import="com.axioconsulting.test.Servlet" %>
<%

    String userName= (String)session.getAttribute(Servlet.SESSION_USER_NAME);
%>

<html>
<body>
<h2>Hello World!</h2>
<% if (userName!=null){%>
<div> You are <%=userName%></div>
<%}%>
</body>
</html>