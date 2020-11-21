import java.util.Scanner;
/**
 * Tugas 1 Pemrograman Berorientasi Objek
 * 
 * Kelas X5I R739
 * @author Eko Junaidi Salam (2017 4357 9015) <eko_junaidisalam@live.com>
 */
class tugas1 {
    public static void main(String[] args) {
        int max;
        Scanner baca = new Scanner(System.in);
        System.out.println("Tampilkan deret ke - 1.");
        System.out.print("Masukkan batas max : ");
        max = baca.nextInt();
        
        tugas1 tes = new tugas1();
        for(int i=1;i<=max;i++){
            System.out.print(tes.deret1(i) + " ");
        }
        
        System.out.println("\n\nTampilkan deret ke - 2.");
        tes.deret2(max);

        System.out.println("\n\nAngka "+max+" adalah "+tes.status(max)+".");
    }

    public int deret1(int max) {
        if(max <= 0){
            System.out.println("Nilai batas harus lebih dari 0.");
            return 0;
        }else if(max == 1){
            return 1;
        }else if(max == 2){
            return 2;
        }else{
            return deret1(max-1) + deret1(max-2);
        }
    }

    public int deret2(int max) {
        if(max <= 0){
            System.out.println("Nilai batas harus lebih dari 0.");
            return 0;
        }else if(max == 1){
            System.out.print("1 ");
            return 1;
        }else{
            int hasil = 2*deret2(max-1);
            System.out.print(hasil+" ");
            return hasil;
        }
    }

    public String status(int angka) {
        return (angka%2==0?"Genap":"Ganjil");
    }
}