package servlet;

import jakarta.servlet.http.HttpServlet;

import DAO.BookDAO;
import entity.Book;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class UpdateBook extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        Book book = new BookDAO().getBook(id);

        resp.setContentType("text/html");

        resp.getWriter().println("<!DOCTYPE html>");
        resp.getWriter().println("<html lang='en'>");
        resp.getWriter().println("<head>");
        resp.getWriter().println("<meta charset='UTF-8'>");
        resp.getWriter().println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
        resp.getWriter().println("<title>Update Book</title>");

        // CSS styling
        resp.getWriter().println("<style>");
        resp.getWriter().println("body { margin:0; padding:0; background:linear-gradient(135deg,#6a11cb,#2575fc); font-family:Segoe UI; display:flex; justify-content:center; align-items:center; height:100vh; }");
        resp.getWriter().println(".card { width:450px; background:#fff; padding:30px; border-radius:15px; box-shadow:0 8px 20px rgba(0,0,0,0.2); }");
        resp.getWriter().println("h2 { text-align:center; margin-bottom:20px; }");
        resp.getWriter().println("label { font-weight:bold; }");
        resp.getWriter().println("input { width:100%; padding:10px; margin:10px 0; border-radius:8px; border:1px solid #aaa; }");
        resp.getWriter().println(".btn { width:100%; display:block; padding:12px; background:#2575fc; color:#fff; border-radius:10px; text-align:center; text-decoration:none; font-size:16px; margin-top:15px; }");
        resp.getWriter().println(".btn:hover { background:#1a5fd6; }");
        resp.getWriter().println("</style>");

        resp.getWriter().println("</head>");
        resp.getWriter().println("<body>");
        resp.getWriter().println("<div class='card'>");

        resp.getWriter().println("<h2>✏ Update Book</h2>");

        // Update form
        resp.getWriter().println("<form method='post' action='update'>");
        resp.getWriter().println("<input type='hidden' name='id' value='" + book.getId() + "'>");

        resp.getWriter().println("<label>Name:</label>");
        resp.getWriter().println("<input type='text' name='name' value='" + book.getName() + "' required>");

        resp.getWriter().println("<label>Author:</label>");
        resp.getWriter().println("<input type='text' name='author' value='" + book.getAuthor() + "' required>");

        resp.getWriter().println("<button class='btn'>Update Book</button>");
        resp.getWriter().println("</form>");

        resp.getWriter().println("<a href='index.jsp' class='btn' style='margin-top:10px;background:#444;'>⟵ Back</a>");

        resp.getWriter().println("</div>");
        resp.getWriter().println("</body>");
        resp.getWriter().println("</html>");
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String author = req.getParameter("author");

        Book book = new Book(id, name, author);
        new BookDAO().updateBook(book);

        resp.setContentType("text/html");
        resp.getWriter().println("<h2>Book Updated Successfully!</h2>");
        resp.getWriter().println("<a href='index.jsp'>Back to Home</a>");
    }
}


