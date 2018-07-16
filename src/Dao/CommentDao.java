package Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dongruan.HibernateFactory;
import model.Comment;

public class CommentDao {
	public static List<Comment> queryComments(String id){
		Session session=HibernateFactory.getSession();
		Transaction tx=session.beginTransaction();
		List<Comment> commentsList=session.createQuery("from Comment where news=?")
				.setParameter(0,id)
				.list();
		tx.commit();
		session.close();
		return commentsList;
	}
	public static void addComment(Comment comment){
		Session session=HibernateFactory.getSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(comment);
		tx.commit();
		session.close();
		
	}
	public static void deleteComment(String id) {
		Session session=HibernateFactory.getSession();
		Transaction tx=session.beginTransaction();
		session.createQuery("delete Comment c where c.id=?").setParameter(0,id).executeUpdate();
		tx.commit();
		session.close();
	}
}
