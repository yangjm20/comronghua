package com.yanghua.gongxiang.domain;

public class Grade {
	

	    private int id;
	    private String gradeNm;
	    private int teacherId;
	    
	    public Grade(int id, String gradeNm, int teacherId) {
			// TODO Auto-generated constructor stub
	    	    super();
	    	    this.setId(id);
	    	    this.setGradeNm(gradeNm);
	    	    this.setTeacherId(teacherId);
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getGradeNm() {
			return gradeNm;
		}

		public void setGradeNm(String gradeNm) {
			this.gradeNm = gradeNm;
		}

		public int getTeacherId() {
			return teacherId;
		}

		public void setTeacherId(int teacherId) {
			this.teacherId = teacherId;
		}
	

}
