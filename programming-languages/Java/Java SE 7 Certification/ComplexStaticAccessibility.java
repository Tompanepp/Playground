/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author t2p
 */
class ComplexStaticAccessibility {

    int value = 1;
    ComplexStaticAccessibility link;

    public ComplexStaticAccessibility(int val) {
        this.value = val;
    }

    public static void main(String[] args) {
        final ComplexStaticAccessibility a = new ComplexStaticAccessibility(5);
        ComplexStaticAccessibility b = new ComplexStaticAccessibility(10);
        a.link = b;
        b.link = setIt(a, b);
        System.out.println(a.link.value + " " + b.link.value);
    }

    public static ComplexStaticAccessibility setIt(final ComplexStaticAccessibility x, final ComplexStaticAccessibility y) {
        x.link = y.link;
        return x;
    }
}
