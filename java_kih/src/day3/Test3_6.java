package day3;

public class Test3_6 {

	public static void main(String[] args) {
		
		/* 1부터 10까지의 짝수들의 합을 구하는 예제 */
		
		int i, sum = 0;
		
		// 1
		for(i=2; i<=10; i+=2) {
			//sum += i;
			sum = sum +i;			
		}		
		System.out.println("1부터 10까지의 짝수들의 합 : "+sum);
		
		
		// 2
		for(i=1; i<=5; i++) {
			sum = sum+i*2;
		}
		System.out.println("1부터 10까지의 짝수들의 합 : "+sum);
		
		
		// 3
		for(i=1; i<=10; i++) {
			if(i%2 == 0) {
				sum += i;
			}		
		}
		System.out.println("1부터 10까지의 짝수들의 합 : "+sum);
	
	}

}
