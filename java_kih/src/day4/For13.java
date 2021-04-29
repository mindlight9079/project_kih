package day4;

public class For13 {

	public static void main(String[] args) {

		/* 구구단 전체를 출력하는 코드를 작성하세요.
		 **/
				
		
		int i, num;

		for( num =2 ; num<=9 ; num++ ) {
			//num단 출력
			for(i=1; i<=9; i++) {
			System.out.println(num+"x"+i+"=" +(num*i));
			}
		}
		
		
//		내가 작성한 코드
		
//		for(i =2; i<10 ; i++) {
//			for(num=1; num<10; num++) {
//			System.out.println(i+"x"+num+"=" +(i*num));
//			}
//		}
	}

}
