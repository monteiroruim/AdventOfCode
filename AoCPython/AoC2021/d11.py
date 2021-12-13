from copy import deepcopy


class d11:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/10
        self.init_val = input
        self.working_set = dict()

        self.result1 = 0
        self.result2 = 0

        self.parse_input()
        self.adjacent_list = [(-1,1), (-1,0), (-1,-1),(0,1),(0,-1),(1,1),(1,0),(1,-1)]
        self.flash_count = 0
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


    def parse_input(self):
        for i, row in enumerate(self.init_val):
            for j, val in enumerate(row):
                self.working_set[(i,j)] = int(val)


    from copy import deepcopy
    def get_adjacents(self, r, c):
        adj_list = []
        working_adj = deepcopy(self.adjacent_list)
        working_adj = [(r + t[0], c + t[1]) for t in working_adj]
        for x,y in working_adj: 
            if x < self.row_size and x>= 0 and y>=0 and y<self.col_size:
                adj_list.append((x,y))
        return adj_list


    def simulate(self):
        flash = set()
        for octopus in self.working_set:
            self.working_set[octopus] +=1
            if self.working_set[octopus] > 9 and octopus not in flash:
                flash.add(octopus)
                adj_flash = [octopus]
                while adj_flash:
                    i,j = adj_flash.pop()
                    adj_list = self.get_adjacents(i, j)
                    for adj in adj_list:
                       self.working_set[adj] += 1
                       if self.working_set[adj] > 9 and adj not in flash:
                           flash.add(adj)
                           adj_flash.append(adj)
        
        return flash



    def simulate_flashes(self, steps=10):
        path = False
        step = 1
        while not path:
            flash_set = self.simulate()
            # processed flashes in iteration and adjacent value eval
            for f in flash_set:
                if step <= steps:
                    self.result1 += 1
                self.working_set[f] = 0

            if all(val == 0 for val in self.working_set.values()):
                self.result2 = step
                break
            
            step += 1
            
                

import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["5483143223",
                    "2745854711",
                    "5264556173",
                    "6141336146",
                    "6357385478",
                    "4167524645",
                    "2176841721",
                    "6882881134",
                    "4846848554",
                    "5283751526"
                    ]
        init = d11(test_set)
        init.simulate_flashes(100)
        self.assertEqual(init.get_res_pt1(True), 1656) # 10 = 204 100 =1656
        # 
        self.assertEqual(init.get_res_pt2(True), 195)
  
