package kr.hs.mirimmarket.dto;

import java.util.Date;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public class ProductDTO {
	private int productID;
	private String userID;
	private String userName;
	private String title;
	private String cate1;
	private String cate2;
	private String gdsThumbImg;		// 썸네일 저장할 변수
	private String gdsImg;			// 상품 등록 쿼리의 이미지
	private int price;
	private int amount;
	private String state;
	private String explanation;
	private int click;
	private Date date;
	
	private MemberDTO member;
	
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getCate1() {
		return cate1;
	}
	public void setCate1(String cate1) {
		this.cate1 = cate1;
	}
	public String getCate2() {
		return cate2;
	}
	public void setCate2(String cate2) {
		this.cate2 = cate2;
	}
	public String getGdsThumbImg() {
		return gdsThumbImg;
	}
	public void setGdsThumbImg(String gdsThumbImg) {
		this.gdsThumbImg = gdsThumbImg;
	}
	public String getGdsImg() {
		return gdsImg;
	}
	public void setGdsImg(String gdsImg) {
		this.gdsImg = gdsImg;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	public int getClick() {
		return click;
	}
	public void setClick(int click) {
		this.click = click;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
//	private int seq;
//	private String userName;
//	private String title;
//	private String category;
//	private String grade;
//	private String state;
//	private String image;
//	private String explanation;
//	private String price;
//	private String quantity;
//	private String isAnony;
//	private String click;
//	private Date date;
//	
//	public int getSeq() {
//		return seq;
//	}
//	public void setSeq(int seq) {
//		this.seq = seq;
//	}
//	
//	public String getUserName() {
//		return userName;
//	}
//	public void setUserName(String userName) {
//		this.userName = userName;
//	}
//	public String getTitle() {
//		return title;
//	}
//	public void setTitle(String title) {
//		this.title = title;
//	}
//	public String getCategory() {
//		return category;
//	}
//	public void setCategory(String category) {
//		this.category = category;
//	}
//	public String getGrade() {
//		return grade;
//	}
//	public void setGrade(String grade) {
//		this.grade = grade;
//	}
//	public String getState() {
//		return state;
//	}
//	public void setState(String state) {
//		this.state = state;
//	}
//	public String getImage() {
//		return image;
//	}
//	public void setImage(String image) {
//		this.image = image;
//	}
//	public String getExplanation() {
//		return explanation;
//	}
//	public void setExplanation(String explanation) {
//		this.explanation = explanation;
//	}
//	public String getPrice() {
//		return price;
//	}
//	public void setPrice(String price) {
//		this.price = price;
//	}
//	public String getQuantity() {
//		return quantity;
//	}
//	public void setQuantity(String quantity) {
//		this.quantity = quantity;
//	}
//	public String getIsAnony() {
//		return isAnony;
//	}
//	public void setIsAnony(String isAnony) {
//		this.isAnony = isAnony;
//	}
//	public String getClick() {
//		return click;
//	}
//	public void setClick(String click) {
//		this.click = click;
//	}
//	public Date getDate() {
//		return date;
//	}
//	public void setDate(Date date) {
//		this.date = date;
//	}	
}
