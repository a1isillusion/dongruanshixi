package dongruan;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Dao.NewsDao;
import model.News;

public class NewsAction extends ActionSupport{
public News news;
public List<News> newsList;
public News getNews() {
	return news;
}

public void setNews(News news) {
	this.news = news;
}

public List<News> getNewsList() {
	return newsList;
}

public void setNewsList(List<News> newsList) {
	this.newsList = newsList;
}

public String changeNews() {
	System.out.println(news.id);
	NewsDao.addNews(news);
	return SUCCESS;
}
public String addNews() {
	System.out.println(news.content);
	NewsDao.addNews(news);
	return SUCCESS;
}
public String getQueryNews() {
	newsList=NewsDao.queryNews();
	System.out.println(newsList.get(0).title);
	return "list";
}
public String deleteNews() {
	System.out.println("deletenews"+news.id);
	NewsDao.deleteNews(news.id);
	return SUCCESS;
}
public String getNewsById() {
	System.out.println("getnewsbyid");
	news=NewsDao.getNews(news.id);
	return "newsandcomments";
}
}
