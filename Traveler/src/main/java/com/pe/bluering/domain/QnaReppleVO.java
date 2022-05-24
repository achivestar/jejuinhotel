package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class QnaReppleVO {

	private int idx;
	private int bno;
	private String name;
	private String answer;
	private String regdate;
	private String upddate;
}
