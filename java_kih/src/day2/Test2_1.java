package day2;

import java.util.Scanner;

public class Test2_1 {

	public static void main(String[] args) {
		/* 국어, 영어, 수학 성적을 입력받아 출력받아보세요.
		 * 단, 성적은 0~100점 사이의 실수*/
		
		double kor, eng, math; // 타입이 동일한 경우 ,를 통해 한꺼번에 선언 가능.
		System.out.print("국어, 영어, 수학 성적을 입력하세요 : ");
		
		Scanner scan = new Scanner(System.in);
		
		kor = scan.nextDouble();
		eng = scan.nextDouble();
		math = scan.nextDouble();
		
		System.out.println("국어 :"+kor+"점");
		System.out.println("영어 :"+eng+"점");
		System.out.println("수학 :"+math+"점");		
		
		scan.close();
		
//		Scanner scan = new Scanner(System.in);
//		
//		System.out.println("국어 성적을 입력해주세요 : ");
//		double korScore = scan.nextDouble();
//		System.out.println("입력받은 점수 : " + korScore);
//		
//		System.out.println("영어 성적을 입력해주세요 : ");
//		double engScore = scan.nextDouble();
//		System.out.println("입력받은 점수 : "+ engScore);
//		
//		System.out.println("수학 성적을 입력해주세요 : ");
//		double mathScore = scan.nextDouble();
//		System.out.println("입력받은 점수 : "+ mathScore);
//		
//		scan.close();
	}

}
