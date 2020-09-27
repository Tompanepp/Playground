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
//package p;

private class TC extends java.util.HashMap {

    public TC() {
        super(100);
        System.out.println("TC created");
    }
}

public class TestClass extends TC {

    public TestClass() {
        System.out.println("TestClass created");
    }

    public static void main(String[] args) {
        new TestClass();
    }
}
