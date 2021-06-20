package kr.hs.mirimmarket.dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.hs.mirimmarket.dto.MemberDTO;

@Mapper
public interface MemberMapper {
	
	public void insertMember(MemberDTO dto);
	
	public MemberDTO readMember(String userId);
	
	public int idCheck(String userId);
}
