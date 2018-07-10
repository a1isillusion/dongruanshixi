package Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dongruan.HibernateFactory;
import model.News;

public class NewsDao {
public static List<News> queryNews(){
	Session session=HibernateFactory.getSession();
	Transaction tx=session.beginTransaction();
	List<News> newsList=session.createQuery("from News").list();
	tx.commit();
	session.close();
	return newsList;
}
public static void addNews(News news) {
	Session session=HibernateFactory.getSession();
	Transaction tx=session.beginTransaction();
	session.save(news);
	tx.commit();
	session.close();
}

}
