package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import pack.DbConnector;

public final class userpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<!--//@author sudip-->\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>Friendbook</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/reset.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/layout.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.6.min.js\"></script>\n");
      out.write("<script src=\"js/cufon-yui.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"js/cufon-replace.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"js/Open_Sans_400.font.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"js/Open_Sans_Light_300.font.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"js/Open_Sans_Semibold_600.font.js\" type=\"text/javascript\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/tms-0.3.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/tms_presets.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("<script src=\"js/FF-cash.js\" type=\"text/javascript\"></script>\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("<script type=\"text/javascript\" src=\"js/html5.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/ie.css\" type=\"text/css\" media=\"screen\">\n");
      out.write("<![endif]-->\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body id=\"page1\">\n");
      out.write("<!-- header -->\n");
      out.write("<div class=\"bg\">\n");
      out.write("  <div class=\"main\">\n");
      out.write("    <header>\n");
      out.write("      <div class=\"row-1\">\n");
      out.write("          <h1 style=\"color:greenyellow; font-size: 28px;\">Friendbook:<br><br> A Semantic-based Friend\n");
      out.write("Recommendation System for Social Networks </h1>      \n");
      out.write("      </div>   \n");
      out.write("         <div class=\"row-2\">\n");
      out.write("        <nav>\n");
      out.write("          <ul class=\"menu\">\n");
      out.write("<!--              <li><a class=\"active\" href=\"userpage.jsp\">Home Page</a></li>-->\n");
      out.write("              <li><a class=\"active\" href=\"findfrnd.jsp\">Add Friend</a></li>\n");
      out.write("              <li><a href=\"viewreq.jsp\">View Request</a></li>\n");
      out.write("              <li><a href=\"frndlist.jsp\">My Friend</a></li>\n");
      out.write("              <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("            \n");
      out.write("          </ul>\n");
      out.write("        </nav>\n");
      out.write("      </div>\n");
      out.write("        ");

String me = session.getAttribute("me").toString();        

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("      <div class=\"row-3\">\n");
      out.write("        <div class=\"slider-wrapper\">\n");
      out.write("          <div class=\"slider\">\n");
      out.write("            <ul class=\"items\">\n");
      out.write("              <li><img src=\"images/slider-img1.png\" alt=\"\"> <strong class=\"banner\"> <strong class=\"b1\"></strong> <strong class=\"b2\"></strong> <strong class=\"b3\"><br>\n");
      out.write("               </strong> </strong> </li>\n");
      out.write("              <li><img src=\"images/slider-img2.png\" alt=\"\"> <strong class=\"banner\"> <strong class=\"b1\"></strong> <strong class=\"b2\"></strong> <strong class=\"b3\"><br>\n");
      out.write("               </strong> </strong> </li>\n");
      out.write("              <li><img src=\"images/slider-img3.png\" alt=\"\"> <strong class=\"banner\"> <strong class=\"b1\"></strong> <strong class=\"b2\"></strong> <strong class=\"b3\"><br>\n");
      out.write("               </strong> </strong> </li>\n");
      out.write("            </ul>\n");
      out.write("            <a class=\"prev\" href=\"#\">prev</a> <a class=\"next\" href=\"#\">prev</a> </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- content -->\n");
      out.write("    <section id=\"content\">\n");
      out.write("      <div class=\"padding\">\n");
      out.write("        <div class=\"box-bg margin-bot\">\n");
      out.write("          <div class=\"wrapper\">\n");
      out.write("            <div class=\"col-1\">\n");
      out.write("              \n");
      out.write("            </div>\n");
      out.write("         \n");
      out.write("          ");

if(request.getParameter("fr")!=null) {
out.println("<script>alert('Already in Your Recommend List.!')</script>");
} 

if(request.getParameter("fd")!=null){
out.println("<script>prompt('Please enter your Feedback', 'Good')</script>");
}      

      out.write("   \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("          <div class=\"col-3\">\n");
      out.write("            <div class=\"indent\">\n");
      out.write("                <div style=\"color: red; font-size: 20px; position: absolute; top: 50px;\">Welcome ");
      out.print(me);
      out.write("..!</div>\n");
      out.write("<!--              <h2>User Login</h2>-->\n");
      out.write("              <p class=\"color-4 p1\" style=\"text-align: justify; width: 900px; \"> \n");
      out.write("            ");

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
                
            
      out.write("\n");
      out.write("<fieldset style=\"width: 300px; \">\n");
      out.write("<img src=\"images/rec.jpg\" width=\"70\" height=\"70\">\n");
      out.write("<font color=\"green\"><b>");
      out.print(intr);
      out.write("</b></font><br>\n");
      out.print(des);
      out.write("<br>\n");
      out.write("<a href=\"");
      out.print(rec);
      out.write('"');
      out.write('>');
      out.print(rec);
      out.write("</a><br>\n");
      out.write("<a href=\"recomend.jsp?");
      out.print(id);
      out.write("\"> <button style=\"background: #00a9ff; width: 120px; height: 30px;\"/>Recommend</button></a><br><br>\n");
      out.write("              </fieldset>\n");
}
      out.write("\n");
      out.write("\n");
      out.write("\n");


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
                
            
      out.write("<fieldset style=\"width: 300px; \">\n");
      out.write("                <img src=\"images/reccc.png\" width=\"100\" height=\"70\">\n");
      out.write("                <font color=\"blue\"> <b> ");
      out.print(in);
      out.write("</b></font> <br></br>\n");
      out.write("                <p style=\"color: red\">Recommend From Friends</p>\n");
      out.print(des);
      out.write("<br>\n");
      out.write("<a href=\"");
      out.print(rec);
      out.write('"');
      out.write('>');
      out.print(rec);
      out.write("</a><br>\n");
      out.write("\n");
      out.write("              </fieldset>\n");
}
}
}

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        \t\t");

