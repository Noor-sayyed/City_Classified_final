package com.zensar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zensar.bean.BusinessListing;
import com.zensar.bean.CategoryMaster;
import com.zensar.bean.City;
import com.zensar.repository.AdminLoginRepository;
import com.zensar.repository.BusinessListingRepository;
import com.zensar.repository.CategoryMasterRepository;
import com.zensar.repository.CityRepository;

@Service
public class UserService {
	
	@Autowired
	City city;
	
	@Autowired
	CityRepository cityRepository;
	
	@Autowired
	BusinessListingRepository businessListingRepository;
	
	@Autowired
	CategoryMasterRepository categoryMasterRepository;
	
	
	public  City addCity(City city) {
		
		City city1=cityRepository.save(city);
		
		return city1;
		
	}
	
	public List<City> findAll(){
		
		return (List<City>) cityRepository.findAll();
		
		}
	
public CategoryMaster addCategory(CategoryMaster categoryMaster) {
		
	CategoryMaster categoryMaster1=categoryMasterRepository.save(categoryMaster);
		
		return categoryMaster1;
		
	}
	
	public List<CategoryMaster> findAllCategory(){
		
		return (List<CategoryMaster>) categoryMasterRepository.findAll();
		
		}
	public List<BusinessListing> findByCategoryIdAndCityId(int categoryId, int cityId){
		List<BusinessListing> businessListing1 = businessListingRepository.findByCategoryIdAndCityId(categoryId, cityId);
		return businessListing1;
	}
	//-----------------------------------------Map implementation (In
		// Progress)----------------------------------

		public BusinessListing findLocation(Integer listing_id) {

			BusinessListing  businessListing = businessListingRepository.findById(listing_id).orElse(null);
			return businessListing;
		}
			

}
