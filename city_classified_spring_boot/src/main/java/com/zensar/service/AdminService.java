package com.zensar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zensar.bean.AdminLogin;
import com.zensar.bean.BusinessListing;
import com.zensar.bean.CategoryMaster;
import com.zensar.bean.City;
import com.zensar.repository.AdminLoginRepository;
import com.zensar.repository.BusinessListingRepository;
import com.zensar.repository.CategoryMasterRepository;
import com.zensar.repository.CityRepository;

@Service
public class AdminService {

	@Autowired
	CityRepository cityRepository;
	@Autowired
	AdminLoginRepository adminLoginRepository;
	@Autowired
	BusinessListingRepository businessListingRepository;
	@Autowired
	CategoryMasterRepository categoryMasterRepository;

	

	public AdminLogin findbyId(String userName) {
		AdminLogin adminLogin1 = adminLoginRepository.findById(userName).orElse(null);
		return adminLogin1;
	}

	public City addCity(City city) {

		City city1 = cityRepository.save(city);

		return city1;

	}

	public CategoryMaster addCategoryMaster(CategoryMaster categoryMaster) {

		CategoryMaster categoryMaster1 = categoryMasterRepository.save(categoryMaster);

		return categoryMaster1;
	}

	public BusinessListing addBusinessListingSave(BusinessListing businessListing) {

		BusinessListing businessListing1 = businessListingRepository.save(businessListing);

		return businessListing1;
	}

	public int deleteBusinessListingById(int listingId) {
		businessListingRepository.deleteById(listingId);
		return listingId;
	}

	public List<City> findAll() {

		return (List<City>) cityRepository.findAll();

	}

	public BusinessListing businessListingfindById(int listingId) {
		BusinessListing businessListing = businessListingRepository.findById(listingId).orElse(null);
		// BusinessListing businessListing1 =
		// businessListingRepository.save(businessListing);
		return businessListing;

	}

	public List<CategoryMaster> findAllByCategory() {

		return (List<CategoryMaster>) categoryMasterRepository.findAll();

	}

	public List<BusinessListing> findByCategoryIdAndCityId(int categoryId, int cityId) {
		List<BusinessListing> businessListing2 = businessListingRepository.findByCategoryIdAndCityId(categoryId,
				cityId);
		return businessListing2;
	}

	public List<BusinessListing> findAllByListing() {

		return (List<BusinessListing>) businessListingRepository.findAll();

	}

	// -----------------------------------------Map implementation (//In //Progress// --Completed)----------------------------------

	public BusinessListing findLocation(Integer listing_id) {

		BusinessListing businessListing = businessListingRepository.findById(listing_id).orElse(null);
		return businessListing;
	}

}
