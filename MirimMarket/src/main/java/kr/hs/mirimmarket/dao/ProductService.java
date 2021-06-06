package kr.hs.mirimmarket.dao;

import java.util.List;

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
	
	public  ProductDTO getProduct(int seq) {
		return productdao.getProduct(seq);
	}
	
	public void updateClick(int seq) {
		productdao.updateClick(seq);
	}
	
	public void insertProduct(ProductDTO dto) {
		productdao.insertProduct(dto);
	}
	
}
