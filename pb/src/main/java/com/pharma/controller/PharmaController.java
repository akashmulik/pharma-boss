package com.pharma.controller;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.pharma.entity.Products;
import com.pharma.repository.ProductsRepository;

@Controller
public class PharmaController {

	@Autowired
	private ProductsRepository repo;
	@Autowired
	EntityManager em;
	
	@GetMapping("/")
	public String getIndexPage() {
		dbTask();
		System.out.println("In CONTROLLER......"+ em.find(Products.class, 1L).getName());
		return "index1";
	}
	
	public void dbTask() {
		repo.findById(1l).ifPresent(x -> System.out.println(x.getName()));
	}
}
