/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.49
 * Generated at: 2019-12-18 00:43:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminHeader_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>인테리어소품 코제트</title>\r\n");
      out.write("<link href=\"../../css/admin.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-1.12.4.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("    // html dom 이 다 로딩된 후 실행된다.\r\n");
      out.write("    $(document).ready(function(){\r\n");
      out.write("        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때\r\n");
      out.write("        $(\".menu>a\").click(function(){\r\n");
      out.write("            var submenu = $(this).next(\"ul\");\r\n");
      out.write(" \r\n");
      out.write("            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기\r\n");
      out.write("            if( submenu.is(\":visible\") ){\r\n");
      out.write("                submenu.slideUp();\r\n");
      out.write("            }else{\r\n");
      out.write("                submenu.slideDown();\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"wrap\">\r\n");
      out.write("\t<div class=\"header_name\">\r\n");
      out.write("      <div class=\"header_name_img\">\r\n");
      out.write("      \t<a href=\"../index/index.jsp\">\r\n");
      out.write("      \t<img src=\"../../images/new_headername.PNG\" \r\n");
      out.write("      \t\tonerror=\"javascript:this.src='../../images/new_headername.png'\" width=\"294\" height=\"44\" /></a>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\t\t<!-- 왼쪽 메뉴바 부분 -->    \r\n");
      out.write("        <div class=\"box1\">\r\n");
      out.write("            <div class=\"in_1box1\">\r\n");
      out.write("            \t<img src=\"../../images/user.PNG\" onerror=\"javascript:this.src='../../images/user.png'\"/>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"in_1box2\">\r\n");
      out.write("                <div class=\"name\">\r\n");
      out.write("                    <strong><a href=\"admin.jsp\">admin</a></strong>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"in_1box3\" style=\"margin-top: 100px;\">\r\n");
      out.write("\t            <nav>\r\n");
      out.write("\t\t\t        <ul>\r\n");
      out.write("\t\t\t            <li class=\"menu\"><a>상품 관리</a>\r\n");
      out.write("\t\t\t            \t<ul class=\"hide\">\r\n");
      out.write("\t\t\t                    <li><a href=\"productRegister.jsp\">상품 등록</a></li>\r\n");
      out.write("\t\t\t                    <li><a href=\"productDelete.jsp\">상품 삭제</a></li>\r\n");
      out.write("\t\t\t                </ul>\r\n");
      out.write("\t\t\t            </li>\r\n");
      out.write("\t\t\t            <li class=\"menu\"><a>판매 관리</a>\r\n");
      out.write("\t\t\t            \t<ul class=\"hide\">\r\n");
      out.write("\t\t\t                    <li><a href=\"orderCheck.jsp\">주문 조회</a></li>\r\n");
      out.write("\t\t\t                </ul>\r\n");
      out.write("\t\t\t            </li>\r\n");
      out.write("\t\t\t            <li class=\"menu\"><a>회원 관리</a>\r\n");
      out.write("\t\t\t                <ul class=\"hide\">\r\n");
      out.write("\t\t\t                    <li><a href=\"memberCheck.jsp\">회원 조회</a></li>\r\n");
      out.write("\t\t\t                </ul>\r\n");
      out.write("\t\t\t            </li>\r\n");
      out.write("\t\t\t        </ul>\r\n");
      out.write("\t\t\t    </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}