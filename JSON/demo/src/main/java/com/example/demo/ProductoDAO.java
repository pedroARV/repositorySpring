package com.example.demo;

import org.springframework.stereotype.Component;

@Component
public class ProductoDAO implements IProductoDAO{

	@Override
	public Producto findById(Integer id) {
		// TODO Auto-generated method stub
		return new Producto(id, "MacBook Pro 15\"",19500d);
	}

}
