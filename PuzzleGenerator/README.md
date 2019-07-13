This is an implementation of the original algorithm by John Tantalo

For more information refer to the [wikipedia article](https://en.wikipedia.org/wiki/Planarity#Puzzle_generation_algorithm)

> 1. Generate a set of random lines in a plane such that no two lines are parallel and no three lines meet in a single point.
2. Calculate the intersections of every line pair.
3. Create a graph with a vertex for each intersection and an edge for each line segment connecting two intersections (the arrangement of the lines).

### Notes

The statement: "every line pair" **is ambigious and it has two apparent interpretations**: 
<br>*Given a set of nodes: {1,2,3,4}*<br>*The pairs = {{1,2},{2,3},{3,4}} should be formed*<br> **or**<br>*The pairs =  {{1,1},{1,2},{1,3},{1,4},{2,1},{2,3}....{4,4}} should be formed*

### Formally we know that:

**Given a set on n nodes [n]**

**First Interpretation:**<br>
Creating a set of pairs such that:<br>
![Set of pairs](https://latex.codecogs.com/gif.latex?%5Cinline%20%7B%20%5Cleft%20%5C%7B%20%5Cleft%20%5C%7B%20i%2C%28i%5Cmod%20n%29%20&plus;%201%20%5Cright%20%5C%7D%20i%20%5Cin%20%5Bn-1%5D%20%5Cright%20%5C%7D%7D)<br>
Results in a simple cycle graph by definition!<br>
![](https://latex.codecogs.com/gif.latex?%5Cinline%20Cn%3A%20%28%5Bn%5D%2C%5Cleft%20%5C%7B%20%5Cleft%20%5C%7B%20i%2C%28i%5Cmod%20n%29%20&plus;%201%20%5Cright%20%5C%7D%7C%5C%20i%20%5Cin%20%5Bn-1%5D%20%5Cright%20%5C%7D%29)<br>
**The resulting Graphs are Planar, but they don't make for the most exciting or challenging puzzles.**

**Second Interpretation:**<br>
Creating a set of pairs such that each node is connected to every other node results in a Complete Graph by definition:<br>
![Complete Graph](https://latex.codecogs.com/gif.latex?%5Cinline%20K%20n%20%3A%3D%20%28%20%5B%20n%20%5D%20%2C%20%28%20%5B%20n%20%5D%202%20%29%20%29)<br>
which is **not always planar** in fact [Kuratowski's Theorem states that:](https://en.wikipedia.org/wiki/Kuratowski%27s_theorem)
> A finite graph is planar if and only if it does not contain a subgraph that is a subdivision of the complete graph K5 or the complete bipartite graph K3,3 (utility graph).
which means this algorithm doesn't generate planar graphs that we can use for our puzzle.

### We can conclude that:

An algorithm that creates a simple cycle graph can be combined with a different algorithm that creates random edges between random nodes, provided it doesn't create a complete graph in doing so


### Issues / Bugs
Some nodes are sometimes drawn outside the visible playing field
