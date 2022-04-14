package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class EtcVO {

	private int idx;
	private String title;
	private String content;
	private String originalFileName1;
	private String originalFileName2;
	private String originalFileName3;
	private String originalFileName4;
	private String originalFileName5;
	private String savedFileName1;
	private String savedFileName2;
	private String savedFileName3;
	private String savedFileName4;
	private String savedFileName5;
	private int count;
	private String view;
	private String regdate;
	private String upddate;
}
