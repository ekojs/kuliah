import java.util.Scanner;
import javax.swing.*;
class upm{
    public static void main(String args[]){
        Scanner baca = new Scanner(System.in);
        int x;
        String[] nama = {"eko","ridho","ifa"};

        System.out.print("Masukkan x: ");
        x = baca.nextInt();
        for(int i=0;i<x;i++){
            for(int k=0;k < (x-i-1);k++){
                System.out.print(" ");
            }
            for(int j=0;j<=i;j++){
                System.out.print("*");
            }
            System.out.println();
        }

        for(int i=0;i<nama.length;i++){
            System.out.print(nama[i]+"\t");
        }
    }
}