package servlet;

import DAO.UserDAO;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserDAO dao = new UserDAO();
        User u = dao.login(email, password);

        if (u != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", u);
            session.setAttribute("username", u.getName());
           // session.setAttribute("user", u);  // Because you are checking "user" in dashboard
           // resp.sendRedirect("dashboard.jsp");


            if (u.getRole().equalsIgnoreCase("ADMIN")) {
                resp.sendRedirect("dashboard.jsp");
            } else {
                resp.sendRedirect("getallbook.jsp");
            }

        } else {
            resp.sendRedirect("index.jsp?error=Invalid Credentials");
        }
    }
}

