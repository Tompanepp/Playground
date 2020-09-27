/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StandardTest2;

/**
 *
 * @author t2p
 */
interface Flyer {
}

class Bird implements Flyer {
}

class Eagle extends Bird {
}

class Bat {
}

public class InstanceOf {

    public static void main(String[] args) {
        Flyer f = new Eagle();
        Eagle e = new Eagle();
        Bat b = new Bat();
        if (f instanceof Flyer) {
            System.out.println("f is a Flyer");
        }
        if (e instanceof Bird) {
            System.out.println("e is a Bird");
        }
        if (b instanceof Bird) {
            System.out.println("f is a Bird");
        }
    }
}
