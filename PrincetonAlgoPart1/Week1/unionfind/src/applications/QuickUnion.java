package applications;

/**
 * Created by Praise on 2017/04/15.
 */
public class QuickUnion implements UnionFind {


    //datastructure
    //The actual id values represent parents in a tree
    //roots of trees point to themselves as their parents
    //roots represent the connected components
    private int[] id;

    public QuickUnion(int N) {
        for (int i = 0; i < N; i++) id[i] = i; //N array access
    }


    private int root(int object) {
        //recursive implementation - not tail recursive though
        /*
            int parent = id[object];
            if (parent == object) return object;
            else return root(parent);
        */

            /* My imperative implementation
            int parent = id[object];
            while (object != parent) {
                object = parent;
                parent = id[object];
            }
        return parent;*/

        while (object != id[object]) object = id[object];
        return object;
    }

    @Override
    //do they have the same root?
    public boolean connected(int p, int q) {
        return root(p) == root(q);
    }

    @Override
    //change p's root to q's root
    public void union(int p, int q) {
        //incorrect, you need to change p's root, not it's parent
        //id[p] = root(q);
        int proot = root(p);
        int qroot = root(q);
        id[proot] = qroot;
    }

    /*
    Notes: find operation could be too expensive if
        you have long skinny trees
     */
}
