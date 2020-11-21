class ConstructorDemo {
    private int data;
    private Integer datax;
    private Integer datay;

    public ConstructorDemo(){
        data = 100;
    }

    ConstructorDemo (Integer data){
        this.data = data;
    }

    ConstructorDemo (Integer data1, Integer data2){
        datax = data1;
        datay = data2;
    }

    public static void main(String[] args) {
        ConstructorDemo c1 = new ConstructorDemo();
        System.out.println(c1.data);
        System.out.println(c1.datax);
        System.out.println(c1.datay);
    }
}