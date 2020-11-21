import java.util.Scanner;
class iseng{
	public static void main(String args[]){
		System.out.println("Hello world");
		/*int a = 12;
		byte b = 3;
		byte hasil;
		
		hasil =(byte) (a+b);
		System.out.println("hasil : "+hasil);
		b += a;
		System.out.println("b : "+b);
		b =(byte) (a+b);
		System.out.println("b : "+b);*/

		System.out.print("Masukkan nama : ");
		Scanner baca = new Scanner(System.in);
		String jawab = baca.next();
		System.out.println("Nama Anda : "+jawab);
		
		if(jawab.trim().equals("ekojs")){
			System.out.println("ok");
		}else{ System.out.println("nok");}
		
		/*int a = 2;
		int b[] = {1,2,3,4};
		System.out.println("a :"+a+" a++ = "+ a++);
		System.out.println("a :"+a+" ++a = "+ ++a);
		System.out.println("tes");

		for(int i=0;i<b.length;i++){
			System.out.println(b[i]);
		}

		int x = 3;
		int y = 4;
		int z = 2;
		System.out.println("Hasil : "+ x+y);
		System.out.println("hasil : "+ (z=x*y));*/

	}
}
