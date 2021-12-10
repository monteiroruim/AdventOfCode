from copy import deepcopy


class d9:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/9
        self.init_val = input
        
        self.result1 = 0
        self.result2 = 1
        self.basin_locations = []
        self.adjacent_list = [(-1,0),(0,1),(0,-1),(1,0)] # removed verticals por part2
        self.basins = dict()
        self.row_size = len(self.init_val)
        self.col_size = len(self.init_val[0])
  
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
                 
    from copy import deepcopy

    def get_adjacents(self, r, c):
        adj_list = []
        working_adj = deepcopy(self.adjacent_list)
        working_adj = [(r + t[0], c + t[1]) for t in working_adj]
        for x,y in working_adj: 
            if x < self.row_size and x>= 0 and y>=0 and y<self.col_size:
                adj_list.append((x,y))
        return adj_list


    def calc_top_basin(self):
        sizes = []
        for basin in self.basins:
            sizes.append(len(self.basins[basin]))

        sizes.sort(reverse=True)
        for size in sizes[:3]:
            self.result2 *= size 


    def calc_basins(self):
        for endpoint in self.basin_locations:
            basin_members = set([endpoint])
            candidates = [endpoint]
            while candidates:
                x,y = candidates.pop()                
                adj_list = self.get_adjacents(x,y)
                for adj in adj_list:
                    adjx, adjy = adj
                    if int(self.init_val[adjx][adjy]) != 9 and self.init_val[x][y] < self.init_val[adjx][adjy]:
                        basin_members.add(adj)
                        candidates.append(adj)
            
            self.basins[endpoint] = basin_members                

    
    def calc_smoke_path(self):
        res = []
        for i, lst in enumerate(self.init_val):
            for j, v in enumerate(lst): 
                adj_list = self.get_adjacents(i,j)
                low_spot = False
                if all(int(v) < int(self.init_val[x][y]) for (x,y) in adj_list):
                    res.append(int(v)+1)
                    self.basin_locations.append((i,j))
      
        self.calc_basins()  
        self.calc_top_basin()
        self.result1 = sum(res)
        

import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["2199943210","3987894921","9856789892","8767896789","9899965678"]
        init = d9(test_set)
        init.calc_smoke_path()
        self.assertEqual(init.get_res_pt1(True), 15)
        # 
        self.assertEqual(init.get_res_pt2(True), 1134)
  
