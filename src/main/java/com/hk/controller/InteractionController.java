package com.hk.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Interaction;
import com.hk.service.InteractionService;

@Controller
@RequestMapping("/interaction")
public class InteractionController {
	
	@Autowired
	private InteractionService interactionService;
	
	@RequiresPermissions("interaction:list")
	@RequestMapping("/list")
	public ModelAndView showInteractionList(){
		List<Interaction> list=interactionService.getAllInteractions();
		ModelAndView mav=new ModelAndView("interaction-list");
		mav.addObject("interactions", list);
		return mav;
	}
	@RequiresPermissions("interaction:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteInteraction(String interactionId){
		interactionService.deleteInteraction(interactionId);
	}
	
	@RequiresPermissions("interaction:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreInteractions(String...interactionIds){
		interactionService.deleteMoreInteractions(interactionIds);
		System.out.println();
	}
	
	@RequiresPermissions("interaction:list")
	@RequestMapping("/getinteraction")
	@ResponseBody
	public Interaction getInteractionById(String interactionId){
		return interactionService.getInteractionById(interactionId);
	}
	@RequiresPermissions("interaction:list")
	@RequestMapping("/getJudge")
	@ResponseBody
	public Interaction getJudgeById(String interactionId){
		return interactionService.getJudgeById(interactionId);
	}
	@RequiresPermissions("interaction:update")
	@RequestMapping("/update")
	@ResponseBody
	public void update(Interaction interaction){
		System.out.println(interaction.getiId());
		System.out.println(interaction.getiJudge());
		interactionService.updateJudge(interaction);
	}
}
