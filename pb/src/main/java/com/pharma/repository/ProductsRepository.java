package com.pharma.repository;

import org.springframework.data.repository.CrudRepository;
import com.pharma.entity.Products;

public interface ProductsRepository extends CrudRepository<Products, Long>{

	
}
