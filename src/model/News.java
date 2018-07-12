package model;

import java.util.HashSet;
import java.util.Set;

public class News {
public String id;
public String title;
public String content;
public String author;
public Set<Comment> comments=new HashSet<Comment>();

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public Set<Comment> getComments() {
	return comments;
}
public void setComments(Set<Comment> comments) {
	this.comments = comments;
}
@Override
public String toString() {
	return "News [id=" + id + ", title=" + title + ", content=" + content + ", author=" + author + ", comments="
			+ comments + "]";
}

}
