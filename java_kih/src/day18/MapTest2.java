package day18;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Scanner;

public class MapTest2 {

	public static void main(String[] args) {
		/* 다음 두 기능을 가진 프로그램을 작성하세요.
		 * 1. 회원가입
		 * 2. 로그인
		 * 3. 종료
		 * 예시
		 * 1. 회원가입
		 * 2. 로그인
		 * 3. 종료
		 * 메뉴 선택 : 1
		 * 회원가입
		 * 아이디 : abc123
		 * 비밀번호 : abc123
		 * 회원가입되었습니다.
		 * 1. 회원가입
		 * 2. 로그인
		 * 3. 종료
		 * 메뉴 선택 : 1
		 * 아이디 : abc123
		 * 이미 가입된 회원입니다.
		 * 1. 회원가입
		 * 2. 로그인
		 * 3. 종료
		 * 메뉴 선택 : 2
		 * 아이디 : abc123
		 * 비밀번호 : abc123
		 * 로그인 성공 
		 * 1. 회원가입
		 * 2. 로그인
		 * 3. 종료
		 * 메뉴 선택 : 2
		 * 아이디 : abc123
		 * 비밀번호 : 1234
		 * 로그인 실패
		 */
		
		//반복문 
			//메뉴 출력
			//메뉴 입력
			//입력받은 메뉴에 따른 기능
				//회원가입 기능
					//아이디 입력
					//가입된 아이디가 아니면 비밀번호 입력 후 아이디와 비밀번호를 입력
					//가입된 아이디이면 이미 가입된 아이디라고 출력
				//로그인 기능
					//아이디 입력
					//비밀번호 입력
					//아이디와 비밀번호가 일치하는지 확인하여 같으면 로그인 성공
					//다르면 로그인 실패라고 출력
				//종료
		Scanner scan = new Scanner(System.in);
		HashSet<String> set = new HashSet<String>();
		HashMap<String, String> map = new HashMap<String, String>();
		
		int menu;
		do {
			
			System.out.println("1. 회원가입");
			System.out.println("2. 로그인");
			System.out.println("3. 종료");
			System.out.println("==========");
			System.out.println("메뉴를 입력해주세요 : ");
			menu = scan.nextInt();
			
			switch(menu) {
			case 1 :    
				System.out.println("회원가입");
				System.out.println("아이디 : ");
				String id = scan.next();
					if(set.contains(id)) {
						System.out.println("이미 가입된 회원입니다.");
						break;
					}
				System.out.println("비밀번호 : ");
				String pw = scan.next();
				set.add(id);
				set.add(pw);
				System.out.println("회원가입되었습니다.");
				
				break;
					
			case 2: 
				System.out.println("로그인");
				System.out.println("아이디 입력 : ");
				String id2 = scan.next();
				System.out.println("비밀번호 입력 : ");
				String pw2 = scan.next();
				map.put(id2, pw2);
				if(set.contains(id2) && set.contains(pw2)){
					System.out.println("로그인 성공");
				} else {
					System.out.println("로그인 실패");
				}
				break;
			case 3 :
				System.out.println("종료");
			}
		} while(menu != 3);
		
		scan.close();
	}

}
