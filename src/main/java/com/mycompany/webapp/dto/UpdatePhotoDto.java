package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class UpdatePhotoDto {
	private MultipartFile photo;

	public MultipartFile getPhoto() {
		return photo;
	}

	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}
}
