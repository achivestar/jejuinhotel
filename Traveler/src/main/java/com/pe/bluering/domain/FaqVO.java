package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class FaqVO {

	private int idx;
	private String question;
	private String answer;
	private String regdate;
	private String upddate;
}
