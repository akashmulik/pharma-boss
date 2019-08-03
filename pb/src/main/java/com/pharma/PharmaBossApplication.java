package com.pharma;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = { "com.pharma.controller" })
public class PharmaBossApplication {

	public static void main(String[] args) {
		SpringApplication.run(PharmaBossApplication.class, args);
	}
}
