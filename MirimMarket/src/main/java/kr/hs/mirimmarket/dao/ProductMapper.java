package kr.hs.mirimmarket.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;


import kr.hs.mirimmarket.dto.ProductDTO;

@Mapper
public interface ProductMapper {

	// 상품 리스트 보여주기
	public List<ProductDTO> getProductList();
	
	// 카테고리(1개) 기준으로 상품 리스트 보여주기
	public List<ProductDTO> getProductList1(@Param("cate1") int cate1);
	
	// 카테고리(2개) 기준으로 상품 리스트 보여주기
	public List<ProductDTO> getProductList2(@Param("cate1") int cate1, @Param("cate2") int cate2);
	
	// seq 기준으로 상품 목록 가져오기
	public  ProductDTO getProduct(@Param("productID") int productID);
	
	public ProductDTO getRegister(String userID);
	
	// 조회수 update
	public void updateClick(int productID);
	
	// 상품등록
	public void insertProduct(ProductDTO dto);

	public void updateImage(@Param("image")Map<String, Object> hmap, @Param("productID") int productID);
}
