package kr.hs.mirimmarket.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.hs.mirimmarket.dto.ProductDTO;

@Repository
public class ProductDAO {

	@Autowired
    private SqlSession sqlSession;

    @Inject
    private ProductMapper productMapper;
    
    public List<ProductDTO> getProductList(){
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	List<ProductDTO> productDAO = productMapper.getProductList();
    	return productDAO;
    }
    
    public ProductDTO getProduct(int seq) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	ProductDTO product=productMapper.getProduct(seq);
    	return product;
    	
    }
    public void updateClick(int seq) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	productMapper.updateClick(seq);
    }
    
    public void insertProduct(ProductDTO dto) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	productMapper.insertProduct(dto);
    }
}