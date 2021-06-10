package kr.hs.mirimmarket.controller;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
