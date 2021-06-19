package kr.hs.mirimmarket.controller;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.http.HttpRequest;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.List;

import org.apache.tomcat.util.json.JSONParser;
import org.json.JSONObject;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;



import kr.hs.mirimmarket.dao.ProductMapper;
import kr.hs.mirimmarket.dao.ProductService;
import kr.hs.mirimmarket.dto.ProductDTO;

@RestController
@MapperScan(basePackages ="kr.hs.mirimmarket.dao")
public class GetProductController {
	
	@Autowired
	private ProductService service;
	
	@RequestMapping("/main")
	public ModelAndView main() {
		ModelAndView model =new ModelAndView();
		List<ProductDTO> productlist=service.getProductList();
		model.addObject("productlist",productlist);
		model.setViewName("main");
		return model;
   }
	
	@RequestMapping("/main_2")
	public ModelAndView main_2() {
		ModelAndView model =new ModelAndView();
		List<ProductDTO> productlist=service.getProductList();
		model.addObject("productlist",productlist);
		model.setViewName("main_2");
		return model;
   }
	
	@GetMapping(value="/BuyProduct")
	public ModelAndView buyProduct(@RequestParam("seq") String seq1) {	
		ModelAndView model = new ModelAndView();
		int seq=Integer.parseInt(seq1);
		service.updateClick(seq);		// 조회수 올리기
		ProductDTO product = service.getProduct(seq);
		model.addObject("product",product);
		model.setViewName("BuyProduct");
		return model;
	}
	
	@GetMapping("/Registration")
	public ModelAndView registration() {
		ModelAndView model = new ModelAndView();
		model.setViewName("registration");
		return model;	
	}
	
	@RequestMapping("/insert.do")
	public ModelAndView insertProduct(ProductDTO dto) {
		service.insertProduct(dto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main");
		return mav;
	}
}
