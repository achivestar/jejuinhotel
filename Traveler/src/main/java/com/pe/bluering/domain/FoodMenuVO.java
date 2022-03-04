package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class FoodMenuVO {

	private int idx;
	private String title;
	private String content;
	private String originalFileName;
	private String savedFileName;
	private String division;
	private String regdate;
	private String upddate;
}
