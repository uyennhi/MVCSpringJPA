package com.program.springmvc.jpa.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.program.springmvc.jpa.exception.ResourceNotFoundException;
import com.program.springmvc.jpa.model.Customer;
import com.program.springmvc.jpa.repository.CustomerRepository;

@Service
public class CustomerService {
	
	@Autowired
	public CustomerRepository customerRepository;
	
	@Transactional
	public List<Customer> getCustomer () {
		return customerRepository.findAll();
	}
	
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		customerRepository.save(theCustomer);
	}
	
	@Transactional
	public Customer getCustomer(int id) throws ResourceNotFoundException{
		return customerRepository.findById(id).orElseThrow( () -> new ResourceNotFoundException(id));
	}
	
	@Transactional
	public void deleteCustomer(int theId) {
		customerRepository.deleteById(theId);
	}
}
