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
	session.saveOrUpdate(news);
	tx.commit();
	session.close();
}
public static List<News> searchNews(String param){
	System.out.println(param);;
	Session session=HibernateFactory.getSession();
	Transaction tx=session.beginTransaction();
	String hql="from News as n where n.content like '%"+param+"%'";
	System.out.println(hql);
	List<News> newsList=session.createQuery(hql).list();
	tx.commit();
	session.close();
	return newsList;
}
public static void deleteNews(String id){
	Session session=HibernateFactory.getSession();
	Transaction tx=session.beginTransaction();
	session.createQuery("delete News n where n.id=?").setParameter(0, id).executeUpdate();
	tx.commit();
	session.close();
}
public static News getNews(String id){
	Session session=HibernateFactory.getSession();
	Transaction tx=session.beginTransaction();
	News news=session.get(News.class, id);
	tx.commit();
	session.close();
	return news;
	
}
}
