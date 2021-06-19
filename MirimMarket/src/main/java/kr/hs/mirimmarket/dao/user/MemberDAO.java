package kr.hs.mirimmarket.dao.user;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.hs.mirimmarket.dto.MemberDTO;

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
	
	public MemberDTO readMember(String userId) {
		userMapper = sqlSession.getMapper(MemberMapper.class);
		MemberDTO member= userMapper.readMember(userId);
		return member;
	}
	
	public List<MemberDTO> findName(String userId) {
		userMapper=sqlSession.getMapper(MemberMapper.class);
		List<MemberDTO> name=userMapper.findName(userId);
		return name;
	}
}
