<%
String us, p;
String a = "admin";
us = request.getParameter("user");
p = request.getParameter("pass");

if(us.equalsIgnoreCase(a)&& p.equalsIgnoreCase(a)){
response.sendRedirect("adminpage.jsp?msg=Login Sucess..!");
}else{
response.sendRedirect("index.jsp?msg=Login fails..!");
}
%>