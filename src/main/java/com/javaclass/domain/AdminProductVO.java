package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class AdminProductVO {
	
	String account_Id;
	int product_Seq;
	String product_Name;
	String product_MainImg;
	String product_BrandImg;
	String product_SubImg;
	String product_realMainImg;
	String product_realBrandImg;
	String product_realSubImg;
	String product_Category;
	int product_Vol;
	String product_Content;
	String product_ModelName;
	String product_ShortContent;
	int product_Price;
	String product_Content2;
	String product_PlusProduct;
	String product_Date;

	MultipartFile product1_File;
	MultipartFile product2_File;
	MultipartFile product3_File;

	public MultipartFile getProduct1_File() {
		return product1_File;
	}

	public void setProduct1_File(MultipartFile product1_File) {
		this.product1_File = product1_File;
		// 업로드 파일 접근
		if (!product1_File.isEmpty()) { // 파일이 비어있는게 아니라면
			this.product_MainImg = product1_File.getOriginalFilename(); // 파일명
			// 실제 저장된 파일명 만들기
			// 사람들이 중복되는 이름을 많이 사용하니까 같은 파일명 저장을 눌러도
			// 시스템 적으로 다른 이름으로 저장함
			UUID uuid = UUID.randomUUID();
			product_realMainImg = uuid.toString() + "_" + product_MainImg;

			// ***********************************************
			// 해당 경로로 변경
			// 저장 : File - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\springEC\\webwork\\05_semiProject\\src\\main\\webapp\\resources\\upload\\"
					+ product_realMainImg);

			try {
				product1_File.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}

	// -----------------------------------------------
	public MultipartFile getProduct2_File() {
		return product2_File;
	}

	public void setProduct2_File(MultipartFile product2_File) {
		this.product2_File = product2_File;
		// 업로드 파일 접근
		if (!product2_File.isEmpty()) { // 파일이 비어있는게 아니라면
			this.product_BrandImg = product2_File.getOriginalFilename(); // 파일명
			// 실제 저장된 파일명 만들기
			// 사람들이 중복되는 이름을 많이 사용하니까 같은 파일명 저장을 눌러도
			// 시스템 적으로 다른 이름으로 저장함
			UUID uuid = UUID.randomUUID();
			product_realBrandImg = uuid.toString() + "_" + product_BrandImg;

			// ***********************************************
			// 해당 경로로 변경
			// 저장 : File - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\springEC\\webwork\\05_semiProject\\src\\main\\webapp\\resources\\upload\\"
					+ product_realBrandImg);

			try {
				product2_File.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}

	// -----------------------------------------------
	public MultipartFile getProduct3_File() {
		return product3_File;
	}

	public void setProduct3_File(MultipartFile product3_File) {
		this.product3_File = product3_File;
		// 업로드 파일 접근
		if (!product3_File.isEmpty()) { // 파일이 비어있는게 아니라면
			this.product_SubImg = product3_File.getOriginalFilename(); // 파일명
			// 실제 저장된 파일명 만들기
			// 사람들이 중복되는 이름을 많이 사용하니까 같은 파일명 저장을 눌러도
			// 시스템 적으로 다른 이름으로 저장함
			UUID uuid = UUID.randomUUID();
			product_realSubImg = uuid.toString() + "_" + product_SubImg;

			// ***********************************************
			// 해당 경로로 변경
			// 저장 : File - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\springEC\\webwork\\05_semiProject\\src\\main\\webapp\\resources\\upload\\"
					+ product_realSubImg);

			try {
				product3_File.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}
	
	public String getAccount_Id() {
		return account_Id;
	}

	public void setAccount_Id(String account_Id) {
		this.account_Id = account_Id;
	}

	
	public int getProduct_Seq() {
		return product_Seq;
	}

	public void setProduct_Seq(int product_Seq) {
		this.product_Seq = product_Seq;
	}

	public String getProduct_Name() {
		return product_Name;
	}

	public void setProduct_Name(String product_Name) {
		this.product_Name = product_Name;
	}

	public String getProduct_MainImg() {
		return product_MainImg;
	}

	public void setProduct_MainImg(String product_MainImg) {
		this.product_MainImg = product_MainImg;
	}

	public String getProduct_BrandImg() {
		return product_BrandImg;
	}

	public void setProduct_BrandImg(String product_BrandImg) {
		this.product_BrandImg = product_BrandImg;
	}

	public String getProduct_SubImg() {
		return product_SubImg;
	}

	public void setProduct_SubImg(String product_SubImg) {
		this.product_SubImg = product_SubImg;
	}

	public String getProduct_realMainImg() {
		return product_realMainImg;
	}

	public void setProduct_realMainImg(String product_realMainImg) {
		this.product_realMainImg = product_realMainImg;
	}

	public String getProduct_realBrandImg() {
		return product_realBrandImg;
	}

	public void setProduct_realBrandImg(String product_realBrandImg) {
		this.product_realBrandImg = product_realBrandImg;
	}

	public String getProduct_realSubImg() {
		return product_realSubImg;
	}

	public void setProduct_realSubImg(String product_realSubImg) {
		this.product_realSubImg = product_realSubImg;
	}

	public String getProduct_Category() {
		return product_Category;
	}

	public void setProduct_Category(String product_Category) {
		this.product_Category = product_Category;
	}

	public int getProduct_Vol() {
		return product_Vol;
	}

	public void setProduct_Vol(int product_Vol) {
		this.product_Vol = product_Vol;
	}

	public String getProduct_Content() {
		return product_Content;
	}

	public void setProduct_Content(String product_Content) {
		this.product_Content = product_Content;
	}

	public String getProduct_ModelName() {
		return product_ModelName;
	}

	public void setProduct_ModelName(String product_ModelName) {
		this.product_ModelName = product_ModelName;
	}

	public String getProduct_ShortContent() {
		return product_ShortContent;
	}

	public void setProduct_ShortContent(String product_ShortContent) {
		this.product_ShortContent = product_ShortContent;
	}

	public int getProduct_Price() {
		return product_Price;
	}

	public void setProduct_Price(int product_Price) {
		this.product_Price = product_Price;
	}

	public String getProduct_Content2() {
		return product_Content2;
	}

	public void setProduct_Content2(String product_Content2) {
		this.product_Content2 = product_Content2;
	}

	public String getProduct_PlusProduct() {
		return product_PlusProduct;
	}

	public void setProduct_PlusProduct(String product_PlusProduct) {
		this.product_PlusProduct = product_PlusProduct;
	}

	public String getProduct_Date() {
		return product_Date;
	}

	public void setProduct_Date(String product_Date) {
		this.product_Date = product_Date;
	}

}
