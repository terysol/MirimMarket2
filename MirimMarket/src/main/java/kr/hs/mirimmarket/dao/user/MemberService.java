package kr.hs.mirimmarket.dao.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.hs.mirimmarket.dto.InfoDTO;
import kr.hs.mirimmarket.dto.MemberDTO;
import kr.hs.mirimmarket.dto.ProductDTO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO userdao;
	
	public void insertMember(MemberDTO dto) {
		userdao.insertMember(dto);
	}
	public int idCheck(String userId) {
		return userdao.idCheck(userId);
	}
	
	public String getUserName(String userID) {
		return userdao.getUserName(userID);
	}
	
	public List<InfoDTO> getInfo(String userID) {
		return userdao.getInfo(userID);
	}
}
