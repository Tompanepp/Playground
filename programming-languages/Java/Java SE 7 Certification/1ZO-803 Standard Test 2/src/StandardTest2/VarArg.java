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

//These methods are the same
//javap reveals they all decompose to m1(int [] i)
public class VarArg {

    String m1(int[] i) {
        return "" + i.length;
    }

    String m1(int... i) {
        return "" + i.length;
    } // Compiler determines tha
}
