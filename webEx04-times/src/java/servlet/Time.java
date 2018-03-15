/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maromo
 */
public class Time extends javax.servlet.http.HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Primeira Servlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Servlet Time - Sem time</h1>");
        out.println("</body>");
        out.println("</html>");
        
    }
    
}
