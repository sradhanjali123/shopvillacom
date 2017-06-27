package com.niit.dt.service;

import java.util.List;

import com.niit.dt.model.Product;

/**
 * Created by Le on 1/24/2016.
 */
public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
