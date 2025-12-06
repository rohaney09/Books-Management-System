package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import DAO.BookDAO;

public class DeleteBook extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Integer id = Integer.parseInt(req.getParameter("id"));
        boolean deleted = new BookDAO().deleteBook(id);

        req.setAttribute("deleted", deleted);
        req.getRequestDispatcher("delete.jsp").forward(req, resp);
    }
}
