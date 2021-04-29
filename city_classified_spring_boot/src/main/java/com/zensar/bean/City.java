package com.zensar.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component

public class City {
	@Id
	@Column(name="city_id")
	private int cityId;
	@Column(name="city_name")
	private String cityName;
	@Column(name="city_image")
	private String cityImage;

	public City() {
		
	}
	
	public City(int cityId, String cityName,String cityImage)
	{
		super();
		this.cityId=cityId;
		this.cityName=cityName;
		this.cityImage = cityImage;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCityImage() {
		return cityImage;
	}

	public void setCityImage(String cityImage) {
		this.cityImage = cityImage;
	}

	@Override
	public String toString() {
		return "City [cityId=" + cityId + ", cityName=" + cityName + ", cityImage=" + cityImage + "]";
	}

	
	

}
