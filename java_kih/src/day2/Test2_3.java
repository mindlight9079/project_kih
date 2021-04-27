package day2;

import java.util.Scanner;

public class Test2_3 {

	public static void main(String[] args) {

		/* 국어 성적을 입력받고 국어 과목을 패스했는지 안했는지 확인하는 코드를 작성하세요.
		 * 국어 성적이 60점 미만이면 Fail, 국어 성적이 60점 이상이면 Pass. 
		 */
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("국어 성적을 입력하세요 : ");
		int kor = scan.nextInt();
		
		System.out.println("국어 과목을 패스했습니까?"+ (kor>=60));
		
		String result = kor>=60 ? "Pass" : "Fail";
		System.out.println("국어 과목을 패스했습니까?" + result);
		
		
		
//		내가 작성한 답.
//		double kor;
//		
//		Scanner scan = new Scanner(System.in);
//		System.out.print("국어 성적을 입력하세요 : ");
//		
//		kor = scan.nextDouble();
//		
//		String result = (kor>=60) ? "Pass" : "Fail";
//		
//		System.out.println(kor+"점은 "+result);
//				
		
		
		/*국어 성적이 A학점인지 아닌지를 판별하는 코드를 작성하세요.
		 * A학점은 90점이상 100점 이하
		 * 90<=성적<=100(x)
		 * 90<=성적 && 성적<=100(o)
		 */
		
		boolean result2 = 90<=kor && kor<=100;
		System.out.println("국어 성적인 A학점인가? "+ result2);
		
// 		내가 작성한 답.		
//		char result2 = kor>=90 && kor<=100 ? 'A' : ' ' ;
//		System.out.println(result2);
//		
//		System.out.println(kor>=90 && kor<=100);
		
		
		/*조건선택연산자를 통해 국어 성적의 학점을 출력하는 코드를 작성하세요.*/
		
		String result3 =  90<= kor && kor <=100  ? "A" : (
				          80<= kor && kor < 90   ? "B" : (
				          70<= kor && kor<80 ? "C" : (
				          60<= kor && kor<70 ? "D" : "F")));	
		
		System.out.println("국어 성적 " +result3);
				        		   
				      scan.close();
		
	}

}
