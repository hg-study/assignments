package C0;

import java.util.Scanner;

public class C02Star {

	public static void main(String[] args) {
		
		// 다이아몬드 별 찍기
		Scanner sc = new Scanner(System.in);
		int h = sc.nextInt();
		int i = 0;
		int l = 0;
		while (i < h) {
			int j = 0;
			while (j < (h/2) - l) {
				System.out.printf(" ");
				j++;
			}
			int k = 0;
			while (k <= l*2) {
				System.out.printf("*");
				k++;
			}
			if ( i < (h/2)) {
				l++;
			}
			else l--;
			
			System.out.println();
			i++;
		}
		sc.close();
	}

}
