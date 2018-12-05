package com.hk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.bean.Advertisement;
import com.hk.dao.AdvertisementDao;

@Service
public class AdvertisementServiceImpl implements AdvertisementService {
	
	@Autowired
	private AdvertisementDao advertisementDao;

	@Override
	public void addAdvertisement(Advertisement advertisement) {
		// TODO Auto-generated method stub
		advertisementDao.addAdvertisement(advertisement);
	}

	@Override
	public void deleteAdvertisement(String advertisementId) {
		// TODO Auto-generated method stub
		advertisementDao.deleteAdvertisement(advertisementId);
	}

	@Override
	public void deleteMoreAdvertisements(String... advertisementIds) {
		// TODO Auto-generated method stub
		if(advertisementIds!=null&&advertisementIds.length>0){
			for(String advertisementId:advertisementIds){
				deleteAdvertisement(advertisementId);
			}
		}
	}

	@Override
	public Advertisement findById(String advertisementId) {
		// TODO Auto-generated method stub
		return advertisementDao.findById(advertisementId);
	}

	@Override
	public List<Advertisement> findAllAdvertisements() {
		// TODO Auto-generated method stub
		return advertisementDao.findAllAdvertisements();
	}

	@Override
	public void updateAdvertisement(Advertisement advertisement) {
		// TODO Auto-generated method stub
		advertisementDao.updateAdvertisement(advertisement);
	}

	@Override
	public Advertisement getLeftAdvertisement() {
		// TODO Auto-generated method stub
		return advertisementDao.getLeftAdvertisement();
	}

	@Override
	public Advertisement getRightAdvertisement() {
		// TODO Auto-generated method stub
		return advertisementDao.getRightAdvertisement();
	}

}
