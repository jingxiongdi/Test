package com.exam.vo;


public class Subject {
	//	 ��ĿID
	private int id;
	//	 ��Ŀ��������
	private String main;
	//	 ��Ŀѡ��
	private String  A;
	private String  B;
	private String  C;
	private String  D;
	//	 ��Ŀ��
	private String answer;
	/**
	 * @return the ABCD
	 */
	public void setMain(String s){
		main = s;
	}
	public String getMain(){
		return main;
	}
	public void setId(int i){
		id = i;
	}
	public void setA(String s){
		A = s;
	}
	public void setB(String s){
		B = s;
	}
	public void setC(String s){
		C = s;
	}
	public void setD(String s){
		D = s;
	}
	public int getId(){
		return id;
	}
	public String getA() {
		return A;
	}
	public String getB() {
		return B;
	}
	public String getC() {
		return C;
	}
	public String getD() {
		return D;
	}
	public void setAnswer(String s){
		answer = s;
	}
	/**
	 * @param subjecttype the subjecttype to set
	 */
	public Subject(){
		id  = 0;
	}
	/**
	 * @return the answer
	 */
	public String getAnswer() {
		return answer;
	}
	
	
	
}
