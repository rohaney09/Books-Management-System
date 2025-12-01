package DAO;

import entity.Book;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

import java.util.List;

public class BookDAO {

    public static void addBook(Book book)
    {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("book-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        em.persist(book);
        tx.commit();
        em.close();
    }

    public static Book getBook(Integer id)
    {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("book-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        Book book = em.find(Book.class, id);
        tx.commit();
        em.close();
        return book;
    }

    public static void updateBook(Book book)
    {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("book-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            em.merge(book);   // Updates existing book (id required)
            tx.commit();
        } catch (Exception e) {
            if (tx.isActive()) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            em.close();
            emf.close();
        }
    }

    public boolean deleteBook(Integer id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("book-unit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        tx.begin();
        Book book = em.find(Book.class, id);

        if (book != null) {
            em.remove(book);
            tx.commit();
            em.close();
            return true;
        } else {
            tx.rollback();
            em.close();
            return false;
        }
    }

    public List<Book> GetAllBooks() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("book-unit");
        EntityManager em = emf.createEntityManager();

        List<Book> result = em.createQuery("SELECT b FROM Book b", Book.class).getResultList();

        em.close();
        return result;
    }


}
