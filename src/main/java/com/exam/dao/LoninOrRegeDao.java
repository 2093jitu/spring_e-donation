package com.exam.dao;

import java.util.List;

import com.exam.model.DonationRege;

public interface LoninOrRegeDao {
	
	public DonationRege save(DonationRege entity);	
	public List<DonationRege> login (String email, String password);
	public boolean isEmailAlreadyInUse(String email, String entity);
	public List<DonationRege> allDonationUser();
	public void deleteUser(int id);
	public DonationRege getById(String name);
	public DonationRege getById(int id);	
	public void updateUser(DonationRege entity);
		
	
}
