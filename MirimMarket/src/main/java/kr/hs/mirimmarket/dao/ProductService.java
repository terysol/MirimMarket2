package kr.hs.mirimmarket.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.hs.mirimmarket.dto.ProductDTO;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productdao;
	
	public List<ProductDTO> getProductList(){
		return productdao.getProductList();
	}
	
	public  ProductDTO getProduct(int productID) {
		return productdao.getProduct(productID);
	}
	
	public void updateClick(int productID) {
		productdao.updateClick(productID);
	}
	
	public void insertProduct(ProductDTO dto) {
		productdao.insertProduct(dto);
	}
	
	public void updateImage(Map<String, Object> hamp,int productID) {
		productdao.updateImage(hamp,productID);
	}
}
