package com.hk.service;

import java.util.List;

import com.hk.bean.Interaction;

public interface InteractionService {
	void addInteraction(Interaction interaction);//添加反馈
	List<Interaction> getAllInteractions();//查询所有反馈
	void deleteInteraction(String interactionId);//删除反馈
	Interaction getInteractionById(String interactionId);//根据反馈Id获取反馈
	public void deleteMoreInteractions(String... interactionIds);//删除多个反馈
	Interaction getJudgeById(String interactionId);//根据Id获取反馈显示
	void updateJudge(Interaction interaction);//更新反馈显示
	Long selectInteractionsCount();//查询反馈总数
	List<Interaction> getInteractions(int cnumber);//查询反馈显示
}
