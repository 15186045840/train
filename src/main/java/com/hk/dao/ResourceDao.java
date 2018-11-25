package com.hk.dao;

import java.util.List;

import com.hk.bean.Resource;

public interface ResourceDao {
	void addResource(Resource resource);//添加资源
	void deleteResource(String resourceId);//删除资源
	Resource findById(String resourceId);//根据Id查询资源
	List<Resource> findAllResources();//查询所有资源
	void updateResource(Resource resource);//更新资源
	void deleteCourseResource(String resourceId);//删除课程资源关联
	List<Resource> getResourcesByCourseId(String courseId);//根据课程Id查询资源
}
