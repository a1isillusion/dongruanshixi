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

public String addNews() {
	NewsDao.addNews(news);
	return SUCCESS;
}
public String getQueryNews() {
	newsList=NewsDao.queryNews();
	System.out.println(newsList.get(0).title);
	return "list";
}
}
