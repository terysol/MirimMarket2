package kr.hs.mirimmarket.dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.hs.mirimmarket.dto.InfoDTO;
import kr.hs.mirimmarket.dto.MemberDTO;
import kr.hs.mirimmarket.dto.ProductDTO;

@Mapper
public interface MemberMapper {
	
	public void insertMember(MemberDTO dto);
	
	public int idCheck(String userId);
	
	// 이름 가져오기
	public String getUserName(String userID);
	
	public List<InfoDTO> getInfo(String userID);
}
