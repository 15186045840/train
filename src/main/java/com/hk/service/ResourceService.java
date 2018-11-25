package com.hk.service;

import java.util.List;

import com.hk.bean.Resource;

public interface ResourceService {
	void addResource(Resource resource);//添加资源
	void deleteResource(String resourceId);//根据Id删除资源
	void deleteMoreResources(String...resourceIds);//删除多个资源
	Resource findById(String resourceId);//根据Id查询资源
	List<Resource> getAllResources();//查询所有资源
	void updateResource(Resource resource);//更新资源
	List<Resource> getResourcesByCourseId(String courseId);//根据课程Id查询资源


}
