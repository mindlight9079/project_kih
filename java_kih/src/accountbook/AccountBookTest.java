package accountbook;

import java.util.Scanner;

public class AccountBookTest {
	

	public static void main(String[] args) {
		AccountBookProgram abp = new AccountBookProgram();
		Scanner scan = new Scanner(System.in);
		int menu = 0;
		int subMenu = 0;
		

		do {
			abp.printMenu();
			menu = scan.nextInt();
			switch(menu) {
			case 1 : abp.insert();   break;
			case 2 : abp.update();   break;
			case 3 : abp.delete();   break;
			case 4 : 
				abp.printSubMenu();
				subMenu = scan.nextInt();
				switch(subMenu) {
				case 1 : abp.printListDetail();		break;
				case 2 : abp.printItemListSimple(); break;
				case 3 : abp.printItem();   		break;
				case 4 : abp.printTotal();  		break;
				default :
					System.out.println("잘못된 메뉴"); 
				}		
				break;
			case 5 :  
				System.out.println("프로그램 종료"); break;
			default :
				System.out.println("잘못된 메뉴");			
			}
		}while(menu!=5);
		scan.close();
		
	}
	
}



/* 클래스명 : AccountBook
 *    - 수입 내역, 지출 내역을 관리하기 위한 가계부 클래스
 */

/* 클래스명 : Item
 *    - 수입/지출 내역을 나타내는 클래스
 */


