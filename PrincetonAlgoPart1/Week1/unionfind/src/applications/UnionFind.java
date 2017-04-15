package applications;


/*
    Set of algorithms for solving the dynamic connectivity problem
        Two implementation
            - Quick find
            - Quick union

    data structure:
        disjoint-set :
            keep track of elements partitioned into
                disjoint(non overlapping) subsets
        Operations:
            1. find operation: which subset an element is in
                subset = components
            2. union operation: joins subset data into a single subset
*/

    /*
        connected components: The objects in a connected component are not connected to any other external objects
     */


//Points are connected if they are in the same component

//Given two points p and q. Determine if they're connected (i.e. Is there a path from p to q?)

public interface UnionFind {

    //These can be any objects, we simply use integer (0 to N -1) to suppress details not relevant to union-find
    //One can map the integer labels to actual objects specific to your domain using search and/or symbol tables etc.

    int[] id = null;

    /*
        Is there a path between p and q?
        are their id entries equal
            (i.e. are they in the same connected component?)
     */
    boolean connected(int p, int q);

    /*
        move objects in p's id entry to q's id entry
        i.e. move objects in p's connect component to q's connected component
     */
    void union(int p, int q);

}