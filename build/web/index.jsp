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
          <h1 style="color:greenyellow; font-size: 28px;">Friendbook:<br> <br>A Semantic-based Friend
Recommendation System for Social Networks </h1>      
      </div>   
         <div class="row-2">
        <nav>
          <ul class="menu">
              <li><a class="active" href="index.jsp">Home Page</a></li>
              <li><a href="admin.jsp">Admin Login</a></li>
              <li><a href="userlog.jsp">User Login</a></li>
              <li><a href="regpage.jsp">New User</a></li>
            
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
              <h2>Abstract</h2>
              <p class="color-4 p1" style="text-align: justify; width: 900px;" >  Existing social networking services recommend friends to users based on their social graphs, which may not be the most appropriate to reflect a user?s preferences on friend selection in real life. In this paper, we present Friendbook, a novel semantic-based friend recommendation system for social networks, which recommends friends to users based on their life styles instead of social graphs. By taking advantage of sensor-rich smartphones, Friendbook discovers life styles of users from user-centric sensor data, measures the similarity of life styles between users, and recommends friends to users if their life styles have high similarity. Inspired by text mining, we model a users' daily life as life documents, from which his/her life styles are extracted by using the Latent Dirichlet Allocation algorithm. We further propose a similarity metric to measure the similarity of life styles between users, and calculate users? impact in terms of life styles with a friend-matching graph. Upon receiving a request, Friendbook returns a list of people with highest recommendation scores to the query user. Finally, Friendbook integrates a feedback mechanism to further improve the recommendation accuracy. We have implemented Friendbook on the Android-based smartphones, and evaluated its performance on both small-scale experiments and large-scale simulations. The results show that the recommendations accurately reflect the preferences of users in choosing friends.</p>
              <div class="wrapper">
                <figure class="img-indent3"><img src="images/page3-img3.png" alt="" /></figure>
                <div class="extra-wrap">
                  
                </div>
              </div>
              <a class="button-2" href="">Read More</a> </div>
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
            banner.hide().fadeIn(200)
        },
        bannerHide: function (banner) {
            banner.show().fadeOut(200)
        }
    });
})
</script>
</body>
</html>
