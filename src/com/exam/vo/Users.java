package com.exam.vo;

public class Users implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//Fields
	private String name;
	private String password;
	private int id;
	private String sex;		
	private String tel;			
	private String email;
	private String sort;
	private int    score;
	       
	public Users(){	
	}
	public int getScore(){
		return this.score;
	}
	public void setScore(int s){
		this.score = s;
	}
	public int getId(){
		return this.id;
	}
	public void setId(int i){
		this.id=i;
	}
	public String getSort(){
		return this.sort;
	}
	public void setSort(String s){
		this.sort = s;
	}
	public String getName(){
		return this.name;
	}
	public void setName(String name){
		this.name = name;
	}
	public void setPassword(String password){
		this.password=password;
	}
	public String getPassword(){
		return this.password;
	}
	public String getSex() {
		return this.sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTel() {
		return this.tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public String getEmail() {
		return this.email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}

