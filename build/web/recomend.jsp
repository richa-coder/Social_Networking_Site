<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
<%
String me = session.getAttribute("me").toString();    
String id = request.getQueryString().toString();
Connection con =  DbConnector.getConnection();
      Statement st1 = con.createStatement();
          ResultSet rs1 = st1.executeQuery("select * from recmend where user ='"+(String) session.getAttribute("me") + "' and recid='"+id+"' ");
          if(rs1.next()){
          response.sendRedirect("userpage.jsp?fr=already in.. ");
}else{
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into recmend (user, recid) values('"+me+"','"+id+"')");
            if (i != 0) {
               response.sendRedirect("userpage.jsp?fd= success");                
            } else {
               response.sendRedirect("userpage.jsp?msgr= fails");
            }
}

%>
