package com.DAO;

import java.util.List;

import com.entity.Cart;
import com.entity.User;

public interface CartDAO {
	public boolean addCart(Cart c );
	
	public List<Cart> getBookByUser(int userId);
	
	public boolean delectBook(int bid,int cid);//
}
