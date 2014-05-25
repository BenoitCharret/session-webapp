<%@ page import="com.axioconsulting.test.*" %>
<%@ page import="com.axioconsulting.test.Servlet" %>
<%@ page import="com.axioconsulting.test.bean.Produit" %>
<%

    String userName= (String)session.getAttribute(Servlet.SESSION_USER_NAME);
    System.out.println(session.getId());

    if (session.getAttribute("product")!=null){
        Produit p=(Produit)session.getAttribute("product");
        p.setCount(p.getCount()+1);
        System.out.println("value of product "+p.getCount());
    }
%>

<html>
<body>
<h2>Hello World!</h2>
<% if (userName!=null){%>
<div> You are <%=userName%></div>
<%}%>
</body>
</html>