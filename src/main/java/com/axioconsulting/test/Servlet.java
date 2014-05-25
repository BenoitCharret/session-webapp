package com.axioconsulting.test;

import com.axioconsulting.test.bean.Produit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by benoit on 22/05/14.
 */
public class Servlet extends HttpServlet{

    public static final String USER_NAME = "userName";
    public static final String SESSION_USER_NAME="userName";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // check param nom and set it to session
        if (req.getParameter("userName")!=null){
            req.getSession(true).setAttribute(SESSION_USER_NAME,req.getParameter(USER_NAME));
            req.getSession().setAttribute("product",new Produit("pates"));
            ((Produit)req.getSession().getAttribute("product")).setCount(0);
        }



        resp.sendRedirect(req.getContextPath()+"/index.jsp");
    }
}

