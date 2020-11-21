class tes extends motor {
	public static void main(String args[]) {
		motor budi = new motor();
		budi.setMerk("Honda");
		System.out.println(budi.getMerk());
		System.out.println(motor.tipe);
		motor.tipe = "berubah";
		System.out.println(motor.tipe);
	}
}
