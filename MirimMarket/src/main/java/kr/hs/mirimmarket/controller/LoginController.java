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

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.hs.mirimmarket.dao.user.MemberService;
import kr.hs.mirimmarket.dto.MemberDTO;

@RestController
@MapperScan(basePackages ="kr.hs.mirimmarket.dao")
public class LoginController {
	
	@Autowired
	private MemberService service;
	
	@PostMapping(value="/login.do", produces="application/x-www-form-urlencoded")
	@ResponseBody
	public ModelAndView login(@RequestBody String param) throws FileNotFoundException, IOException, GeneralSecurityException {
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
			String name = jsonObj.get("name").toString();
			String email = jsonObj.get("email").toString();
			String imageUrl = jsonObj.get("picture").toString();
			
			List<MemberDTO> temp = service.findName(userId);
			boolean count=true;
			for(MemberDTO t:temp) {
				if(t.equals(userId)) {
					count=false;
				}
			}
			if(count) {
				MemberDTO dto = new MemberDTO();
				dto.setUserId(userId);  dto.setName(name);  dto.setEmail(email);  dto.setImageUrl(imageUrl);
				service.insertMember(dto);
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main_2");
		return mav;
	}
}
