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
		if(interactionIds!=null&&interactionIds.length>0){
			for(String interactionId:interactionIds){
				deleteInteraction(interactionId);
			}
		}
	}

}
