package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NewsVO {

	private int idx;
	private String title;
	private String content;
	private String writer;
	private String thumburl;
	private String regdate;
	private String upddate;
	private int view;
}
