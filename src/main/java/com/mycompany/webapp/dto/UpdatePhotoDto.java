package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class UpdatePhotoDto {
	private MultipartFile uphoto;

	public MultipartFile getUphoto() {
		return uphoto;
	}
	public void setUphoto(MultipartFile uphoto) {
		this.uphoto = uphoto;
	}
}
