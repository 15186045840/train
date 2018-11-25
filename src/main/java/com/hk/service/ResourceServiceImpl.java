package com.hk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.bean.Resource;
import com.hk.dao.ResourceDao;

@Service
public class ResourceServiceImpl implements ResourceService {
	
	@Autowired
	private ResourceDao resourceDao;

	@Override
	public void addResource(Resource resource) {
		// TODO Auto-generated method stub
		resourceDao.addResource(resource);
	}

	@Override
	public void deleteResource(String resourceId) {
		// TODO Auto-generated method stub
		resourceDao.deleteCourseResource(resourceId);
		resourceDao.deleteResource(resourceId);
	}

	@Override
	public void deleteMoreResources(String... resourceIds) {
		// TODO Auto-generated method stub
		if(resourceIds!=null&&resourceIds.length>0){
			for(String resourceId:resourceIds){
				deleteResource(resourceId);
			}
		}
	}

	@Override
	public Resource findById(String resourceId) {
		// TODO Auto-generated method stub
		return resourceDao.findById(resourceId);
	}

	@Override
	public List<Resource> getAllResources() {
		// TODO Auto-generated method stub
		return resourceDao.findAllResources();
	}

	@Override
	public void updateResource(Resource resource) {
		// TODO Auto-generated method stub
		resourceDao.updateResource(resource);
	}

	@Override
	public List<Resource> getResourcesByCourseId(String courseId) {
		// TODO Auto-generated method stub
		return resourceDao.getResourcesByCourseId(courseId);
	}

}
