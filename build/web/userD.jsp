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
              <li><a class="active" href="adminpage.jsp">Home Page</a></li>         
              <li><a href="index.jsp">Logout</a></li>
            
          </ul>
        </nav>
      </div>
       


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
                <div style="color: red; font-size: 20px; position: absolute; top: 50px;">Hi Admin..!</div>
<!--              <h2>User Login</h2>-->
              <p class="color-4 p1" style="text-align: justify; width: 900px; "> 
                  <font size="+3" color="green"><b>User Details:  </b></font><br>
              <br>
              <br>
      
         <table width="850" border="4" style="text-align: center;background:blue">
                        <tr align="center" style="font-weight: bold; color: white"><td>NAME</td>
                       <td>USERID &nbsp;&nbsp;&nbsp;</td>
                        <td>PASSWORD</td>                        
                        <td>MAIL ID</td>
                      <td>DATE OF BIRTH</td>
                     <td>INTEREST</td>
                    <td>GENDER</td>
                     <td>TIME OF JOIN</td>
                        <tr align="center" >
                                        <%
String n=null, u=null,p=null,m=null,a=null,l=null,s=null,t=null;
                    
                    
                    Connection con =  DbConnector.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from regpage ");
                    while(rs.next()){
                        
                    n = rs.getString("name");
                    u = rs.getString("userid");
                    p = rs.getString("pass");
                    m = rs.getString("mail");
                    a = rs.getString("age");
                    l = rs.getString("loc");
                    s = rs.getString("sex");
                    t = rs.getString("time_");
                    

%>       
<td><%=n%></td>
<td><%=u%></td>
<td>*********</td>
<td><%=m%></td>
<td><%=a%></td>
<td><%=l%></td>
<td><%=s%></td>
<td><%=t%></td>

 </tr>

<%
                    }
%>                         
                       
                       
                    </table>   
              
              </p>
              <div class="wrapper">
                  <figure class="img-indent3"><img src="images/aboutme.png" width="100"/></figure>
                <div class="extra-wrap">
                  
                </div>
              </div>
              <a class="button-2" href="adminpage.jsp">Admin</a> </div>
            
              <div style="position: absolute; left: 220px; top: 80px;">
              <fieldset>
          
             <br><br><br><br><br>
<!--    <input type="submit" value="Send Request" style="background-color: #0099ff"/>-->
          </form>   </fieldset> </div></center>
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

