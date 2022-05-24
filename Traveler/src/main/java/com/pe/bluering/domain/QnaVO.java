package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class QnaVO {
	
	private int idx;
	private String title;
	private String question;
	private String yn;
	private String name;
	private int pwd;
	private String secret;
	private String tf;
	private int cnt;
	private String regdate;
	private String upddate;

}
