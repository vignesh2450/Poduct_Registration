package com.app.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.app.model.Product;
import com.app.repo.ProductRepository;
import com.app.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService {
@Autowired
private ProductRepository repo;
//1. Save method
@Transactional
public Integer saveProduct(Product p) {
//calculations here..
//gstAmt= cost*gst/100
//totalAmt=cost+ gstAmt - disc
p=repo.save(p);
return p.getId();
}
//2. Get all Product details from Database
@Transactional(readOnly= true)
public List<Product> getAllProducts() {
return repo.findAll();
}
//3. Delete Record based on ID
@Transactional
public void deleteProduct(Integer id) {
repo.deleteById(id);
}
//4. Get Record based on ID
@Transactional
public Product getProductById(Integer id) {
return repo.getProductById(id);
}
}