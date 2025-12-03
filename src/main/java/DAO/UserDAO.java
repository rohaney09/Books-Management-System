package DAO;


import entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.List;

public class UserDAO {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("book-unit");

    // REGISTER USER
    public boolean registerUser(User user) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(user);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            em.close();
        }
    }

    // LOGIN USER
    public User login(String email, String password) {
        EntityManager em = emf.createEntityManager();
        try {
            List<User> list = em.createQuery(
                            "SELECT u FROM User u WHERE u.email = :email AND u.password = :password",
                            User.class)
                    .setParameter("email", email)
                    .setParameter("password", password)
                    .getResultList();

            if (list.isEmpty()) return null;
            return list.get(0);
        } finally {
            em.close();
        }
    }
}

