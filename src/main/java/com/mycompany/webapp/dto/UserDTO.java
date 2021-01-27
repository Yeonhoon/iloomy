package com.mycompany.webapp.dto;


public class UserDTO {
    private String id;
    private String passWord;
    private String name;
   
    private AddressDTO address;
    

    public UserDTO() {	}
    public UserDTO(String id) {
        super();
        this.id = id;
    }

    public UserDTO(String id, String passWord) {
        this.id = id;
        this.passWord = passWord;
    }
    
    
    public UserDTO(String id, String passWord, String name, AddressDTO address) {
		super();
		this.id = id;
		this.passWord = passWord;
		this.name = name;
		this.address = address;
	}
	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public AddressDTO getAddress() {
		return address;
	}
	public void setAddress(AddressDTO address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", passWord=" + passWord + ", name=" + name + ", address=" + address + "]";
	}
	
}
