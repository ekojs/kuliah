class Demo{
    static int a = 0;
    static void staticMethod(int i){
        System.out.println(i);
    }

    static {
        System.out.println("This is a static block.");
        a+=1;
    }
}