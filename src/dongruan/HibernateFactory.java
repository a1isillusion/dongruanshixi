package dongruan;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateFactory {
public static SessionFactory sessionFactory;
public static SessionFactory getSessionFactory() {
	return sessionFactory;
}
public static void setSessionFactory(SessionFactory sessionFactory) {
	HibernateFactory.sessionFactory = sessionFactory;
}

public static Session getSession() {
	return sessionFactory.openSession();
}
}
