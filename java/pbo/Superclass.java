class Superclass {
    void display(int n){
        System.out.println("Super : "+n);
    }
}

class Subclass extends Superclass {
    void display(int k){
        System.out.println("Sub : "+k);
    }
}

class OverrideDemo {
    public static void main(String[] args) {
        Subclass SubObj = new Subclass();
        Superclass SuperObj = new Superclass();
        SubObj.display(3);

        ((Superclass) SuperObj).display(4);
        (new Superclass()).display(10);

        Superclass s = new Superclass();
        s.display(13);
    }
}