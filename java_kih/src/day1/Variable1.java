package day1;

public class Variable1 {

	public static void main(String[] args) {
		//정수형 변수 선언		
		//변수타입 변수명
		byte num1 = 1;
		short num2 = 32767;
		int num3 = 2147483647;
		long num4 = 2147483648L; // 숫자가 int범위보다 클때, long 타입 숫자 뒤에는 L을 붙여야 한다.
		char ch1 = '한';
		int num5 = 0b111; //정수 앞에 0b를 붙이면 2진수, 2진수 111 = 10진수 7
		int num6 = 0111; //정수 앞에 0을 붙이면 8진수, 8진수 111 = 10진수 73
		int num7 = 0x111; //정수 앞에 0x를 붙이면 16진수, 16진수 111 =273
		int num8 = 111; //정수 앞에 아무것도 안붙이면 10진수 
	
		System.out.println(num5); //7
		System.out.println(num6); //73
		System.out.println(num7); //273
		System.out.println(num8); //111
		
		float dnum1 = 1.12345678901234567f;
		double dnum2 = 1.12345678901234567;
		
		System.out.println(dnum1);
		System.out.println(dnum2);
		
		boolean stop = true;
		System.out.println(stop);
		
		String str = "Hello"; //String은 일반 변수가 아닌 클래스다. 문자열을 관리.
		System.out.println(str);
	
	}

}
 