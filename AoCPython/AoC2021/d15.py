from copy import deepcopy
from unittest.main import TestProgram
class d15:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/15
        self.init_val = self.parse_input(input)

        self.rows = len(input) 
        self.cols = len(input[0])
        self.final_coord = (self.rows - 1, self.cols - 1)
        self.adjacent_list = [(-1,0),(0,1),(0,-1),(1,0)] # no verticals needed
       
        self.result1 = 0
        self.result2 = 0
        

    def get_res_pt1(self, p=False):
        if p:
            print(" ----- Result part 1 ----- ")
            print(self.result1)
            return self.result1

        return self.result1

    
    def get_res_pt2(self, p=False):
        if p:
            print(" ----- Result part 2 ----- ")
            print(self.result2)  
        return self.result2


    def parse_input(self, input):
        map_dict = {}
        for y, row in enumerate(input):
            for x, risk_level in enumerate(row):
                map_dict[(x, y)] = int(risk_level)
        return map_dict



    def get_adjacents(self, r, c):
        adj_list = []
        working_adj = deepcopy(self.adjacent_list)
        working_adj = [(r + t[0], c + t[1]) for t in working_adj]
        for x,y in working_adj: 
            if x < self.rows and x>= 0 and y>=0 and y<self.cols:
                adj_list.append((x,y))
        return adj_list

    
    # Function that implements Dijkstra's single source
    # shortest path algorithm for a graph represented
    # source for method in 
    # https://www.geeksforgeeks.org/dijkstras-shortest-path-algorithm-greedy-algo-7/
    # using adjacency matrix representation
    def dijkstra(self, map, endpoit):
        tocheck = set(map.keys())
        print(tocheck)
        node_dict = {(0, 0): 0}
        node = (0, 0)
        while node_dict:
            i, j = node
            path = node_dict[node]

            adj_list = self.get_adjacents(i,j)
            for adj in adj_list:
                if adj not in tocheck:
                    continue

                current_path = node_dict.get(adj, None)
                new_path = path + map[adj]
                if not current_path or new_path < current_path:
                    node_dict[adj] = new_path

            tocheck.remove(node)
            del node_dict[node]

            min_path = min(node_dict.values())
            for coords, path in node_dict.items():
                if path == min_path:
                    node = coords
                    break

            if node == endpoit:
                return node_dict[endpoit]

        return None


    def extend_map(self):
        # Build full map
        full_map = self.init_val.copy()
        for coords, path in self.init_val.items():
            x, y = coords
            for i in range(1, 5):
                new_path = (path + i) % 9
                new_path = 9 if new_path == 0 else new_path

                new_x = x + ((self.final_coord[0] + 1) * i)
                full_map[(new_x, y)] = new_path

        map_dict = full_map.copy()
        for coords, risk in map_dict.items():
            x, y = coords
            for i in range(1, 5):
                new_path = (risk + i) % 9
                new_path = 9 if new_path == 0 else new_path
                new_y = y + ((self.final_coord[1] + 1) * i)
                full_map[(x, new_y)] = new_path

        new_final_coords = ((self.final_coord[0] + 1) * 5 - 1, (self.final_coord[1] + 1) * 5 - 1)

        return self.dijkstra(full_map, new_final_coords)



    def calc_risk_path(self):
        self.result1 = self.dijkstra(self.init_val, self.final_coord)
        
        self.result2 = self.extend_map()
                    

import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["1163751742","1381373672","2136511328","3694931569","7463417111",
                    "1319128137", "1359912421","3125421639","1293138521","2311944581"
        ]
        init = d15(test_set)
        init.calc_risk_path()
        self.assertEqual(init.get_res_pt1(True), 40)   
        self.assertEqual(init.get_res_pt2(True), 315) # 315
