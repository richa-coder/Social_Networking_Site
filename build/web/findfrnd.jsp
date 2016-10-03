<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>

<!--//@author sudip-->
<html lang="en">
<head>
<title>Friendbook</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->

</head>
<body id="page1">
<!-- header -->
<div class="bg">
  <div class="main">
    <header>
      <div class="row-1">
          <h1 style="color:greenyellow; font-size: 28px;">Friendbook:<br><br> A Semantic-based Friend
Recommendation System for Social Networks </h1>      
      </div>   
         <div class="row-2">
        <nav>
          <ul class="menu">
              <li><a class="active" href="userpage.jsp">Home Page</a></li>
<!--              <li><a class="active" href="findfrnd.jsp">Add Friend</a></li>-->
              <li><a href="viewreq.jsp">View Request</a></li>
              <li><a href="frndlist.jsp">My Friend</a></li>
              <li><a href="index.jsp">Logout</a></li>
            
          </ul>
        </nav>
      </div>
        <%
String me = session.getAttribute("me").toString();   


%>


      <div class="row-3">
        <div class="slider-wrapper">
          <div class="slider">
            <ul class="items">
              <li><img src="images/slider-img1.png" alt=""> <strong class="banner"> <strong class="b1"></strong> <strong class="b2"></strong> <strong class="b3"><br>
               </strong> </strong> </li>
              <li><img src="images/slider-img2.png" alt=""> <strong class="banner"> <strong class="b1"></strong> <strong class="b2"></strong> <strong class="b3"><br>
               </strong> </strong> </li>
              <li><img src="images/slider-img3.png" alt=""> <strong class="banner"> <strong class="b1"></strong> <strong class="b2"></strong> <strong class="b3"><br>
               </strong> </strong> </li>
            </ul>
            <a class="prev" href="#">prev</a> <a class="next" href="#">prev</a> </div>
        </div>
      </div>
    </header>
    <!-- content -->
    <section id="content">
      <div class="padding">
        <div class="box-bg margin-bot">
          <div class="wrapper">
            <div class="col-1">
              
            </div>
         
           
          </div>
        </div>
        <div class="wrapper">
          <div class="col-3">
            <div class="indent">
                <div style="color: red; font-size: 20px; position: absolute; top: 50px;">Welcome <%=me%>..!</div>
<!--              <h2>User Login</h2>-->
              <p class="color-4 p1" style="text-align: justify; width: 900px; "> 
                       <%
if(request.getParameter("fr")!=null) {
out.println("<script>alert('Already in Your Friend List.!')</script>");
}         
%> 

        		<%
if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}                       

%>
              <div style="position: absolute; left: 220px; top: 80px;">
              <fieldset>
          <font size="+3" color="green"><b>Available Friends:  </b></font><br>
              <br>
              <br>
              
          <%
          String stA = "YES";
          String frndd = null;
          String id = null;
          Connection con =  DbConnector.getConnection();
          Statement st1 = con.createStatement();
          ResultSet rs1 = st1.executeQuery("select * from frnd where user ='"+(String) session.getAttribute("me") + "' and status_='"+stA+"' ");
          while(rs1.next()){
          frndd = rs1.getString("frnd");
          id = rs1.getString("id");
          session.setAttribute("di", id);
%>
<input type="hidden" value="<%=frndd%>"/>

   <%
       System.out.println(" this is frnds.."+frndd);   
              }
             %>
        
            <table width="600" border="2" style="text-align: center">
                        <tr align="center" style="font-weight: bold; color: red; background:darkgoldenrod "><td>USERID</td>
                       <td>INTEREST</td>                        
                     <td>ACTION</td>
                        <tr align="center" style="font-weight: bold; font-family: cursive; color: purple; background: #000" >  

                            <!--          <select name="frnd" style="background-color: #ccccff; width: 150px; height: 30px;">-->
            
          <%
          
         String frnd ;
         String intr=null;
         String intr1= null;
         Statement st = con.createStatement();
         ResultSet rs11 = st.executeQuery("select * from regpage where userid = '"+(String) session.getAttribute("me") + "'");
         if(rs11.next()){      
         intr = rs11.getString("loc");
         System.out.println(intr);      
         Statement stt1 = con.createStatement();
         ResultSet rs12 = stt1.executeQuery("select * from regpage where loc = '"+intr+"' and userid NOT LIKE '"+(String) session.getAttribute("me") + "'");
          while(rs12.next()){
         intr1 = rs12.getString("loc");
          frnd = rs12.getString("userid");  
%>

<td style="font-weight: bold; font-family: cursive; color: purple; background: #000"><%=frnd%></td>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000"><%=intr%></td>
<td style="font-weight: bold; font-family: cursive; color: purple; background: #000">
<a href="addfrnd.jsp?<%=frnd%>">
<button style="background: #00a9ff; width: 120px; height: 30px;"/>Friend Request</button>
</a>
</td>

 </tr>
<%   } } %>

<!--          </option></select>-->
              </table> <br><br><br><br><br>
<!--    <input type="submit" value="Send Request" style="background-color: #0099ff"/>-->
          </form>   </fieldset> </div>
              </p>
              <div class="wrapper">
                  <figure class="img-indent3"><img src="images/aboutme.png" width="100"/></figure>
                <div class="extra-wrap">
                  
                </div>
              </div>
              <a class="button-2" href="aboutme.jsp"><%=me%></a> </div>
            
              </center>
          </div>
          <div class="col-2">
           
          </div>
        </div>
      </div>
    </section>
    <!-- footer -->
    <footer>
      <div class="row-top">
        <div class="row-padding">
          <div class="wrapper">
         
            <div class="col-2">
              <h4>Follow Us:</h4>
              <ul class="list-services">
                <li class="item-1"><a href="https://www.facebook.com/">Facebook</a></li>
                <li class="item-2"><a href="https://twitter.com/">Twitter</a></li>
                
              </ul>
            </div> 
          </div>
        </div>
      </div>
      <div class="row-bot">
        
      </div>
    </footer>
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
$(function () {
    $('.slider')._TMS({
        prevBu: '.prev',
        nextBu: '.next',
        playBu: '.play',
        duration: 800,
        easing: 'easeOutQuad',
        preset: 'simpleFade',
        pagination: false,
        slideshow: 3000,
        numStatus: false,
        pauseOnHover: true,
        banners: true,
        waitBannerAnimation: false,
        bannerShow: function (banner) {
            banner.hide().fadeIn(500)
        },
        bannerHide: function (banner) {
            banner.show().fadeOut(500)
        }
    });
})
</script>
</body>
</html>

