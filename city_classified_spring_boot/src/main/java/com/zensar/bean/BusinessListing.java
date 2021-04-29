package com.zensar.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
public class BusinessListing {
	@Id
	@Column(name = "listing_id")
	private int listingId;
	@Column(name = "business_name")
	private String businessName;
	@Column(name = "business_discription")
	private String businessDiscription;
	@Column(name = "address")
	private String address;
	@Column(name = "city_id")
	private int cityId;
	@Column(name = "category_id")
	private int categoryId;
	@Column(name = "business_link")
	private String businessLink;
	@Column(name = "latitude")
	private String latitude;

	@Column(name = "longitude")
	private String longitude;

	public BusinessListing() {

	}

	public int getListingId() {
		return listingId;
	}

	public void setListingId(int listingId) {
		this.listingId = listingId;
	}

	public String getBusinessName() {
		return businessName;
	}

	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}

	public String getBusinessDiscription() {
		return businessDiscription;
	}

	public void setBusinessDiscription(String businessDiscription) {
		this.businessDiscription = businessDiscription;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getBusinessLink() {
		return businessLink;
	}

	public void setBusinessLink(String businessLink) {
		this.businessLink = businessLink;
	}

	public Object getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public Object getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public BusinessListing(int listingId, String businessName, String businessDiscription, String address, int cityId,
			int categoryId, String businessLink, String latitude, String longitude) {
		super();
		this.listingId = listingId;
		this.businessName = businessName;
		this.businessDiscription = businessDiscription;
		this.address = address;
		this.cityId = cityId;
		this.categoryId = categoryId;
		this.businessLink = businessLink;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	@Override
	public String toString() {
		return "BusinessListing [listingId=" + listingId + ", businessName=" + businessName + ", businessDiscription="
				+ businessDiscription + ", address=" + address + ", cityId=" + cityId + ", categoryId=" + categoryId
				+ ", businessLink=" + businessLink + ", latitude=" + latitude + ", longitude=" + longitude + "]";
	}
	

}
