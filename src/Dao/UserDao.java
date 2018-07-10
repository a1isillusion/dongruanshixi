package Dao;



import java.util.List;

import org.apache.catalina.valves.rewrite.RewriteRule;
import org.hibernate.Session;
import org.hibernate.Transaction;
import dongruan.HibernateFactory;
import model.User;

public class UserDao {
public static void saveUser(User user) {
	Session session=HibernateFactory.getSession();
    Transaction tx=session.beginTransaction();
    session.save(user);
    tx.commit();
    session.close();
}
public static boolean checkUser(User user) {
	Session session=HibernateFactory.getSession();
	Transaction tx=session.beginTransaction();
	List<User> list=session.createQuery("from User where username=? and password=?")
	.setParameter(0, user.username)
	.setParameter(1, user.password)
	.list();
	tx.commit();
	session.close();
	if(list.size()>0)
		return true;
	else 
		return false;
	
}
}
