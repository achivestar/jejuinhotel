package com.pe.bluering.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class RoomVO {

	private int idx;
	private String title;
	private String content;
	private String amenity;
	private String price;
	private String roomType;
	private String bedType;
	private String reserveBtn;
	private String reserveLink;
	private String originalFileName1;
	private String originalFileName2;
	private String originalFileName3;
	private String savedFileName1;
	private String savedFileName2;
	private String savedFileName3;
	private String regdate;
	private String upddate;
}
