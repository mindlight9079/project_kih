package day4;

import java.util.Scanner;

public class For14 {

	public static void main(String[] args) {
		/* 정수 num가 소수인지 아닌지 판별하는 코드를 작성하세요
		 * 소수 : 약수가 2개인 수
		 * 소수 : 2 3 5 7 11 13 17 ...
		 * 반복횟수 : i는 1부터 i는 num보다 작거나 같을 때 까지 i는 1씩 증가
		 * 규칙성 : i가 num의 약수이면 약수의 갯수 cnt 1증가
		 * 		=> num을 i로 나누었을 때 나머지가 0과 같다면 cnt를 1증가 
		 * 반복문 종료 후 : 약수의 갯수가 2개이면 소수라고 출력하고
		 * 		 		 아니면 소수가 아님이라고 출력.
		 */
		
		
		Scanner scan = new Scanner(System.in);
		System.out.println("정수를 입력해주세요 : ");
		
		
		int num = scan.nextInt();
		int i, cnt=0;
		
		for(i=1; i<=num; i++) {
			if(num%i == 0 ) {
				cnt++;
			}
		}		
		if(cnt == 2) {
			System.out.println(num+"는 소수입니다.");
		} else {
			System.out.println(num+"는 소수가 아닙니다.");
		}
		
		scan.close();
	}

}
