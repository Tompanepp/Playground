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
public class BreakTest {

    public static void main(String[] args) {
        int i = 0, j = 5;
        lab1:
        for (;; i++) {
            for (;; --j) {
                if (i > j) {
                    break lab1;
                }
            }
        }
        System.out.println(" i = " + i + ", j = " + j);
    }
}
