package day3;

public class For5 {

	public static void main(String[] args) {

		/* 1부터 5까지의 합을 구하는 예제
		 * 반복횟수 : i는 1부터 5까지 1씩 증가 
		 * 규칙성 : sum = sum + i를 실행 (sum+=i)
		 * 		 sum0 =0
		 * i=1	 sum1 = sum+1
		 * i=2   sum2 = sum+2
		 * i=3   sum3 = sum+3
		 * i=4	 sum4 = sum+4
		 * i=5	 sum5 = sum+5
		 * */

		int i , sum=0;
		
		for(i=1; i<=5; i++) {
			sum += i;
		}
		System.out.println("1부터 5까지의 합 : " + sum);	
		
	}

}
