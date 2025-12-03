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
            resp.sendRedirect("dashboard.html");
        } else {
            resp.sendRedirect("index.jsp?error=Invalid Credentials");
        }
    }
}
