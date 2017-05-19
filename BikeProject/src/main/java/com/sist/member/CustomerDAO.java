package com.sist.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDAO {

	@Autowired
	private CustomerMapper c_mapper;
	
	public int memberIdCheck(String id) {
	    return c_mapper.memberIdCheck(id);
	}
	
	public String memberGetPassword(String id) {
		return c_mapper.memberGetPassword(id);
	}
}
