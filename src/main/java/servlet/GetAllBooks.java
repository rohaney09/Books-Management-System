package servlet;

import jakarta.servlet.http.HttpServlet;

import DAO.BookDAO;
import entity.Book;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class GetAllBooks extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Book> books = new BookDAO().GetAllBooks();

        resp.setContentType("text/html");

        resp.getWriter().println("<!DOCTYPE html>");
        resp.getWriter().println("<html lang='en'>");
        resp.getWriter().println("<head>");
        resp.getWriter().println("<meta charset='UTF-8'>");
        resp.getWriter().println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
        resp.getWriter().println("<title>All Books</title>");

        resp.getWriter().println("<style>");
        resp.getWriter().println("body {");
        resp.getWriter().println("font-family: 'Segoe UI';");
        resp.getWriter().println("background: #eef2ff;");
        resp.getWriter().println("padding: 40px;");
        resp.getWriter().println("}");

        resp.getWriter().println("h2 {");
        resp.getWriter().println("text-align: center;");
        resp.getWriter().println("margin-bottom: 25px;");
        resp.getWriter().println("color: #4f46e5;");
        resp.getWriter().println("}");

        resp.getWriter().println(".table-container {");
        resp.getWriter().println("width: 80%;");
        resp.getWriter().println("margin: auto;");
        resp.getWriter().println("background: white;");
        resp.getWriter().println("padding: 20px;");
        resp.getWriter().println("border-radius: 15px;");
        resp.getWriter().println("box-shadow: 0 5px 20px rgba(0,0,0,0.1);");
        resp.getWriter().println("}");

        resp.getWriter().println("table {");
        resp.getWriter().println("width: 100%;");
        resp.getWriter().println("border-collapse: collapse;");
        resp.getWriter().println("}");

        resp.getWriter().println("th, td {");
        resp.getWriter().println("padding: 12px;");
        resp.getWriter().println("text-align: left;");
        resp.getWriter().println("border-bottom: 1px solid #ddd;");
        resp.getWriter().println("}");

        resp.getWriter().println("th {");
        resp.getWriter().println("background: #4f46e5;");
        resp.getWriter().println("color: white;");
        resp.getWriter().println("}");

        resp.getWriter().println("tr:hover { background: #f6f6ff; }");

        resp.getWriter().println(".btn {");
        resp.getWriter().println("display: inline-block;");
        resp.getWriter().println("margin-top: 20px;");
        resp.getWriter().println("padding: 10px 20px;");
        resp.getWriter().println("background: #4f46e5;");
        resp.getWriter().println("color: white;");
        resp.getWriter().println("text-decoration: none;");
        resp.getWriter().println("border-radius: 8px;");
        resp.getWriter().println("}");
        resp.getWriter().println(".btn:hover { background: #3b35c3; }");

        resp.getWriter().println("</style>");
        resp.getWriter().println("</head>");

        resp.getWriter().println("<body>");
        resp.getWriter().println("<h2>📚 All Books</h2>");

        resp.getWriter().println("<div class='table-container'>");

        resp.getWriter().println("<table>");
        resp.getWriter().println("<tr>");
        resp.getWriter().println("<th>ID</th>");
        resp.getWriter().println("<th>Name</th>");
        resp.getWriter().println("<th>Author</th>");
        resp.getWriter().println("</tr>");

        for (Book b : books) {
            resp.getWriter().println("<tr>");
            resp.getWriter().println("<td>" + b.getId() + "</td>");
            resp.getWriter().println("<td>" + b.getName() + "</td>");
            resp.getWriter().println("<td>" + b.getAuthor() + "</td>");
            resp.getWriter().println("</tr>");
        }

        resp.getWriter().println("</table>");
        resp.getWriter().println("<a href='index.jsp' class='btn'>⟵ Back to Home</a>");

        resp.getWriter().println("</div>");
        resp.getWriter().println("</body>");
        resp.getWriter().println("</html>");
    }
}

