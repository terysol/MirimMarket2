package kr.hs.mirimmarket.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.hs.mirimmarket.dao.ProductService;
import kr.hs.mirimmarket.dao.user.MemberMapper;
import kr.hs.mirimmarket.dao.user.MemberService;
import kr.hs.mirimmarket.dto.ProductDTO;
import kr.hs.mirimmarket.dto.LikeDTO;
import kr.hs.mirimmarket.img.UploadFileUtils;

@RestController
@MapperScan(basePackages ="kr.hs.mirimmarket.dao")
public class IndexController {
	
	@Autowired
	private ProductService service;
	
	@Autowired
	private MemberService member;
	
	@Value("${custom.ckuplaod.url}")
	private String uploadPath;
	
	
	@RequestMapping("/")
	public ModelAndView root() {
		ModelAndView model =new ModelAndView();
		List<ProductDTO> productlist=service.getProductList();
		model.addObject("productlist",productlist);
		model.setViewName("main");
		return model;
   }

	// 메인
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView model =new ModelAndView();
		List<ProductDTO> productlist=service.getProductList();
		model.addObject("productlist",productlist);
		model.setViewName("main");
		return model;
   }
	
	
	// 카테고리 보기
	@GetMapping("/category")
	public ModelAndView category(@RequestParam("cate1") String cate1, @RequestParam(value="cate2", defaultValue = "") String cate2) {
		ModelAndView model =new ModelAndView();
		model.addObject("cate1", cate1);
		model.addObject("cate2", cate2);
		List<ProductDTO> productlist;
		if(cate2.equals("")) {
			productlist=service.getProductList1(cate1);
		}else {
			productlist=service.getProductList2(cate1, cate2);
		}
		model.addObject("productlist",productlist);
		String cateName = (cate2.equals("")?cate1:cate1+" > " + cate2);
		model.addObject("cateName", cateName);
		model.setViewName("category");
		return model;
   }
	
	// 상품 수정하기
	@RequestMapping("/modify")
	public ModelAndView modify() {
		ModelAndView model =new ModelAndView();
		model.setViewName("modify");
		return model;
   }
	
	// 상품 조회
	@RequestMapping("/product")
	public ModelAndView product(@RequestParam("productID") String productID) {
		ModelAndView model =new ModelAndView();
		int seq=Integer.parseInt(productID);
		service.updateClick(seq);		// 조회수 올리기
		ProductDTO productdto = service.getProduct(seq);
		model.addObject("product",productdto);
		model.setViewName("product");
		return model;
   }
	
	@RequestMapping("/product.do")
	public ModelAndView likeproduct(LikeDTO dto, @RequestParam(value="productID",required=false)String productID ,
			@RequestParam("OnOff") String OnOff, HttpServletRequest request) {
		ModelAndView model =new ModelAndView();
		HttpSession session = request.getSession();
		
		String userId= (String) session.getAttribute("userId");
		int seq=Integer.parseInt(productID);
		dto.setUserID(userId);  dto.setProductID(seq);
		service.likeProduct(dto);
		
		service.updateLike(seq);
		String isLike = service.selectLike(seq);
		System.out.println(isLike);
		model.addObject("isLike",isLike);
		model.setViewName("redirect:/product?productID=" + seq);
		return model;
	}
	
	// 상품 등록 창
		@RequestMapping("/registration")
		public ModelAndView registration(HttpServletRequest request) {
			ModelAndView model =new ModelAndView();
			
			HttpSession session = request.getSession();
			String userId= (String) session.getAttribute("userId");
			if(userId == null) {
				
				
			}else {
				model.setViewName("registration");
			}
			return model;
			//return model;
	   }
	
	// 상품 등록 
	@RequestMapping("/insert.do")
	public ModelAndView insert(ProductDTO dto, MultipartFile image, HttpServletRequest request) throws IOException, Exception {
		
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";  // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		 String ymdPath = UploadFileUtils.calcPath(imgUploadPath);  // 위의 폴더를 기준으로 연월일 폴더를 생성
		 String fileName = null;  // 기본 경로와 별개로 작성되는 경로 + 파일이름
		   
		 if(image.getOriginalFilename() != null && !image.getOriginalFilename().equals("")) {
		  // 파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 이름이 없다면)
		  
		  fileName =  UploadFileUtils.fileUpload(imgUploadPath, image.getOriginalFilename(), image.getBytes(), ymdPath);
		  
		  // gdsImg에 원본 파일 경로 + 파일명 저장
		  dto.setGdsImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		  // gdsThumbImg에 썸네일 파일 경로 + 썸네일 파일명 저장
		  dto.setGdsThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		 } else {  // 첨부된 파일이 없으면
		  fileName = File.separator + "images" + File.separator + "none.jpg";
		  // 미리 준비된 none.png파일을 대신 출력함
		  
		  dto.setGdsImg(fileName);
		  dto.setGdsThumbImg(fileName);
		 }
		
		HttpSession session = request.getSession();
		String userId= (String) session.getAttribute("userId");
		String userName=member.getUserName(userId);
		dto.setUserID(userId);  dto.setUserName(userName);
		
		if(dto.getCate2().equals("교복") || dto.getCate2().equals("체육복") || dto.getCate2().equals("사복") || dto.getCate2().equals("액세서리")) {
			dto.setCate1("의류");
		}
		if(dto.getCate2().equals("전공도서") || dto.getCate2().equals("일반도서") || dto.getCate2().equals("교과서")) {
			dto.setCate1("도서");
		}
		if(dto.getCate2().equals("학용품") || dto.getCate2().equals("학교굿즈") || dto.getCate2().equals("주변기기") || dto.getCate2().equals("기타 상품")) {
			dto.setCate1("기타");
		}
		service.insertProduct(dto);

	
		ModelAndView model =new ModelAndView();
		model.setViewName("redirect:/main");
		return model;
	}
}
