package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class usuarioNick_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Registrarme</title>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                background-color: #eee;\n");
      out.write("            }\n");
      out.write("            form{\n");
      out.write("                \n");
      out.write("                margin: 10px auto;\n");
      out.write("                width: 350px;\n");
      out.write("                height: 250px;\n");
      out.write("            }\n");
      out.write("            form label{\n");
      out.write("                display: block;\n");
      out.write("                color: white;\n");
      out.write("                background: #FE0000;\n");
      out.write("                padding: 6px 0;\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 20px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                font-family: italic;\n");
      out.write("            }\n");
      out.write("            form input[type=\"text\"],input[type=\"password\"]{\n");
      out.write("                width: 230px;\n");
      out.write("                padding: 6px 40px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                font-family: italic;\n");
      out.write("                margin-left: 18px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("                border: 1px solid #1dabb8;\n");
      out.write("                text-transform: arial;\n");
      out.write("                -moz-transition: all 0.5s;\n");
      out.write("            }\n");
      out.write("            form input[type=\"text\"]:focus,input[type=\"password\"]:focus{\n");
      out.write("                border: 1px solid #333;\n");
      out.write("                background: none;\n");
      out.write("                width: 290px;\n");
      out.write("                padding: 12px 10px;\n");
      out.write("            }\n");
      out.write("            form input[type=\"submit\"]{\n");
      out.write("                background: #1dabb8;\n");
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
      out.write("            form input[name=\"usuario\"]{\n");
      out.write("                background: url(\"icons/user.png\") 15px no-repeat;\n");
      out.write("            }\n");
      out.write("            form input[type=\"password\"]{\n");
      out.write("                background: url(\"icons/pass.png\") 15px no-repeat;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center><h1>¿Va a quedar activo?</h1></center>\n");
      out.write("        <form action=\"activoInact\" method=\"post\">\n");
      out.write("            \n");
      out.write("            <br>\n");
      out.write("            <center>\n");
      out.write("            <select type=\"text\" name=\"UsuarioActivoInactivo\">\n");
      out.write("                <option value=\"Cliente\">NO</option>\n");
      out.write("                <option value=\"Administrador\">SI</option>\n");
      out.write("            </select>\n");
      out.write("            </center>\n");
      out.write("            <br>\n");
      out.write("            <label>Nickname o usuario</label>\n");
      out.write("            <input type=\"text\" name=\"nickUsuario\" placeholder=\"Digite su nickname o usuario\" style=\"text-align: center\"><br>\n");
      out.write("            \n");
      out.write("            <label>Contraseña</label>\n");
      out.write("            <input type=\"password\" name=\"passwordUsuario\" placeholder=\"Digite su contraseña\" style=\"text-align: center\"><br>\n");
      out.write("            \n");
      out.write("            <label>ID del rol de la persona</label>\n");
      out.write("            <input type=\"number\" name=\"fkRolPersona\" placeholder=\"Digite ID rol de la persona\" style=\"text-align: center\"><br>\n");
      out.write("            \n");
      out.write("            <label>Cédula de la persona</label>\n");
      out.write("            <input type=\"number\" name=\"fkPersonaId\" placeholder=\"Digite cédula de la persona\" style=\"text-align: center\"><br>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"Enviar\">\n");
      out.write("            <center> <h3> <a href=\"registrarMascota-POR-CONSTRUIR.jsp\">Registrar mascota</a></h3></center>\n");
      out.write("            <center> <h3><a href=\"index.jsp\"> Inicio de sesión</a></h3></center>\n");
      out.write("           \n");
      out.write("            </form>\n");
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
