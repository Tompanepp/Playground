package applications;

/**
 * Created by Praise on 2017/04/15.
 * <p>
 * 3. Improvement of QuickUnion
 * Shorten the deepest position of the lowest node from the root
 * <p>
 * depth of any node is lgN (logarithm to base 2 of N)
 */
public class WeightedQuickUnion implements UnionFind {


    //datastructure
    //The actual id values represent parents in a tree
    //roots of trees point to themselves as their parents
    //roots represent the connected components
    private int[] id;

    //The number of objects in the tree rooted at an item
    private int[] size;

    public WeightedQuickUnion(int N) {
        id = new int[N];
        size = new int[N];
        for (int i = 0; i < N; i++) {
            id[i] = i; //N array access
            size[i] = 1; //initial tree size
        }
    }


    private int root(int object) {
        while (object != id[object]) {
            //Flatten the tree when finding the root : Path compression
            id[object] = id[id[object]]; // Substitute the parent of the object with it's grand parent
            object = id[object];


        }
        return object;
    }

    @Override
    //do they have the same root?+
    public boolean connected(int p, int q) {
        return root(p) == root(q);
    }

    @Override
    //change p's root to q's root
    public void union(int p, int q) {

        int proot = root(p);
        int qroot = root(q);

        if (proot == qroot) return;
        //Append the smaller tree to the root of the larger tree
        if (size[proot] < size[qroot]) {
            id[proot] = qroot;
            size[qroot] += size[proot];
        } else {
            id[qroot] = proot;
            size[proot] += qroot;
        }
    }


}
