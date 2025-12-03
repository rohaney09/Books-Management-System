package servlet;

import DAO.BookDAO;
import entity.Book;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class GetBook extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Book book = new BookDAO().getBook(
                Integer.parseInt(req.getParameter("id"))
        );

        //this will send to JSP as a request
        req.setAttribute("Book", book);

        // navigate go to getall file
        req.getRequestDispatcher("getall.jsp").forward(req, resp);



//        resp.setContentType("text/html");
//
//        resp.getWriter().println("<!DOCTYPE html>");
//        resp.getWriter().println("<html lang='en'>");
//        resp.getWriter().println("<head>");
//        resp.getWriter().println("<meta charset='UTF-8'>");
//        resp.getWriter().println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
//        resp.getWriter().println("<title>Book Details</title>");
//
//        resp.getWriter().println("<style>");
//        resp.getWriter().println("body {");
//        resp.getWriter().println("  margin: 0;");
//        resp.getWriter().println("  padding: 0;");
//        resp.getWriter().println("  font-family: 'Segoe UI', Tahoma, sans-serif;");
//        resp.getWriter().println("  background: linear-gradient(135deg, #6a11cb, #2575fc);");
//        resp.getWriter().println("  display: flex;");
//        resp.getWriter().println("  justify-content: center;");
//        resp.getWriter().println("  align-items: center;");
//        resp.getWriter().println("  height: 100vh;");
//        resp.getWriter().println("}");
//
//        resp.getWriter().println(".card {");
//        resp.getWriter().println("  width: 420px;");
//        resp.getWriter().println("  background: #ffffff;");
//        resp.getWriter().println("  padding: 30px;");
//        resp.getWriter().println("  border-radius: 15px;");
//        resp.getWriter().println("  box-shadow: 0 8px 20px rgba(0,0,0,0.2);");
//        resp.getWriter().println("  animation: fadeIn 1s ease-in-out;");
//        resp.getWriter().println("}");
//
//        resp.getWriter().println("@keyframes fadeIn {");
//        resp.getWriter().println("  from { opacity: 0; transform: translateY(20px); }");
//        resp.getWriter().println("  to { opacity: 1; transform: translateY(0); }");
//        resp.getWriter().println("}");
//
//        resp.getWriter().println("h2 {");
//        resp.getWriter().println("  text-align: center;");
//        resp.getWriter().println("  color: #333;");
//        resp.getWriter().println("  margin-bottom: 20px;");
//        resp.getWriter().println("}");
//
//        resp.getWriter().println(".info {");
//        resp.getWriter().println("  font-size: 18px;");
//        resp.getWriter().println("  margin: 12px 0;");
//        resp.getWriter().println("}");
//
//        resp.getWriter().println(".label {");
//        resp.getWriter().println("  font-weight: bold;");
//        resp.getWriter().println("  color: #555;");
//        resp.getWriter().println("}");
//
//        resp.getWriter().println(".btn {");
//        resp.getWriter().println("  display: block;");
//        resp.getWriter().println("  width: 100%;");
//        resp.getWriter().println("  text-align: center;");
//        resp.getWriter().println("  margin-top: 25px;");
//        resp.getWriter().println("  padding: 12px;");
//        resp.getWriter().println("  background: #2575fc;");
//        resp.getWriter().println("  color: #fff;");
//        resp.getWriter().println("  border-radius: 10px;");
//        resp.getWriter().println("  text-decoration: none;");
//        resp.getWriter().println("  font-size: 16px;");
//        resp.getWriter().println("  transition: 0.3s;");
//        resp.getWriter().println("}");
//        resp.getWriter().println(".btn:hover { background: #1a5fd6; }");
//
//        resp.getWriter().println("</style>");
//        resp.getWriter().println("</head>");
//
//        resp.getWriter().println("<body>");
//        resp.getWriter().println("<div class='card'>");
//        resp.getWriter().println("<h2>📘 Book Details</h2>");
//
//        resp.getWriter().println("<p class='info'><span class='label'>ID:</span> " + book.getId() + "</p>");
//        resp.getWriter().println("<p class='info'><span class='label'>Name:</span> " + book.getName() + "</p>");
//        resp.getWriter().println("<p class='info'><span class='label'>Author:</span> " + book.getAuthor() + "</p>");
//
//        resp.getWriter().println("<a href='index.jsp' class='btn'>⟵ Back to Home</a>");
//
//        resp.getWriter().println("</div>");
//        resp.getWriter().println("</body>");
//        resp.getWriter().println("</html>");
//
   }
}
