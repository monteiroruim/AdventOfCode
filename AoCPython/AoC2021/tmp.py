from sys import maxsize
class Graph():
 
    def __init__(self, vertices):
        self.V = vertices
        self.graph = [[0 for column in range(vertices)]
                    for row in range(vertices)]
 
    def printSolution(self, dist):
        print( "Vertex \tDistance from Source")
        for node in range(self.V):
            print(node, "\t", dist[node])
 
    # A utility function to find the vertex with
    # minimum distance value, from the set of vertices
    # not yet included in shortest path tree
    def minDistance(self, dist, sptSet):
 
        # Initialize minimum distance for next node
        min = maxsize
 
        # Search not nearest vertex not in the
        # shortest path tree
        for u in range(self.V):
            if dist[u] < min and sptSet[u] == False:
                min = dist[u]
                min_index = u
 
        return min_index
 
    # Function that implements Dijkstra's single source
    # shortest path algorithm for a graph represented
    # using adjacency matrix representation
    def dijkstra(self, src):
 
        dist = [maxsize] * self.V
        dist[src] = 0
        sptSet = [False] * self.V
 
        for cout in range(self.V):
 
            # Pick the minimum distance vertex from
            # the set of vertices not yet processed.
            # x is always equal to src in first iteration
            x = self.minDistance(dist, sptSet)
 
            # Put the minimum distance vertex in the
            # shortest path tree
            sptSet[x] = True
 
            # Update dist value of the adjacent vertices
            # of the picked vertex only if the current
            # distance is greater than new distance and
            # the vertex in not in the shortest path tree
            for y in range(self.V):
                if self.graph[x][y] > 0 and sptSet[y] == False and \
                dist[y] > dist[x] + self.graph[x][y]:
                        dist[y] = dist[x] + self.graph[x][y]
 
        self.printSolution(dist)
        return dist
 
# Driver program
g = Graph(10)
g.graph = [
    [1, 1, 6, 3, 7, 5, 1, 7, 4, 2], 
[1, 3, 8, 1, 3, 7, 3, 6, 7, 2], 
[2, 1, 3, 6, 5, 1, 1, 3, 2, 8], 
[3, 6, 9, 4, 9, 3, 1, 5, 6, 9], 
[7, 4, 6, 3, 4, 1, 7, 1, 1, 1], 
[1, 3, 1, 9, 1, 2, 8, 1, 3, 7], 
[1, 3, 5, 9, 9, 1, 2, 4, 2, 1], 
[3, 1, 2, 5, 4, 2, 1, 6, 3, 9], 
[1, 2, 9, 3, 1, 3, 8, 5, 2, 1], 
[2, 3, 1, 1, 9, 4, 4, 5, 8, 1]
];
 
a = g.dijkstra(0);
print(sum(a))