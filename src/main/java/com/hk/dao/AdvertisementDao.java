package com.hk.dao;

import java.util.List;

import com.hk.bean.Advertisement;

public interface AdvertisementDao {
	void addAdvertisement(Advertisement advertisement);//添加广告
	void deleteAdvertisement(String advertisementId);//删除广告
	Advertisement findById(String advertisementId);//根据Id查询广告
	List<Advertisement> findAllAdvertisements();//查询所有广告
	void updateAdvertisement(Advertisement advertisement);//更新广告

}
