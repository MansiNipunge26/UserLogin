package com.example.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity

	public class User {

	    @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private Long id;

	    @NotBlank(message = "Username is required")
	    private String Username;

	    @NotBlank(message = "Email is required")
	    @Email(message = "Enter a valid email address")
	    @Column(nullable = false, unique = true, length = 100)
	    private String Email;

	    @NotBlank(message = "Password is required")
	    @Size(min = 8, max = 15, message = "Password must be 8–15 characters long")
	    @Column(nullable = false)
	    private String password;

	    // This field is only for validation, not saved in DB
	     
	    private String confirmpassword;

	    
	    // Getters & Setters
	    public Long getId() {
	        return id;
	    }

	    public void setId(Long id) {
	        this.id = id;
	    }

	    public String getUsername() {
	        return Username;
	    }

	    public void setUsername(String username) {
	        this.Username = username;
	    }

	    public String getEmail() {
	        return Email;
	    }

	    public void setEmail(String email) {
	        this.Email = email;
	    }

	    public String getPassword() {
	        return password;
	    }

	    public void setPassword(String password) {
	        this.password = password;
	    }

		public String getConfirmpassword() {
			return confirmpassword;
		}

		public void setConfirmPassword(String confirmpassword) {
			this.confirmpassword = confirmpassword;
		}

	    
	   	    }