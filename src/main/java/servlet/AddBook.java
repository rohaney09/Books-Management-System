package servlet;

import DAO.BookDAO;
import entity.Book;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class AddBook extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //  super.doPost(req, resp);

        Book book = new Book();
        book.setId(Integer.parseInt(req.getParameter("id")));
        book.setName(req.getParameter("name"));
        book.setAuthor(req.getParameter("author"));

        BookDAO.addBook(book);

       // resp.getWriter().write("<h1> Book added successfully!</h1>");

    }
}
