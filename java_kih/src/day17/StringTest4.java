package day17;

import java.util.Scanner;

public class StringTest4 {

	public static void main(String[] args) {
		
		System.out.println("제 이름은 홍길동입니다.".replace("홍길동","임꺽정"));
		
		/* 문자열 C를 입력받고, 해당 단어에 문자열 A와 문자열 B를 입력받아
		 * 문자열 C에 있는 문자열 A를 문자열 B로 바꾸는 코드를 작성하세요. */
		Scanner scan = new Scanner(System.in);
		System.out.println("단어를 입력하세요 : ");
		String strC = scan.next();
		System.out.println("수정할 곳의 단어와 수정될 단어를 입력하세요 (예: 자바 Java) : ");
		String strA = scan.next();
		String strB = scan.next();
		if(strC != null && strC.indexOf(strA) != -1) {
			strC = strC.replace(strA, strB);
			System.out.println("바뀐 단어 : "+strC);
		}else {
			System.out.println("단어를 바꿀 수 없습니다.");
		}
		scan.close();
		
	}

}
