package etc;

public class StudentTest {

	public static void main(String[] args) {		
		Student st = new Student(1,1,1,"홍길동");
		st.print();
	}
}

class Student {
	private int year;
	private int group;
	private int num;
	private String name;
	public Student() {}
	public Student(int year, int group, int num, String name) {
		this.year = year;
		this.group = group;
		this.num = num;
		this.name = name;
	}
	public void print() {
		System.out.println(year+"학년 "+group+"반 "+num+"번 "+name);
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getGroup() {
		return group;
	}
	public void setGroup(int group) {
		this.group = group;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
