/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.


/**
 *
 * @author t2p
 */
class Continue {

    public static void main(String args[]) {
        int i = 0, j = 0;
        X1:
        for (i = 0; i < 3; i++) {
            X2:
            for (j = 3; j > 0; j--) {
                if (i < j) {
                    continue X1;
                } else {
                    break X2;
                }
            }
        }
        System.out.println(i + " " + j);
    }
}
