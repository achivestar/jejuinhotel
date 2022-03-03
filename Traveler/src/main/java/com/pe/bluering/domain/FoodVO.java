package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FoodVO {

	private int idx;
	private String title;
	private String content;
	private String originalFileName;
	private String savedFileName;
	private String gubun;
	private String regdate;
	private String upddate;
}
