package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class rolPersona_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Iniciar Sesión</title>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                background-color: #eee;\n");
      out.write("            }\n");
      out.write("            form{\n");
      out.write("                \n");
      out.write("                margin: 10px auto;\n");
      out.write("                width: 350px;\n");
      out.write("                height: 250px;\n");
      out.write("                background: white;\n");
      out.write("                border-bottom: 4px solid darkcyan;\n");
      out.write("            }\n");
      out.write("            form label{\n");
      out.write("                display: block;\n");
      out.write("                color: white;\n");
      out.write("                background: #FE0000;\n");
      out.write("                padding: 12px 0;\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 30px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                font-family: italic;\n");
      out.write("            }\n");
      out.write("            form input[type=\"text\"],input[type=\"password\"]{\n");
      out.write("                width: 230px;\n");
      out.write("                padding: 15px 20px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                font-family: italic;\n");
      out.write("                margin-left: 18px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("                border: 1px solid #1D40B8;\n");
      out.write("                text-transform: capitalize;\n");
      out.write("                -moz-transition: all 0.5s;\n");
      out.write("            }\n");
      out.write("            form input[type=\"text\"]{\n");
      out.write("                background: url(\"icons/user.png\") 15px no-repeat;\n");
      out.write("            }\n");
      out.write("            form input[type=\"password\"]{\n");
      out.write("                background: url(\"icons/pass.png\") 15px no-repeat;\n");
      out.write("            }\n");
      out.write("            form input[type=\"text\"]:focus,input[type=\"password\"]:focus{\n");
      out.write("                border: 1px solid #333;\n");
      out.write("                background: none;\n");
      out.write("                width: 290px;\n");
      out.write("                padding: 12px 10px;\n");
      out.write("            }\n");
      out.write("            form input[type=\"submit\"]{\n");
      out.write("                background: #1D40B8;\n");
      out.write("                color: white;\n");
      out.write("                display: inline-block;\n");
      out.write("                margin-left: 18px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("                padding: 8px 20px;\n");
      out.write("                border: none;\n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("            form input[type=\"submit\"]:hover{\n");
      out.write("                background: darkorange;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center><h1>Selección de rol</h1></center>\n");
      out.write("        <form action=\"rol\" method=\"post\">\n");
      out.write("            <label>Seleccione rol</label>\n");
      out.write("            <input type=\"text\" name=\"rol\" placeholder=\"Escoja uno\" required><br>\n");
      out.write("            \n");
      out.write("            <label>Seleccione el rol</label>\n");
      out.write("            <select name=\"Seleccione uno\">\n");
      out.write("                <option value=\"Cliente\"> Cliente</option>\n");
      out.write("                <option value=\"Administrador\"> Administrador</option>\n");
      out.write("                <option value=\"Paseador\"> Paseador</option>\n");
      out.write("                <option value=\"Peluquero\"> Peluquero</option>\n");
      out.write("                <option value=\"Aseador\"> Aseador</option>\n");
      out.write("                <option value=\"Brigadista\"> Brigadista</option>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"Enviar\">\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("    <center> <h3>Si no tienes cuenta... <a href=\"registro.jsp\"> regístrate</a></h3></center>\n");
      out.write("    </body>\n");
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
