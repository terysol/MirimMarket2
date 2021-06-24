package kr.hs.mirimmarket.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.hs.mirimmarket.dto.LikeDTO;
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
    public List<ProductDTO> getProductList1(String cate1){
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	List<ProductDTO> productDAO = productMapper.getProductList1(cate1);
    	return productDAO;
    }
    public List<ProductDTO> getProductList2(String cate1, String cate2){
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	List<ProductDTO> productDAO = productMapper.getProductList2(cate1, cate2);
    	return productDAO;
    }
    
    public ProductDTO getProduct(int productID) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	ProductDTO product=productMapper.getProduct(productID);
    	return product;
    	
    }
    
    public ProductDTO getRegister(String userID) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	ProductDTO product=productMapper.getRegister(userID);
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
    
    public void likeProduct(LikeDTO dto) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	productMapper.likeProduct(dto);
    }
    
    public List<ProductDTO> getProductCate1(String cate1){
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	List<ProductDTO> productDAO = productMapper.getProductCate1(cate1);
    	return productDAO;
    }
    
    public List<ProductDTO> getProductCate2(String cate2){
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	List<ProductDTO> productDAO = productMapper.getProductCate1(cate2);
    	return productDAO;
    }
    
    public void updateLike(int productID) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	productMapper.updateLike(productID);
    }
    
    public String selectLike(int productID) {
    	productMapper = sqlSession.getMapper(ProductMapper.class);
    	String isLike=productMapper.selectLike(productID);
    	return isLike;
    }
}