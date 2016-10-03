<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
<!--              <li><a class="active" href="userpage.jsp">Home Page</a></li>-->
              <li><a class="active" href="findfrnd.jsp">Add Friend</a></li>
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
         
          <%
if(request.getParameter("fr")!=null) {
out.println("<script>alert('Already in Your Recommend List.!')</script>");
} 

if(request.getParameter("fd")!=null){
out.println("<script>prompt('Please enter your Feedback', 'Good')</script>");
}      
%>   
          </div>
        </div>
        <div class="wrapper">
          <div class="col-3">
            <div class="indent">
                <div style="color: red; font-size: 20px; position: absolute; top: 50px;">Welcome <%=me%>..!</div>
<!--              <h2>User Login</h2>-->
              <p class="color-4 p1" style="text-align: justify; width: 900px; "> 
            <%
String id = null;
String intr = null;
String des = null;
String rec = null;
Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
ResultSet rst = st.executeQuery("select * from regpage where userid='"+me+"'");
//for getting interst
if(rst.next()){
                intr = rst.getString("loc");
                System.out.println("THIS IS MY INTEREST :" +  intr);
                }
//ending here

Statement st1 = con.createStatement();
ResultSet rst1 = st1.executeQuery("select * from service where intr = '"+intr+"'");
while(rst1.next()){
id = rst1.getString("id");
des = rst1.getString("des");
rec = rst1.getString("rec");               
                
            %>
<fieldset style="width: 300px; ">
<img src="images/rec.jpg" width="70" height="70">
<font color="green"><b><%=intr%></b></font><br>
<%=des%><br>
<a href="<%=rec%>"><%=rec%></a><br>
<a href="recomend.jsp?<%=id%>"><button style="background: #00a9ff; width: 120px; height: 30px;"/>Recommend</button></a><br><br>

</fieldset>
<%}%>


<%

String frnd = null;
String frnid = null;
String in = null;
String stA = "YES";
Statement str = con.createStatement();
ResultSet rsr = str.executeQuery("select * from frnd where user ='"+(String) session.getAttribute("me") + "'  and status_='"+stA+"' ");
while(rsr.next()){
frnd = rsr.getString("frnd");
         // }

Statement sts = con.createStatement();
ResultSet rss = sts.executeQuery("select * from recmend where user ='"+frnd+ "' ");
while(rss.next()){
frnid = rss.getString("recid");
          //}

     Statement sta = con.createStatement();
//ResultSet rsta = sta.executeQuery("select distinct id from service where  id = '"+frnid+"'");
ResultSet rsta = sta.executeQuery("select * from service where  id = '"+frnid+"'");
while(rsta.next()){
id = rsta.getString("id");
in= rsta.getString("intr");
des = rsta.getString("des");
rec = rsta.getString("rec");               
                
            %><fieldset style="width: 300px; ">
                <img src="images/reccc.png" width="100" height="70">
                <font color="blue"> <b> <%=in%></b></font> <br></br>
                <p style="color: red">Recommend From Friends</p>
<%=des%><br>
<a href="<%=rec%>"><%=rec%></a><br>

              </fieldset>
<%}
}
}
%>






        		<%
if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}                       

%></p>
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
                <li class="item-1"><a href="#">Facebook</a></li>
                <li class="item-2"><a href="#">Twitter</a></li>
                
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
