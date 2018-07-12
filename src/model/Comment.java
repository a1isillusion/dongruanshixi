package model;


import java.util.Date;

public class Comment {
public String id;
public String author;
public String content;
public Date date;
public String news;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}

public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getNews() {
	return news;
}
public void setNews(String news) {
	this.news = news;
}


}
