package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 
HttpSession objetosesion=request.getSession(false);
String usuario =(String)objetosesion.getAttribute("usuario");
if(usuario.equals("")){
    
    response.sendRedirect("index.jsp");
}

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html><head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table border=\"0\" Width=\"1000\" height=\"50\" align=\"center\">\n");
      out.write("            <tr bgcolor=\"#A9F5F2\">\n");
      out.write("                <th><a href=\"index.jsp\">Inicio GroomingDog</a></th>\n");
      out.write("                <th><a href=\"registro.jsp\">Registrar usuario</a></th>\n");
      out.write("                <th><a href=\"index.jsp\">Cerrar sesión</a></th>\n");
      out.write("                <th width=\"200\">Bienvenid@ ");
 out.println(usuario);
      out.write("</th>\n");
      out.write("                <th><a href=\"inactivarUsuario.jsp\">Inactivar usuario</a></th>\n");
      out.write("                <th><a href=\"ConsultaMas.jsp\">Cons. masiva</a></th>\n");
      out.write("\n");
      out.write("                <br>\n");
      out.write("                <center>\n");
      out.write("                    <select type=\"text\" name=\"ServicioParaTuMascota\">\n");
      out.write("                        <option value=\"Banio\">Baño canino</option>\n");
      out.write("                        <option value=\"Guarderia\">Guardería canina</option>\n");
      out.write("                        <option value=\"Paseo\">Paseo</option>\n");
      out.write("                        <option value=\"Desparacitar\">Desparacitación</option>\n");
      out.write("                    </select>\n");
      out.write("                </center>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <center>\n");
      out.write("                    <select type=\"text\" name=\"Productos\">\n");
      out.write("                        <option value=\"Otros\">Otros</option>\n");
      out.write("                        <option value=\"Juguetes\">Juguetes</option>\n");
      out.write("                        <option value=\"Comida\">Comida</option>\n");
      out.write("                        <option value=\"Accesorios\">Accesorios</option>\n");
      out.write("                    </select>\n");
      out.write("                </center>\n");
      out.write("                <br>\n");
      out.write("\n");
      out.write("<!--\n");
      out.write("            <th><label><q> <p align=\"center\"><span class=\"style14\">Servicio para tu mascota:</span>\n");
      out.write("                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name=\"tipo\"><option value=\"\"></option>\n");
      out.write("                                <option value=\"Baño.jsp\">BAÑO CANINO</option><option value=\"Guarderia\">GUARDERIA CANINA</option><option value=\"paseo\">PASEO</option><option value=\"Desparacitacion\">DESPARACITACION</option></select></select></select>\n");
      out.write("                        </p></q></label></th>               \n");
      out.write("            <th><label><q><p align=\"center\"><span class=\"style14\">Productos:</span>\n");
      out.write("                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name=\"tipo\"><option value=\"\"></option>\n");
      out.write("                                <option value=\"Baño\">JUGUETES</option><option value=\"Guarderia\">COMIDA</option><option value=\"paseo\">ACCESORIOS</option><option value=\"Desparacitacion\">OTROS</option></select></select></select>\n");
      out.write("                        </p></q></label></th>                        \n");
      out.write("            <li><th><label><q><p align=\"center\"><span class=\"style14\">Historial de servicios:</span>\n");
      out.write("                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name=\"tipo\"><option value=\"\"></option>\n");
      out.write("                                <option value=\"Baño\">INDIVIDUAL</option><option value=\"Guarderia\">GUARDERIA CANINA</option><option value=\"paseo\">PASEO</option><option value=\"Desparacitacion\">DESPARACITACION</option></select></select></select>\n");
      out.write("                        </p></q></label></th> </li>                     \n");
      out.write("        <th><label><q>PQRS</q></label></th>        \n");
      out.write("-->\n");
      out.write("\n");
      out.write("    </tr>\n");
      out.write("</table>\n");
      out.write("<center><h1>Hola <font color=\"red\">");
 out.println(usuario);
      out.write("</font>bienvenido al sistema de GroominDog</h1></center>\n");
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
