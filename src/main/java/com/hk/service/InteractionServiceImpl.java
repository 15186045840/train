package com.hk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.bean.Interaction;
import com.hk.dao.InteractionDao;

@Service
public class InteractionServiceImpl implements InteractionService {

	@Autowired
	private InteractionDao interactionDao;

	@Override
	public void addInteraction(Interaction interaction) {
		// TODO Auto-generated method stub
		interactionDao.addInteraction(interaction);
	}

	@Override
	public List<Interaction> getAllInteractions() {
		// TODO Auto-generated method stub
		return interactionDao.getAllInteractions();
	}

	@Override
	public void deleteInteraction(String interactionId) {
		// TODO Auto-generated method stub
		interactionDao.deleteInteraction(interactionId);
	}

	@Override
	public void deleteMoreInteractions(String... interactionIds) {
		// TODO Auto-generated method stub
		if (interactionIds != null && interactionIds.length > 0) {
			for (String interactionId : interactionIds) {
				deleteInteraction(interactionId);
			}
		}
	}

	@Override
	public Interaction getInteractionById(String interactionId) {
		// TODO Auto-generated method stub
		return interactionDao.getInteractionById(interactionId);
	}

	@Override
	public Interaction getJudgeById(String interactionId) {
		// TODO Auto-generated method stub
		return interactionDao.getJudgeById(interactionId);
	}

	@Override
	public void updateJudge(Interaction interaction) {
		// TODO Auto-generated method stub
		interactionDao.updateJudge(interaction);
	}

	@Override
	public List<Interaction> getInteractions(int cnumber) {
		// TODO Auto-generated method stub
		return interactionDao.getInteractions(cnumber);
	}

	@Override
	public Long selectInteractionsCount() {
		// TODO Auto-generated method stub
		// 显示条数
		int pageCount = 10;
		// 查询数据库中数据的总条数
		Long count = interactionDao.selectInteractionsCount();
		// 一共有多少页
		long page = count / pageCount;
		if (count % pageCount != 0) {
			page = page + 1;
		}

		return page;
	}

}
