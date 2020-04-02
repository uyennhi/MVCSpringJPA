package com.program.springmvc.jpa.repositoty;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.program.springmvc.jpa.model.Customer;

@Repository("customerRespository")
public interface CustomerRepository extends JpaRepository<Customer, Integer>{
	
}
