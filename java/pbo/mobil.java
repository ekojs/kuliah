public class mobil implements speeds{
    public static void main(String[] args) {
        mobil mob = new mobil();
        mob.tambah();
        mob.tambah();
        mob.tambah();
    }
    
    public void tambah() {
        System.out.println("naik gigi");
    }

    public void tambah(String lari) {
        System.out.println(lari);
    }

    public void kurang() {
        System.out.println("turun gigi");
    }
}

class sedan {
    public static void main(String[] args) {
        mobil mobilku = new mobil();
        mobilku.tambah();
        mobilku.kurang();
        mobilku.tambah("lari bro");
    }
}