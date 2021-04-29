package com.zensar.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zensar.bean.AdminLogin;
import com.zensar.bean.BusinessListing;
import com.zensar.bean.CategoryMaster;
import com.zensar.bean.City;
import com.zensar.repository.CityRepository;
import com.zensar.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	City city;
	@Autowired
	AdminLogin adminLogin;
	@Autowired
	BusinessListing businessListing;
	@Autowired
	CategoryMaster categoryMaster;

	@Autowired
	AdminService adminService;

	@RequestMapping("/")
	public ModelAndView welcome() {
		ModelAndView modelAndView = new ModelAndView("welcome.jsp");
		return modelAndView;
	}
//---------------------------Admin Login------------------------------------------------//
	@RequestMapping("/admin")
	public ModelAndView checkLogin(@RequestParam("userName") String userName,
			@RequestParam("password") String password) {
		System.out.println("I am inside checkLogin() method...");
		System.out.println("username:" + userName);
		System.out.println("password:" + password);
		adminLogin.setUserName(userName);
		adminLogin.setPassword(password);
		System.out.println(adminLogin);
		// connect to db and check the validity of credentials
		AdminLogin adminLogin = adminService.findbyId(userName);
		ModelAndView modelAndView;
		if (adminLogin != null && adminLogin.getPassword().equals(password)) {
			// forward to success.jsp
			modelAndView = new ModelAndView("index.jsp");
		} else {
			// forward back to index.jsp page with the error message
			modelAndView = new ModelAndView("login.jsp");
			modelAndView.addObject("errorMessage", "Invalid Login or Password credentials Please try again!!");
		}
		return modelAndView;
	}
//---------------------------Adding new City--------------------------------------------------------------//
	@RequestMapping("/addCity")
	public ModelAndView addCity(City city) {
		System.out.println("CIRI addCity() addCity");
		adminService.addCity(city);
		ModelAndView modelAndView = new ModelAndView("addCity.jsp");
		return modelAndView;

	}
///////////////////////////////////for populating the values in business listing (Add function)//////////////////////////////////////////////////////////////////////////////////
	@RequestMapping("/addBusinessListing")
	public ModelAndView addBusinessListing() {

		System.out.println("CIRI addBusinessListing() addBusinessListing1");
		List<City> listOfAllCities = new ArrayList<City>();
		listOfAllCities = (List<City>) adminService.findAll();
		List<CategoryMaster> listOfAllCategories = new ArrayList<CategoryMaster>();
		listOfAllCategories = (List<CategoryMaster>) adminService.findAllByCategory();
		// adminService.addBusinessListing(businessListing);
		// BusinessListing bs = adminService.addBusinessListing(businessListing);
		ModelAndView modelAndView = new ModelAndView("addBusinessListing.jsp");
		System.out.println("Inside business jsp");
		modelAndView.addObject("listCities", listOfAllCities);
		// modelAndView.addObject("addBusinessListing", bs);
		modelAndView.addObject("listCategories", listOfAllCategories);
		return modelAndView;

	}
	
	///////////////////////////////////////for inserting the values in business listing table (Add function)/////////////////////////////////////////////

	@RequestMapping("/addBusinessListing2")
	public ModelAndView addBusinessListingSave(@RequestParam("businessName") String businessName,
			@RequestParam("businessDiscription") String businessDiscription, @RequestParam("address") String address,
			@RequestParam("cityId") Integer cityId, @RequestParam("categoryId") Integer categoryId,
			@RequestParam("businessLink") String businessLink, @RequestParam("latitude") String latitude,
			@RequestParam("longitude") String longitude) {
		System.out.println("CIRI addC() addBusinessListing2");
		
		businessListing.setBusinessName(businessName);
		businessListing.setBusinessDiscription(businessDiscription);
		businessListing.setAddress(address);
		businessListing.setCityId(cityId);
		businessListing.setCategoryId(categoryId);
		businessListing.setBusinessLink(businessLink);
		businessListing.setLatitude(latitude);
		businessListing.setLongitude(longitude);
		adminService.addBusinessListingSave(businessListing);
		System.out.println("I addC() addBusinessListing2");

		ModelAndView modelAndView = new ModelAndView("index.jsp");

		return modelAndView;

	}
