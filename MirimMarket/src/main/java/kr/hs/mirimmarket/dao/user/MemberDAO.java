package kr.hs.mirimmarket.dao.user;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.hs.mirimmarket.dao.ProductMapper;
import kr.hs.mirimmarket.dto.InfoDTO;
import kr.hs.mirimmarket.dto.MemberDTO;
import kr.hs.mirimmarket.dto.ProductDTO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Inject
	private MemberMapper userMapper;
	
	public void insertMember(MemberDTO dto) {
		userMapper = sqlSession.getMapper(MemberMapper.class);
		userMapper.insertMember(dto);
	}
	
	public int idCheck(String userId) {
		userMapper=sqlSession.getMapper(MemberMapper.class);
		int count=userMapper.idCheck(userId);
		return count;
	}
	
	public String getUserName(String productID) {
		userMapper = sqlSession.getMapper(MemberMapper.class);
    	String name=userMapper.getUserName(productID);
    	return name;
    }
	
	public List<InfoDTO> getInfo(String userID) {
		userMapper = sqlSession.getMapper(MemberMapper.class);
		List<InfoDTO> info=userMapper.getInfo(userID);
    	return info;
	}
}
