package com.jihun.cafe.goods.model.dto;

public class MgGoodsTypeDTO {
 
	private int no;
	private String name;
	
	public MgGoodsTypeDTO() {
		
	}

	public MgGoodsTypeDTO(int no, String name) {
		super();
		this.no = no;
		this.name = name;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "MgGoodsTypeDTO [no=" + no + ", name=" + name + "]";
	}
	
}
