abstract class Superhero {
    String superPowers;

    void setSuperPowers(String superPowers){
        this.superPowers = superPowers;
    }

    abstract void displayPower();
}

class UnderwaterSuperHero extends Superhero{
    void displayPower(){
        System.out.println("Communicate with sea creatures...");
        System.out.println("Fast Swim");
    }
}

class FlayingSuperHero extends Superhero{
    void displayPower(){
        System.out.println("Fly .... ");
    }
}

class Hero {
    public static void main(String[] args) {
        Superhero s = new UnderwaterSuperHero();
        s.displayPower();
        s = new FlayingSuperHero();
        s.displayPower();
    }       
}