package com.zensar.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.zensar.bean.BusinessListing;
@Repository
public interface BusinessListingRepository extends CrudRepository<BusinessListing, Integer> {

	//BusinessListing findByCityId( int cityId);
	
//	@Query("SELECT * FROM BusinessListing b WHERE b.categoryId=? AND b.cityId=?")
	List<BusinessListing> findByCategoryIdAndCityId(int categoryId,int cityId);
	
	//List<BusinessListing> findByCategoryId(int categoryId);
}
