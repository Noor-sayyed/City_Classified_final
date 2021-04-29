package com.zensar.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.zensar.bean.BusinessListing;
import com.zensar.bean.CategoryMaster;
import com.zensar.bean.City;
import com.zensar.service.AdminService;
import com.zensar.service.UserService;


@Controller
public class UserController {
	@Autowired
	City city;
	
	@Autowired
	UserService userService;

	@RequestMapping("/userHome")
	public ModelAndView getAllCitiesNames() {
		System.out.println("view city");
		List<City> listOfAllCities = new ArrayList<City>();
		listOfAllCities = (List<City>) userService.findAll();
		ModelAndView modelAndView = new ModelAndView("userHome.jsp");
		modelAndView.addObject("listCities", listOfAllCities);
		return modelAndView;
		
	}
	
	@RequestMapping("/userCategory")
	public ModelAndView getAllCategoriesName(@RequestParam(value="cityId") int cityId)  {
		System.out.println("view category");
		System.out.println(cityId);
		List<CategoryMaster> listOfAllCategories = new ArrayList<CategoryMaster>();
		listOfAllCategories = (List<CategoryMaster>) userService.findAllCategory();
		ModelAndView modelAndView = new ModelAndView("userCategory.jsp");
		modelAndView.addObject("cityId", cityId);
		modelAndView.addObject("listCategories", listOfAllCategories);
		return modelAndView;
		
	}
	
	@RequestMapping("/userAllDetails")
	public ModelAndView getAllUserDetails(@RequestParam(value="cityId") int cityId,@RequestParam("categoryId") int categoryId) {
		System.out.println("Getting the business list");
		System.out.println(cityId);
		System.out.println(categoryId);
		List<BusinessListing>  businessListing1 = (List<BusinessListing>) userService.findByCategoryIdAndCityId(categoryId,cityId);	
		System.out.println("list"+businessListing1);
			ModelAndView modelAndView = new ModelAndView("userAllDetails.jsp");
			modelAndView.addObject("businessList",businessListing1);
			modelAndView.addObject("categoryId",categoryId);
		return modelAndView;
		
		
	}
	
	@RequestMapping("/viewMap1")
	public ModelAndView viewMap(@RequestParam("listingId") int listing_id) {
		System.out.println("view Map CIRI");
		/*BusinessListing businessListing = adminService.businessListingfindById(listingId);*/
		BusinessListing businessListing = userService.findLocation(listing_id);
		System.out.println("CIRI map Dsplayed");
		ModelAndView modelAndView = new ModelAndView("viewMap.jsp");
		modelAndView.addObject("location",businessListing);
		return modelAndView;

	}
}