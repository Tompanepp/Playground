package applications.dynamicconnectivity;

import applications.UnionFind;

/**
 * Created by Praise on 2017/04/15.
 */
public class DynamicConnectivityClient {
    public static void main(String[] args) {

        int N = StdIn.readInt();
        UnionFind uf = new UnionFind(N);
        while (!StdIn.isEmpty()) {
            int p = StdIn.readInt();
            int q = StdIn.readInt();
            if (!uf.connected(p, q)) {
                uf.union(p, q);
                StdOut.println(p + " " + q);
            }
        }
    }
}
