package kr.hs.mirimmarket.dao;

import java.util.List;
import java.util.Map;

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
    
    public ProductDTO getProduct(int productID) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	ProductDTO product=productMapper.getProduct(productID);
    	return product;
    	
    }
    public void updateClick(int productID) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	productMapper.updateClick(productID);
    }
    
    public void insertProduct(ProductDTO dto) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	productMapper.insertProduct(dto);
    }
    
    public void updateImage(Map<String, Object> hamp,int productID) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	productMapper.updateImage(hamp,productID);
    }
}