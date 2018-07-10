package dongruan;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateFactory {
public static Configuration configuration;
public static SessionFactory sessionFactory;
static {
	configuration=new Configuration().configure();
	sessionFactory=configuration.buildSessionFactory();
	
}
public static Session getSession() {
	return sessionFactory.openSession();
}
}
