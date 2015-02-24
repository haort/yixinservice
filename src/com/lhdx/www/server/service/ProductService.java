package com.lhdx.www.server.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lhdx.www.server.dao.ProductDao;
import com.lhdx.www.server.model.Product;

@Service("productService")
public class ProductService {
	@Resource(name = "productDao")
	private ProductDao productDao;

	public List<Product> findProducts(){
			return productDao.findProducts();
	}

	public Product findProductById(int productId){
		return productDao.findProductById(productId);
}
}
