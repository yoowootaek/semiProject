package com.javaclass.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ChartVO {

	int board_Seq;
	String board_Title;
	String board_Category;
	String board_Date;
	
}
