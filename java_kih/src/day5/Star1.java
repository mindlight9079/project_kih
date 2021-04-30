package day5;

public class Star1 {

	public static void main(String[] args) {
		
		/* *****  K = 1    *=5
		 * *****  K = 2	   *=5
		 * *****  K = 3	   *=5
		 * *****  K = 4	   *=5
		 * *****  K = 5    *=5
		 **/
		
		int i = 0 , k;
		
		for(k=1; k<=5; k++ ) {
			for(i=1; i<=5; i++) {
				System.out.print("*");
			}
			System.out.println();		
		}
		/* * 		k=1  * =
		 * **		k=2  * =
		 * ***		k=3	 * =
		 * ****		k=4	 * =
		 * *****	k=5  * =
		 * */
		System.out.println("---------------------");		

		for(k=1; k<=5; k++) {
			for(i=1; i<=k; i++) {
			System.out.print("*");
			}
		System.out.println();	
		}
		
		
		/* ***** 		k=1  공=4 * = 4
		 * *****		k=2  공=4 * = 4
		 * *****		k=3	 공=4 * = 4
		 * *****		k=4	 공=4 * = 4
		 * *****	    k=5  공=4 * = 4
		 * */
		
		System.out.println("---------------------");	
		
		for(k=1; k<=5; k++ ) {
			for(i=1; i<=4; i++) {
				System.out.print(" ");
			}
			for(i=1; i<=4; i++) {
				System.out.print("*");
			}
			System.out.println();		
		}
	
		/*     *	k=1  공=4	*=1
		 *    **	k=2	 공=3	*=2
		 *   ***	k=3  공=2	*=3
		 *  ****	k=4  공=1	*=4
		 * *****	k=5  공=0	*=5
		 * */
		
		System.out.println("---------------------");	
	
		for(k=1; k<=5; k++) {
			// 공백 출력				
				for(i=1; i<=5-k; i++) {
					System.out.print(" ");
				}
			// 별 출력
				for(i=1; i<=k; i++) {
					System.out.print("*");
				}			
			// 엔터
				System.out.println();
		}
		
		/*     *
		 *    ***
		 *   *****
		 *  ******* 
		 * *********   
		 **/
		/*  ********* 
		 *   *******
		 *    ***** 
		 *     ***
		 *      *
		 */
	
	}
}