package day4;

public class For12 {

	public static void main(String[] args) {
	
		/* 하나의 *를 이용하여 다음과 같이 출력되도록 작성하세요.
		 * *****
		 * *****
		 * *****
		 * *****
		 * *****
		 */
		
		int i, k;
		// *를 이용하여 *****
		for (k=1; k<=5; k++) {
			for(i=1; i<6 ; i++) {
			System.out.print("*");
			}
			System.out.println();
		}
	}
	
}
