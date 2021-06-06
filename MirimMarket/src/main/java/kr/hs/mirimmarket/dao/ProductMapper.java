package kr.hs.mirimmarket.dao;

import java.util.List;

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
	
	// seq 기준으로 상품 목록 가져오기
	public  ProductDTO getProduct(@Param("seq") int seq);
	
	// 조회수 update
	public void updateClick(int seq);
	
	// 상품등록
	public void insertProduct(ProductDTO dto);

}
