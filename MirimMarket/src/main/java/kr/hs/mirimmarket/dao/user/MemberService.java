package kr.hs.mirimmarket.dao.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.hs.mirimmarket.dto.MemberDTO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO userdao;
	
	public void insertMember(MemberDTO dto) {
		userdao.insertMember(dto);
	}
	
	public MemberDTO readMember(String userId) {
		return userdao.readMember(userId);
	}
	
	public int idCheck(String userId) {
		return userdao.idCheck(userId);
	}
}
