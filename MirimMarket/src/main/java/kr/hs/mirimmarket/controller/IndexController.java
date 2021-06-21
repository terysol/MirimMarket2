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
import kr.hs.mirimmarket.dto.ProductDTO;
import kr.hs.mirimmarket.img.UploadFileUtils;

@RestController
@MapperScan(basePackages ="kr.hs.mirimmarket.dao")
public class IndexController {
	
	@Autowired
	private ProductService service;
	
	@Value("${custom.ckuplaod.url}")
	private String uploadPath;
	
//	@Resource(name="uploadPath")
//	private String uploadPath;
	
	@RequestMapping("/")
	public ModelAndView root() {
		ModelAndView model =new ModelAndView();
		model.setViewName("main");
		return model;
   }

	
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView model =new ModelAndView();
		model.setViewName("main");
		return model;
   }
	
	@RequestMapping("/category")
	public ModelAndView category() {
		ModelAndView model =new ModelAndView();
		model.setViewName("category");
		return model;
   }
	
	@RequestMapping("/modify")
	public ModelAndView modify() {
		ModelAndView model =new ModelAndView();
		model.setViewName("modify");
		return model;
   }
	
	@RequestMapping("/product")
	public ModelAndView product() {
		ModelAndView model =new ModelAndView();
		model.setViewName("product");
		return model;
   }
	
	@RequestMapping("/registration")
	public ModelAndView registration() {
		ModelAndView model =new ModelAndView();
		model.setViewName("registration");
		return model;
   }
	
	@RequestMapping("/insert.do")
	public ModelAndView insert(ProductDTO dto, MultipartFile image, HttpServletRequest request) throws IOException, Exception {
		
		//String uploadPath = request.getSession().getServletContext().getRealPath("/").concat("resources");
		String imgUploadPath = uploadPath + File.separator + "imgUpload";  // 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload
		 String ymdPath = UploadFileUtils.calcPath(imgUploadPath);  // 위의 폴더를 기준으로 연월일 폴더를 생성
		 String fileName = null;  // 기본 경로와 별개로 작성되는 경로 + 파일이름
		   
		 if(image.getOriginalFilename() != null && !image.getOriginalFilename().equals("")) {
		  // 파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 이름이 없다면)
		  
		  fileName =  UploadFileUtils.fileUpload(imgUploadPath, image.getOriginalFilename(), image.getBytes(), ymdPath);
		  
		  System.out.println(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
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
		dto.setUserID(userId);
		service.insertProduct(dto);

	
		ModelAndView model =new ModelAndView();
		model.setViewName("redirect:/main");
		return model;
	}
	
	//@Autowired
	//private BoardService s;
	/*@RequestMapping(value="/", method=RequestMethod.GET)
	public String root() {
		return "index";
	}
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index() {
		return "index";
	}
	@RequestMapping(value="/board", method=RequestMethod.GET)
	public String board() {
		return "board";
	}
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write() {
		return "write";
	}
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String view() {
		return "view";
	}
	/*@RequestMapping(value="/writeAction", method=RequestMethod.POST)
	public String writeAction(
			HttpServletRequest req,@RequestParam("file") MultipartFile file,
			@RequestParam("title")String title, 
			@RequestParam("contents")String contents) throws IllegalStateException, IOException {
		String PATH = req.getSession().getServletContext().getRealPath("/") + "resources/";
		if (!file.getOriginalFilename().isEmpty()) {
			file.transferTo(new File(PATH + file.getOriginalFilename()));
		}
		s.addBoard(new Board(0, title, contents, file.getOriginalFilename()));
		return "board";
	}
	@RequestMapping(value="/boardList", method=RequestMethod.GET)
	@ResponseBody
	public List<Board> boardList(){
		return s.getBoard();
	}
	@RequestMapping(value="/boardView", method=RequestMethod.GET)
	@ResponseBody
	public Board boardList(@RequestParam("idx")int idx){
		return s.getBoardOne(idx);
	}
	@RequestMapping(value="/replyList", method=RequestMethod.GET)
	@ResponseBody
	public List<Reply> replyList(@RequestParam("idx")int boardIdx){
		return s.getReply(boardIdx);
	}
	@RequestMapping(value="/writeReply", method=RequestMethod.POST)
	public String writeReply(
			@RequestParam("idx")int idx,
			@RequestParam("replyIdx")int replyIdx,
			@RequestParam("contents")String contents) {
		s.addReply(new Reply(0, idx,replyIdx, contents));
		return "redirect:view?idx=" + idx;
	}*/
}
