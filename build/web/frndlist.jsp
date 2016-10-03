<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
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
              <li><a  href="findfrnd.jsp">Add Friend</a></li>
              <li><a href="viewreq.jsp">View Request</a></li>
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
            <fieldset>
                 <div style="position: absolute; left: 220px; top: 80px;">
          <font size="+1" color="green"><b>Friend List:</b>  </font><br><br><br>
<!--          <form action="update.jsp" method="get">-->
 <table width="600" border="2" style="text-align: center">
                        <tr align="center" style="font-weight: bold; color: red; background:green "><td>MY FRIEND</td>
                        <td>LIST</td>
                        <td>DETAILS</td>                      
                        <tr align="center" style="font-weight: bold; font-family: cursive; color: purple; background: #000" >            
       
<%
          String stA = "YES";
          String frnd = null;
          String user = null;
          String id = null;
            Connection con =  DbConnector.getConnection();
          Statement st = con.createStatement();
          ResultSet rs = st.executeQuery("select * from frnd where user ='"+(String) session.getAttribute("me") + "' OR frnd ='"+(String) session.getAttribute("me") + "' and status_='"+stA+"' ");
          while(rs.next()){
user = rs.getString("user");
frnd = rs.getString("frnd");

id = rs.getString("id");
session.setAttribute("di", id);
%>
<td style="font-weight: bold; font-family: cursive; color: purple; background: yellow"><%=user%></td>
<td style="font-weight: bold; font-family: cursive; color: white; background: blue">TO</td>
<td style="font-weight: bold; font-family: cursive; color: purple; background: yellow"><%=frnd%></td>

</tr>
    <%}   
%>
                        </table> </div>  </fieldset>   
        		
              <div class="wrapper">
                  <figure class="img-indent3"><img src="images/aboutme.png" width="100"/></figure>
                <div class="extra-wrap">
                  
                </div>
              </div>
              <a class="button-2" href="aboutme.jsp"><%=me%></a> </div>
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

