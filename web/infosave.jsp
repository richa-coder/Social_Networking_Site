<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
<%
String s = request.getParameter("ser");
String d = request.getParameter("des");
String r = request.getParameter("rec");
 Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into service (intr, des, rec) values('"+s+"','"+d+"','"+r+"')");
            if (i != 0) {

               response.sendRedirect("adminpage.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("adminpage.jsp?msgr=Register fails");
            }

%>