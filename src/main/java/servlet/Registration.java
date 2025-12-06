package servlet;

import DAO.UserDAO;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

public class Registration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("role");

        UserDAO dao = new UserDAO();

        User user = new User(name, email, password, role);

        boolean saved = dao.registerUser(user);

        if(saved){
            resp.sendRedirect("index.jsp?msg=Registration Successful");
        } else {
            resp.sendRedirect("registration.jsp?error=Try Again");
        }
    }
}

