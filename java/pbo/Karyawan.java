class Karyawan{
	private int no;
	private String nama;
	private String gol;
	private double gaji;

	public double tot_gaji(){
		if("A" == this.gol){
			return 500000 + this.gaji;
		}else if("B" == this.gol){
			return 250000 + this.gaji;
		}else{
			return 100000 + this.gaji;
		}
	}
	public void detail(){
		System.out.println(this.no+" "+this.nama+" "+this.tot_gaji());
	}

	public void setNo(int no){this.no = no;}
	public void setNama(String nama){this.nama=nama;}
	public void setGol(String gol){this.gol=gol;}
	public void setGaji(double gaji){this.gaji=gaji;}
}
