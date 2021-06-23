package kr.hs.mirimmarket.controller;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.hs.mirimmarket.dao.ProductService;
import kr.hs.mirimmarket.dao.user.MemberService;
import kr.hs.mirimmarket.dto.InfoDTO;
import kr.hs.mirimmarket.dto.MemberDTO;
import kr.hs.mirimmarket.dto.ProductDTO;

@RestController
@MapperScan(basePackages ="kr.hs.mirimmarket.dao")
public class LoginController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private ProductService product;
	
	// 로그인
	@PostMapping(value="/login.do", produces="application/x-www-form-urlencoded")
	@ResponseBody
	public ModelAndView login(@RequestBody String param,HttpServletRequest request) throws FileNotFoundException, IOException, GeneralSecurityException {
		HttpSession session = request.getSession();
		
		String userId = "";
		try {
			String idToken = param.split("=")[2];
			String url = "https://oauth2.googleapis.com/tokeninfo";
			url += "?id_token="+idToken;
			
			URL gUrl = new URL(url);
			HttpURLConnection conn = (HttpURLConnection) gUrl.openConnection();
			
			InputStream is = conn.getInputStream();
			InputStreamReader isr =  new InputStreamReader(is, "UTF-8");
			BufferedReader in  = new BufferedReader(isr);
			
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(in);
			userId = jsonObj.get("sub").toString();
			String name = jsonObj.get("given_name").toString();
			String email = jsonObj.get("email").toString();
			String imageUrl = jsonObj.get("picture").toString();
			
			int temp = service.idCheck(userId);
			
			if(temp == 0) {    // 중복 아이디가 존재x
				MemberDTO dto = new MemberDTO();
				dto.setUserID(userId);  dto.setName(name);  dto.setEmail(email);  dto.setImageUrl(imageUrl);
				service.insertMember(dto);
			}
			
			session.setAttribute("userId", userId);
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main");
		return mav;
	}
	
	// 로그아웃
	@RequestMapping("/logOut.do")
	public ModelAndView logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		ModelAndView model =new ModelAndView();
		model.setViewName("redirect:/main");
		return model;
	}
	
	// 마이페이지 보기
	@RequestMapping("/mypage")
	public ModelAndView mypage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView model =new ModelAndView();
		String userId= (String) session.getAttribute("userId");
		
		List<InfoDTO> memberinfo= service.getInfo(userId);
		
		if(userId== null) {
			// alert창 띄워주기
			// session.setAttribute("message", "로그인 해주세요.");
			model.setViewName("redirect:/main");
		}else {
			model.addObject("memberInfo",memberinfo);
			model.setViewName("mypage");
		}
		return model;
   }
}
