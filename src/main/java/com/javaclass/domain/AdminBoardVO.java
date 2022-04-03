package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class AdminBoardVO {

	String board_Seq;
	String board_Title;
	String board_Password;
	String board_Category;
	String board_Content;
	String board_MainImg;
	String board_RealMainImg;
	String board_Content2;
	String board_Date;
	String account_Id;

	MultipartFile board_File;
	// *************************************************

	public MultipartFile getBoard_File() {
		return board_File;
	}

	public void setBoard_File(MultipartFile board_file) {
		this.board_File = board_file;
		// 업로드 파일 접근
		if (!board_File.isEmpty()) { // 파일이 비어있는게 아니라면
			this.board_MainImg = board_File.getOriginalFilename(); // 파일명
			// 실제 저장된 파일명 만들기
			// 사람들이 중복되는 이름을 많이 사용하니까 같은 파일명 저장을 눌러도
			// 시스템 적으로 다른 이름으로 저장함
			UUID uuid = UUID.randomUUID();
			board_RealMainImg = uuid.toString() + "_" + board_MainImg;

			// ***********************************************
			// 해당 경로로 변경
			// 저장 : File - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
			File f = new File("C:\\springEC\\webwork\\05_semiProject\\src\\main\\webapp\\resources\\upload\\"
					+ board_RealMainImg);

			try {
				board_File.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}

	public String getBoard_Seq() {
		return board_Seq;
	}

	public void setBoard_Seq(String board_Seq) {
		this.board_Seq = board_Seq;
	}

	public String getBoard_Title() {
		return board_Title;
	}

	public void setBoard_Title(String board_Title) {
		this.board_Title = board_Title;
	}

	public String getBoard_Password() {
		return board_Password;
	}

	public void setBoard_Password(String board_Password) {
		this.board_Password = board_Password;
	}

	public String getBoard_Category() {
		return board_Category;
	}

	public void setBoard_Category(String board_Category) {
		this.board_Category = board_Category;
	}

	public String getBoard_Content() {
		return board_Content;
	}

	public void setBoard_Content(String board_Content) {
		this.board_Content = board_Content;
	}

	public String getBoard_MainImg() {
		return board_MainImg;
	}

	public void setBoard_MainImg(String board_MainImg) {
		this.board_MainImg = board_MainImg;
	}

	public String getBoard_RealMainImg() {
		return board_RealMainImg;
	}

	public void setBoard_RealMainImg(String board_RealMainImg) {
		this.board_RealMainImg = board_RealMainImg;
	}

	public String getBoard_Content2() {
		return board_Content2;
	}

	public void setBoard_Content2(String board_Content2) {
		this.board_Content2 = board_Content2;
	}

	public String getBoard_Date() {
		return board_Date;
	}

	public void setBoard_Date(String board_Date) {
		this.board_Date = board_Date;
	}

	public String getAccount_Id() {
		return account_Id;
	}

	public void setAccount_Id(String account_Id) {
		this.account_Id = account_Id;
	}

}
