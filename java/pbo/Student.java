public class Student extends Person {
    
    public Student(){
        // System.out.println("Inside Student:Constructor");
        super("Budi lagi","Jakarta");
    }
    
    public static void main(String[] args) {
        Student budi = new Student();
        budi.panggil();
        System.out.println(budi.name);
    }
    
    public void panggil() {
        System.out.println(super.getName());
        System.out.println(super.getAddress());
    }
}