package day5;

import java.util.Scanner;

public class Test5_5 {

	public static void main(String[] args) {

		/* 1부터 10사이의 랜덤한 수를 6개 생성하여 배열에 저장한 후 출력 코드를 작성하세요.
		 * 단, 생성된 랜덤의 수는 중복될 수 있음.*/
		
		/* 반복문(6번)
		 * 	랜덤으로 1~10사이의 수 생성
		 *  생성된 랜덤한 수를 배열에 저장
		 */
		
		
		int min = 1, max = 10;
		int i, r;
		int [] arr = new int[6];				
		for (i=0; i<arr.length; i++) { 
			 r = (int)(Math.random()*(max-min+1)+min);	
			 arr[i] =r;
		}
		
		//반복문(6번)
			// 배열 값 출력
		for(i=0; i<arr.length; i++) {
			System.out.print(arr[i]+" ");
		}

	}

}
