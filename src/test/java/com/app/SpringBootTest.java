package com.app;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

import java.util.List;
//import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import com.app.model.Product;
import com.app.repo.ProductRepository;

@DataJpaTest
@AutoConfigureTestDatabase(replace=Replace.NONE)
class SpringBootTest {
	
	@Autowired
	private ProductRepository repo;

	@Test
	public void testGetAllProducts()
	{
		List<Product> product=(List<Product>) repo.findAll();
		
		assertThat(product).size().isGreaterThan(0);
	}
	
	@Test
	public void testSaveProduct()
	{
		int a=1;
		Product product=new Product(Integer.valueOf(a),"2325","phone",3000.0,"5%-SLAB","available");
		Product savedProduct=repo.save(product);
		assertNotNull(savedProduct);
	}
	
	@Test
	public void testDeleteProduct()
	{
		Integer id=2;
		boolean available=repo.findById(id).isPresent();
		repo.deleteById(id);
		boolean not_available=repo.findById(id).isPresent();
		assertTrue(available);
		assertFalse(not_available);
	}
	
	/*
	 * @Test public void testGetProductById() { Integer id=3; Product
	 * product=repo.getProductById(id); assertThat(product.getId()==id); }
	 */
}
