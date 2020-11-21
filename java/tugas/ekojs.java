import java.util.Scanner;
class warung{
	public static void main(String args[]){
		String nama_warung = "Warung RAS";
		String info = "Silahkan jawab dengan 0 untuk keluar, 9 untuk kembali\n";
		String menu[] = {"Ayam penyet","Pecel Lele","Pecel Ayam","Mie Goreng"};
		String nasi[] = {"Nasi Uduk","Nasi putih"};
		String mie[] = {"Sedaap","Indomie"};
		String lvl_pedas[] = {"Ga Pedas","Biasa","Pedas"};
		String req[] = {"Makan di tempat","Bungkus"};
		String minuman[] = {"Es Teh","Es Jeruk","Air Mineral"};
		
		boolean keluar = false;
		boolean kembali = false;
		boolean lanjut = false;
		
		String pelanggan = "";
		int jml_pelanggan = 1;
		String list_pelanggan[] = new String[jml_pelanggan];
		int pilihan[] = new int[]{-1,-1,-1,-1,-1,-1};
		int list_pilihan[][] = new int[jml_pelanggan][pilihan.length];
		String pilih;
		
		Scanner baca;
		
		int cnt = 0;
		keluar:
		while(!keluar){
			pilihan = new int[]{-1,-1,-1,-1,-1,-1};
			System.out.println(nama_warung);
			System.out.println(info);
			System.out.print("Masukkan nama : ");
			
			baca = new Scanner(System.in);
			pilih = baca.nextLine();
			
			pelanggan = pilih;
			lanjut = false;
			while(!lanjut){
				for(int i=0;i<menu.length;i++){
					System.out.println((i+1)+". "+menu[i]);
				}
				System.out.print("Masukkan kode menu : ");
				pilih = baca.next();
				System.out.println("");
				
				boolean next_choice = false;
				
				if(Integer.parseInt(pilih) == 0){
					break keluar;
				}else if(Integer.parseInt(pilih) > 0 && Integer.parseInt(pilih) <= 4){
					pilihan[0] = Integer.parseInt(pilih)-1;
					if((Integer.parseInt(pilih)-1) == 3){
						kembali = false;
						while(!kembali){
							for(int i=0;i<mie.length;i++){
								System.out.println((i+1)+". "+mie[i]);
							}
							System.out.print("Masukkan Mie : ");
							pilih = baca.next();
							
							if(Integer.parseInt(pilih) == 0){
								break keluar;
							}else if(Integer.parseInt(pilih) == 9){
								kembali = true;
							}else if(Integer.parseInt(pilih) > 0 && Integer.parseInt(pilih) <= 2){
								pilihan[1] = -1;
								pilihan[2] = Integer.parseInt(pilih)-1;
								kembali = true;
								next_choice = true;
							}
							System.out.println("");
						}
					}else{
						kembali = false;
						while(!kembali){
							for(int i=0;i<nasi.length;i++){
								System.out.println((i+1)+". "+nasi[i]);
							}
							System.out.print("Masukkan pilihan nasi : ");
							pilih = baca.next();
							
							if(Integer.parseInt(pilih) == 0){
								break keluar;
							}else if(Integer.parseInt(pilih) == 9){
								kembali = true;
							}else if(Integer.parseInt(pilih) > 0 && Integer.parseInt(pilih) <= 2){
								pilihan[1] = Integer.parseInt(pilih)-1;
								pilihan[2] = -1;
								kembali = true;
								next_choice = true;
							}
							System.out.println("");
						}
					}
				}
				
				if(next_choice){
					kembali = false;
					while(!kembali){
						for(int i=0;i<lvl_pedas.length;i++){
							System.out.println((i+1)+". "+lvl_pedas[i]);
						}
						System.out.print("Masukkan level pedas : ");
						pilih = baca.next();
						System.out.println("");
						
						if(Integer.parseInt(pilih) == 0){
							break keluar;
						}else if(Integer.parseInt(pilih) == 9){
							kembali = true;
						}else if(Integer.parseInt(pilih) > 0 && Integer.parseInt(pilih) <= 3){
							pilihan[3] = Integer.parseInt(pilih)-1;
							
							boolean kembali_req = false;
							while(!kembali_req){
								for(int i=0;i<req.length;i++){
									System.out.println((i+1)+". "+req[i]);
								}
								System.out.print("Masukkan request : ");
								pilih = baca.next();
								System.out.println("");
								
								if(Integer.parseInt(pilih) == 0){
									break keluar;
								}else if(Integer.parseInt(pilih) == 9){
									kembali_req = true;
								}else if(Integer.parseInt(pilih) > 0 && Integer.parseInt(pilih) <= 2){
									pilihan[4] = Integer.parseInt(pilih)-1;
									
									boolean kembali_minum = false;
									while(!kembali_minum){
										System.out.print("Ingin memesan minum (y/n) ? ");
										pilih = baca.next();
										System.out.println("");
										if("y".equals(pilih)){
											boolean kembali_pilih = false;
											while(!kembali_pilih){
												for(int i=0;i<minuman.length;i++){
													System.out.println((i+1)+". "+minuman[i]);
												}
												System.out.print("Pilih minuman : ");
												pilih = baca.next();
												
												if(Integer.parseInt(pilih) == 0){
													break keluar;
												}else if(Integer.parseInt(pilih) == 9){
													kembali_pilih = true;
												}else if(Integer.parseInt(pilih) > 0 && Integer.parseInt(pilih) <= 3){
													pilihan[5] = Integer.parseInt(pilih)-1;
													kembali_pilih = true;
													kembali_minum = true;
													kembali_req = true;
													kembali = true;
													lanjut = true;
												}
												System.out.println("");
											}
										}else if("n".equals(pilih)){
											kembali_minum = true;
											kembali_req = true;
											kembali = true;
											lanjut = true;
										}else if(Integer.parseInt(pilih) == 9){
											kembali_minum = true;
										}
									}
								}
							}
						}
					}
				}
			}
			
			System.out.print("Ketik '0' untuk keluar, '9' untuk lanjut : ");
			pilih = baca.next();
			System.out.println("");
			
			if((cnt > jml_pelanggan-1)){
				String tmp_pelanggan[] = new String[jml_pelanggan];
				int tmp_pilihan[][] = new int[jml_pelanggan][pilihan.length];
				tmp_pelanggan = list_pelanggan.clone();
				tmp_pilihan = list_pilihan.clone();
				
				jml_pelanggan++;
				list_pelanggan = new String[jml_pelanggan];
				list_pilihan = new int[jml_pelanggan][pilihan.length];
				
				for(int i=0;i<tmp_pilihan.length;i++){
					list_pelanggan[i] = tmp_pelanggan[i];
					for(int j=0;j<tmp_pilihan[i].length;j++){
						list_pilihan[i][j] = tmp_pilihan[i][j];
					}
				}
				
				list_pelanggan[cnt] = pelanggan;
				list_pilihan[cnt] = pilihan;
			}else{
				list_pelanggan[cnt] = pelanggan;
				list_pilihan[cnt] = pilihan;
			}
			
			if(Integer.parseInt(pilih) == 0){
				keluar = true;
			}else if(Integer.parseInt(pilih) != 9){
				lanjut = false;
				while(!lanjut){
					System.out.print("Ketik '0' untuk keluar, '9' untuk lanjut : ");
					pilih = baca.next();
					System.out.println("");
					
					if(Integer.parseInt(pilih) == 0){
						break keluar;
					}else if(Integer.parseInt(pilih) == 9){
						lanjut = true;
					}
				}
			}
			
			cnt++;
		}
		
		if(list_pelanggan[0] != null && !list_pelanggan[0].isEmpty()){
			System.out.println("Daftar Pelanggan : ");
			for(int i=0;i<list_pilihan.length;i++){
				System.out.println(list_pelanggan[i] + " : ");
				for(int j=0;j<list_pilihan[i].length;j++){
					// System.out.print(list_pilihan[i][j] + " ");
					if(j == 0){
						System.out.print("Menu yang dipilih : " + menu[list_pilihan[i][j]] + " ");
					}else if(j == 1){
						System.out.print(list_pilihan[i][j] != -1?nasi[list_pilihan[i][j]]:"");
					}else if(j == 2){
						System.out.print(list_pilihan[i][j] != -1?mie[list_pilihan[i][j]]:"");
					}else if(j == 3){
						System.out.println("");
						System.out.println("Level kepedasan : " + lvl_pedas[list_pilihan[i][j]]);
					}else if(j == 4){
						System.out.println("Request : " + req[list_pilihan[i][j]]);
					}else if(j == 5){
						System.out.println(list_pilihan[i][j] != -1?"Minum : " + minuman[list_pilihan[i][j]]:"\n");
					}
				}
				System.out.println("");
			}
			System.out.println("\n");
			System.out.println("Silahkan ditunggu...");
		}
	}
}
