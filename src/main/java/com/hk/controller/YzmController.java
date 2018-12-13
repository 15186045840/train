package com.hk.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.Util.RandomValidateCode;

@Controller
public class YzmController {
	
	@RequestMapping("yzm")
	 public ModelAndView yzm(){
		ModelAndView mov = new ModelAndView("yzm");
		return mov;
	 }
	/**
	 * 获取生成验证码显示到 UI 界面
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(value="/checkCode")
	public void checkCode(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		System.out.println("hello");
		//设置相应类型,告诉浏览器输出的内容为图片
        response.setContentType("image/jpeg");
        
        //设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);
        RandomValidateCode randomValidateCode = new RandomValidateCode();
        try {
            randomValidateCode.getRandcode(request, response);//输出图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	/**
     * 验证登录
     * @param model
     * @param userName
     * @param password
     * @param inputStr
     * @param session
     * @return
     */
    @RequestMapping("/yzms")
    @ResponseBody
    public String login(String code,HttpSession session) {
        //从session中获取随机数
        String random = (String) session.getAttribute("randomcode_key");
        System.out.println(random+"图片");
        System.out.println(code+"网页");
        //检查验证码
        String strCode="";
        if(random.equals(code)){
        	strCode="1";
        }else{
            strCode="2";
        }
        return strCode;
    }
}
