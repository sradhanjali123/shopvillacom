package com.niit.dt.service;

import com.niit.dt.model.Cart;

/**
 * Created by Le on 1/25/2016.
 */
public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
