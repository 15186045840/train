package com.hk.dao;

import java.util.List;

import com.hk.bean.News;

public interface NewDao {
	void addNew(News news);//添加动态
	void deleteNew(String newId);//删除动态
	List<News> getAllNews();//查询所有动态
	News getNewByNewId(String newId);//根据ID查询动态
	void updateNew(News news);//修改动态
}
