package com.hk.service;

import java.util.List;

import com.hk.bean.News;

public interface NewService {
	String addNew(News news);//添加动态
	void deleteNew(String newId);//删除动态
	void deleteMoreNews(String...newIds);//批量删除动态
	News getNewByNewId(String newId);//根据动态Id获取动态
	List<News> getAllNews();//获取所有动态
	void updateNew(News news);//修改动态
	List<News> getNews();//获取所有动态
}
