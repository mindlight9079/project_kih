package day10_1;

import day10.A;
import day10.B;
import day10.C;
import day10.D;
import day10.ClassEx1; // day10 패키지에 있는 클래스 ClassEx1을 가져오려 한다.

public class ClassEx2 {

	public static void main(String[] args) {
		A a = new A();
		a.num = 10;		//public이기 때문에 에러가 발생하지 않음
		B b = new B();
		//b.num = 10;		//protected : 클래스 B와 ClassEx2는 다른 패키지에 있기 때문에 에러 발생하지 않음
		C c = new C(); 	
		//c.num = 10;     //디폴트 : 클래스 C와 ClassEx2은 다른 패키지에 있기 때문에 에러 발생하지 않음
		D d = new D();
		//d.num = 10; //에러 발생 : num의 접근제한자가 private이어서
	}

}
