package com.exam.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.exam.model.DonationRege;
import com.exam.service.LoninOrRegeDaoService;

@SpringBootApplication
@RestController
@CrossOrigin(origins = "*")
public class UsererApiController {

	@Autowired
	LoninOrRegeDaoService loninOrRegeDaoService;

	@PostMapping("/register")
	public DonationRege regester(@RequestBody DonationRege user) {

		System.out.println(user);
		boolean reg = loninOrRegeDaoService.isEmailAlreadyInUse(user.getEmail(), "DonationRege");

		if (reg != true) {

			loninOrRegeDaoService.save(user);

			return user;

		} else {
			
			System.out.println("come to else part");

			return null;

		}

	}

	@GetMapping(value = "/register")
	public List<DonationRege> getAll() {

		return loninOrRegeDaoService.allDonationUser();

	}

	@GetMapping(value = "/register/{id}")
	public DonationRege getById(@PathVariable("id") int id) {

		System.out.println(id);

		return loninOrRegeDaoService.getById(id);

	}

	@DeleteMapping("/register/{id}")
	public Map<String, Boolean> cancal(@PathVariable int id) {
		
		loninOrRegeDaoService.deleteUser(id);
		Map<String, Boolean> responce = new HashMap<String, Boolean>();
		responce.put("deleted", true);
		
		return responce;

	}

	
	 @GetMapping("/registera/{email}")
	 public DonationRege getByEmail(@PathVariable	 String email) {
	  
	  System.out.println(email);
	  
	  return loninOrRegeDaoService.getById(email);
	  }
	 
	
	@PutMapping("/register/{id}")
	public List<DonationRege> update(@RequestBody DonationRege user , @PathVariable int id) {
		
		System.out.println(user+" : "+id);
		loninOrRegeDaoService.updateUser(user);
		
		return loninOrRegeDaoService.allDonationUser();
	}

}
