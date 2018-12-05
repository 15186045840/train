package com.hk.service;

import java.util.List;

import com.hk.bean.Advertisement;

public interface AdvertisementService {
	void addAdvertisement(Advertisement advertisement);//添加广告
	void deleteAdvertisement(String advertisementId);//根据Id删除广告
	void deleteMoreAdvertisements(String...advertisementIds);//删除多个广告
	Advertisement findById(String advertisementId);//根据Id查询广告
	List<Advertisement> findAllAdvertisements();//查询所有广告
	void updateAdvertisement(Advertisement advertisement);//更新广告
	Advertisement getLeftAdvertisement();//获取左侧广告
	Advertisement getRightAdvertisement();//获取右侧广告
}