if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}                       


      out.write("</p>\n");
      out.write("              <div class=\"wrapper\">\n");
      out.write("                  <figure class=\"img-indent3\"><img src=\"images/aboutme.png\" width=\"100\"/></figure>\n");
      out.write("                <div class=\"extra-wrap\">\n");
      out.write("                  \n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <a class=\"button-2\" href=\"aboutme.jsp\">");
      out.print(me);
      out.write("</a> </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-2\">\n");
      out.write("           \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- footer -->\n");
      out.write("    <footer>\n");
      out.write("      <div class=\"row-top\">\n");
      out.write("        <div class=\"row-padding\">\n");
      out.write("          <div class=\"wrapper\">\n");
      out.write("         \n");
      out.write("            <div class=\"col-2\">\n");
      out.write("              <h4>Follow Us:</h4>\n");
      out.write("              <ul class=\"list-services\">\n");
      out.write("                <li class=\"item-1\"><a href=\"#\">Facebook</a></li>\n");
      out.write("                <li class=\"item-2\"><a href=\"#\">Twitter</a></li>\n");
      out.write("                \n");
      out.write("              </ul>\n");
      out.write("            </div> \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"row-bot\">\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<script type=\"text/javascript\">Cufon.now();</script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("$(function () {\n");
      out.write("    $('.slider')._TMS({\n");
      out.write("        prevBu: '.prev',\n");
      out.write("        nextBu: '.next',\n");
      out.write("        playBu: '.play',\n");
      out.write("        duration: 800,\n");
      out.write("        easing: 'easeOutQuad',\n");
      out.write("        preset: 'simpleFade',\n");
      out.write("        pagination: false,\n");
      out.write("        slideshow: 3000,\n");
      out.write("        numStatus: false,\n");
      out.write("        pauseOnHover: true,\n");
      out.write("        banners: true,\n");
      out.write("        waitBannerAnimation: false,\n");
      out.write("        bannerShow: function (banner) {\n");
      out.write("            banner.hide().fadeIn(500)\n");
      out.write("        },\n");
      out.write("        bannerHide: function (banner) {\n");
      out.write("            banner.show().fadeOut(500)\n");
      out.write("        }\n");
      out.write("    });\n");
      out.write("})\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
