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
	
	public List<ProductDTO> getProductList1(String cate1){
		return productdao.getProductList1(cate1);
	}
	public List<ProductDTO> getProductList2(String cate1, String cate2){
		return productdao.getProductList2(cate1, cate2);
	}
	
	public  ProductDTO getProduct(int productID) {
		return productdao.getProduct(productID);
	}
	
	public  ProductDTO getRegister(String userID) {
		return productdao.getRegister(userID);
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
