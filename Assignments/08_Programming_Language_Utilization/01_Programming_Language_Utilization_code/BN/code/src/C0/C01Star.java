package C0;

import java.util.Scanner;

public class C01Star {

	public static void main(String[] args) {
		
		
		// 삼각형 별 찍기
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int i = 0;
		while (i < n) {
			int j = 0;
			while (j < n - (i+1)) {
				System.out.printf(" ");
				j++;
			}
			int k = 0;
			while (k < 2*i + 1) {
				System.out.printf("*");
				k++;
			}
			System.out.println();
			i++;
		}
		sc.close();

	}

}
