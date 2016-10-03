<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
 String my = session.getAttribute("me").toString();
 String friend = request.getParameter("frnd");
 String sta = "YES";
 String id = request.getQueryString();
Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
int i = st.executeUpdate("update frnd set status_='"+sta+"' where id ='"+id+"' ");
if(i!=0){
response.sendRedirect("userpage.jsp?st=send sucess");
}
else{
out.println("error found");
}
%>