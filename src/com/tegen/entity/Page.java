package com.tegen.entity;

public class Page {
	
	private int page;
	private int rows;
	private int startindex;

	private String order;
	private String sort;

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public int getStartindex() {
		return (page - 1) * rows;
	}

	public void setStartindex(int startindex) {
		this.startindex = startindex;
	}
}