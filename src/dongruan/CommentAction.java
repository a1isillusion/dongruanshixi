package dongruan;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Dao.CommentDao;
import model.Comment;


public class CommentAction extends ActionSupport{
public String id;
public Comment comment;
public List<Comment> comments;
public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public Comment getComment() {
	return comment;
}

public void setComment(Comment comment) {
	this.comment = comment;
}

public List<Comment> getComments() {
	return comments;
}

public void setComments(List<Comment> comments) {
	this.comments = comments;
}

public String commentGet() {
	comments=CommentDao.queryComments(id);
	return SUCCESS;
}
public String addComment() {
	System.out.println(comment.news);
	CommentDao.addComment(comment);
	return SUCCESS;
}
public String deleteComment() {
	System.out.println("deletecomment");
	CommentDao.deleteComment(id);
	return SUCCESS;
}
}