///---------------------------------------for updating the business listing (Update function)-------------------------------------------------------------
	
	
	//----------------for populating the values----------------------//
	@RequestMapping("/updateBusinessListing")
	public ModelAndView updateBusinessListing(@RequestParam("listingId") Integer listingId) {
		BusinessListing businessListing = adminService.businessListingfindById(listingId);
		List<City> listOfAllCities = new ArrayList<City>();
		listOfAllCities = (List<City>) adminService.findAll();
		List<CategoryMaster> listOfAllCategories = new ArrayList<CategoryMaster>();
		listOfAllCategories = (List<CategoryMaster>) adminService.findAllByCategory();
		System.out.println("CIRI updateEmployee populate values" + adminService.businessListingfindById(listingId));
		ModelAndView modelAndView = new ModelAndView("updateBusinessListing.jsp");
		modelAndView.addObject("listCities", listOfAllCities);
		modelAndView.addObject("listCategories", listOfAllCategories);
		modelAndView.addObject("businessListing", businessListing);
		return modelAndView;
	}
	//-----------------for inserting updated the values the in business listing table -------------------------///
	@RequestMapping("/updatebusinesslistingSave")
	public ModelAndView updateBusinessListing(int listingId, @RequestParam("businessName") String businessName,
			@RequestParam("businessDiscription") String businessDiscription, @RequestParam("address") String address,
			@RequestParam("cityId") Integer cityId, @RequestParam("categoryId") Integer categoryId,
			@RequestParam("businessLink") String businessLink,@RequestParam("latitude") String latitude,
			@RequestParam("longitude") String longitude) {
		System.out.println("CIRI updatebusinesslisting() updatebusinesslistingSave");
		businessListing.setListingId(listingId);
		businessListing.setBusinessName(businessName);
		businessListing.setBusinessDiscription(businessDiscription);
		businessListing.setAddress(address);
		businessListing.setCityId(cityId);
		businessListing.setCategoryId(categoryId);
		businessListing.setBusinessLink(businessLink);
		businessListing.setLatitude(latitude);
		businessListing.setLongitude(longitude);
		adminService.addBusinessListingSave(businessListing);
		System.out.println("CIRI updatebusinesslisting() updatebusinesslistingSave");
		ModelAndView modelAndView = new ModelAndView("index.jsp");
		return modelAndView;
	}
	//--------------------------Add Category -------------------------------------------------------//
	@RequestMapping("/addCategoryMaster")
	public ModelAndView addCategoryMaster(CategoryMaster categoryMaster) {
		System.out.println("CIRI addCM()");
		adminService.addCategoryMaster(categoryMaster);
		ModelAndView modelAndView = new ModelAndView("index.jsp");
		modelAndView.addObject("Message", "Category Added successfully!!");

		return modelAndView;

	}
//---------------------view All cities---------------------------------------------------------------//
	@RequestMapping("/viewAllCities")
	public ModelAndView getAllCities() {
		System.out.println("CIRI view city");
		List<City> listOfAllCities = new ArrayList<City>();
		listOfAllCities = (List<City>) adminService.findAll();
		List<CategoryMaster> listOfAllCategories = new ArrayList<CategoryMaster>();
		listOfAllCategories = (List<CategoryMaster>) adminService.findAllByCategory();
		ModelAndView modelAndView = new ModelAndView("viewAllCity.jsp");
		modelAndView.addObject("listCities", listOfAllCities);
		modelAndView.addObject("listCategories", listOfAllCategories);
		return modelAndView;

	}
	
//------------------get citydetails by cityid and category id---------------------------------------------------------------------//
	@RequestMapping("/citydetails")
	public ModelAndView findByCategoryIdAndCityId(@RequestParam(value = "categoryId") int categoryId,
			@RequestParam(value = "cityId") int cityId) {
		List<BusinessListing> businessListing1 = (List<BusinessListing>) adminService
				.findByCategoryIdAndCityId(categoryId, cityId);
		ModelAndView modelAndView = new ModelAndView("cityDetails.jsp");
		modelAndView.addObject("blist", businessListing1);
		return modelAndView;
	}

	

	@RequestMapping("/deleteBusinessListing")
	public ModelAndView deleteBusinessListing(@RequestParam("listingId") Integer listingId) {
		adminService.deleteBusinessListingById(listingId);
		System.out.println("CIRI Deleted()");
		ModelAndView modelAndView = new ModelAndView("index.jsp");
		return modelAndView;

	}

	// -----------------------------------------Map implementation (In Progress)----------------------------------
	@RequestMapping("/viewMap")
	public ModelAndView viewMap(@RequestParam("listingId") int listing_id) {
		System.out.println("view Map CIRI");
	
		BusinessListing businessListing = adminService.findLocation(listing_id);
		System.out.println("CIRI map Dsplayed");
		ModelAndView modelAndView = new ModelAndView("viewMap.jsp");
		modelAndView.addObject("location", businessListing);
		return modelAndView;

	}

}