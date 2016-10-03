<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
 String my = session.getAttribute("me").toString();
// String friend = request.getParameter("frnd");
 String friend = request.getQueryString();
String sta = "NO";
String y = "YES";
String stA = "YES";
String inter = null;
//String id = null;
System.out.println("FRIEND NAME " + friend);
Connection con =  DbConnector.getConnection();  
       Statement stt = con.createStatement();
        ResultSet rst = stt.executeQuery("select * from regpage where userid ='"+(String) session.getAttribute("me")+"' ");
          if(rst.next()){
              inter = rst.getString("loc");           
}
       Statement st1 = con.createStatement();
          ResultSet rs1 = st1.executeQuery("select * from frnd where user ='"+(String) session.getAttribute("me") + "' and frnd='"+friend+"'and status_='"+stA+"' ");
          if(rs1.next()){
              response.sendRedirect("findfrnd.jsp?fr=already in.. ");
}
else{
Statement st = con.createStatement();
int i = st.executeUpdate("insert into frnd (user,frnd,status_,userintr) values ('"+my+"','"+friend+"','"+sta+"','"+inter+"')");
if(i!=0){
response.sendRedirect("userpage.jsp?st=send sucess");
}
else{
out.println("error found");
}
}
%>