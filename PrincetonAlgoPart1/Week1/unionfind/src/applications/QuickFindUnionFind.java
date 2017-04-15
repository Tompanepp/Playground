package applications;

/**
 * Created by Praise on 2017/04/15.
 */

// Eager approach to algorithm design
public class QuickFindUnionFind implements UnionFind {

    //datastructure
    //The actual id values represent the connected components
    private int[] id;

    /*
        Initialisation:
        Place each object in it's own connected component
        N array acceses
    */
    public QuickFindUnionFind(int N) {
        id = new int[N];
        for (int i = 0; i < N; i++) {
            id[i] = i;
        }
    }

    @Override
    public boolean connected(int p, int q) {
        return id[p] == id[q]; //1 array entry
    }

    @Override
    //Far too slow for big problems : quadratic problem
    public void union(int p, int q) {
        if (connected(p, q)) return; //little optimisation
        else {

            int componentPId = id[p];
            int componentQId = id[q];

            int n = id.length;
            //move all objects in p's connected component

            for (int i = 0; i < n; i++)
                if (id[i] == componentPId) id[i] = componentQId;


            /*Initial implementation
                Bug at if (id[i] == id[p])
                We'd loose id[p] component id and not change the rest of the other objects in id[p]'s compoenent
                int n = id.length;
                for (int i = 0; i < n; i++)
                    if (id[i] == id[p]) id[i] = id[q];

                //change p's connected component
                id[p] = id[q];
            */
        }
    }

    /*Notes:
        //Union is too expensive
        2N + 2 array accesses
        initialisation + scan entire array + extract componentPId & componentQId
    */
}
