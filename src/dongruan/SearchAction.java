package dongruan;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Dao.NewsDao;
import model.News;

public class SearchAction extends ActionSupport {
public String param;
public List<News> newsList;
public String getParam() {
	return param;
}

public void setParam(String param) {
	this.param = param;
}

public List<News> getNewsList() {
	return newsList;
}

public void setNewsList(List<News> newsList) {
	this.newsList = newsList;
}

public String search() {
	System.out.println(param);
	newsList=NewsDao.searchNews(param);
	for(News news :newsList) {
		System.out.println(news.author+news.content);
	}
	return SUCCESS;
}
}
