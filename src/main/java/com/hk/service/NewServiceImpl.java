package com.hk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.bean.News;
import com.hk.dao.NewDao;

@Service
public class NewServiceImpl implements NewService {
	
	@Autowired
	private NewDao newDao;

	@Override
	public String addNew(News news) {
		// TODO Auto-generated method stub
		newDao.addNew(news);
		return news.getnId();
	}

	@Override
	public void deleteNew(String newId) {
		// TODO Auto-generated method stub
		newDao.deleteNew(newId);
	}

	@Override
	public void deleteMoreNews(String... newIds) {
		// TODO Auto-generated method stub
		if(newIds!=null&&newIds.length>0){
			for(String newId:newIds){
				deleteNew(newId);
			}
		}
	}

	@Override
	public News getNewByNewId(String newId) {
		// TODO Auto-generated method stub
		return newDao.getNewByNewId(newId);
	}

	@Override
	public List<News> getAllNews() {
		// TODO Auto-generated method stub
		return newDao.getAllNews();
	}

	@Override
	public void updateNew(News news) {
		// TODO Auto-generated method stub
		newDao.updateNew(news);
	}
	
}
