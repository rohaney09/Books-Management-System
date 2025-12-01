package servlet;

import jakarta.servlet.http.HttpServlet;

import DAO.BookDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class DeleteBook extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer id = Integer.parseInt(req.getParameter("id"));

        boolean deleted = new BookDAO().deleteBook(id);

        resp.setContentType("text/html");

        resp.getWriter().println("<!DOCTYPE html>");
        resp.getWriter().println("<html lang='en'>");
        resp.getWriter().println("<head>");
        resp.getWriter().println("<meta charset='UTF-8'>");
        resp.getWriter().println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
        resp.getWriter().println("<title>Delete Book</title>");

        resp.getWriter().println("<style>");
        resp.getWriter().println("body {");
        resp.getWriter().println("  background: #f0f4ff;");
        resp.getWriter().println("  font-family: Arial, sans-serif;");
        resp.getWriter().println("  display: flex;");
        resp.getWriter().println("  justify-content: center;");
        resp.getWriter().println("  align-items: center;");
        resp.getWriter().println("  height: 100vh;");
        resp.getWriter().println("}");

        resp.getWriter().println(".card {");
        resp.getWriter().println("  width: 400px;");
        resp.getWriter().println("  padding: 25px;");
        resp.getWriter().println("  background: white;");
        resp.getWriter().println("  border-radius: 15px;");
        resp.getWriter().println("  text-align: center;");
        resp.getWriter().println("  box-shadow: 0 5px 15px rgba(0,0,0,0.2);");
        resp.getWriter().println("}");

        resp.getWriter().println(".success { color: green; font-size: 20px; font-weight: bold; }");
        resp.getWriter().println(".fail { color: red; font-size: 20px; font-weight: bold; }");

        resp.getWriter().println(".btn {");
        resp.getWriter().println("  margin-top: 20px;");
        resp.getWriter().println("  display: inline-block;");
        resp.getWriter().println("  padding: 10px 20px;");
        resp.getWriter().println("  background: #4f46e5;");
        resp.getWriter().println("  color: white;");
        resp.getWriter().println("  border-radius: 8px;");
        resp.getWriter().println("  text-decoration: none;");
        resp.getWriter().println("}");
        resp.getWriter().println(".btn:hover { background: #3b35c3; }");

        resp.getWriter().println("</style>");
        resp.getWriter().println("</head>");

        resp.getWriter().println("<body>");

        resp.getWriter().println("<div class='card'>");

        if (deleted) {
            resp.getWriter().println("<p class='success'>✔ Book Deleted Successfully</p>");
        } else {
            resp.getWriter().println("<p class='fail'>✖ Book Not Found</p>");
        }

        resp.getWriter().println("<a href='delete.html' class='btn'>Go Back</a>");

        resp.getWriter().println("</div>");
        resp.getWriter().println("</body>");
        resp.getWriter().println("</html>");
    }
}
