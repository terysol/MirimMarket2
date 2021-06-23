package kr.hs.mirimmarket.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.hs.mirimmarket.dto.LikeDTO;
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
	
	public void likeProduct(LikeDTO dto) {
		productdao.likeProduct(dto);
	}
	
	public List<ProductDTO> getProductCate1(String cate1){
    	return productdao.getProductCate1(cate1);
    }
	
	public List<ProductDTO> getProductCate2(String cate2){
    	return productdao.getProductCate1(cate2);
    }
	
	public void updateLike(int productID) {
		productdao.updateLike(productID);
	}
	
	public String selectLike(int productID) {
		return productdao.selectLike(productID);
	}
}
