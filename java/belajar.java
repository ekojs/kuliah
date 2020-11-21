
class belajar{
	public static void main(String args[]){
		int[] data = {12,11,1,4,5};
		for(int i=0;i<data.length;i++){
			System.out.println(data[i]);
			if(data[i] == 4){
				System.out.println("ini empat");
			}else if(data[i] == 11){
				System.out.println("ini sebelas");
			}

			switch(data[i]){
				case 5:
					System.out.println("ini 5");break;
			}
		}
	}
}
