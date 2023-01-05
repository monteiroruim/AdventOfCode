from sys import setrecursionlimit
class d18:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.map_3d = list()
        self.map_3d_set = set()
        self.neighbours = [(-1, 0, 0), (1, 0, 0), (0, -1, 0), (0, 1, 0), (0, 0, -1), (0, 0, 1)]
        self.outlayer = set()

    def test_pt1(self):
        print(" -- pt1 ")
        print(self.result1)
        return self.result1
    
    def test_pt2(self):
        print(" -- pt2 ")
        print(self.result2)
        return self.result2

    def get_res_pt1(self):
        return self.result1
    
    def get_res_pt2(self):
        return self.result2

    def load_3d_map(self):
        for coord in self.init_val:
            self.map_3d.append(tuple(map(int, coord.strip().split(','))))
        self.map_3d_set = set(self.map_3d)
    

    def get_outlayer_coord(self):
        # recursion error need to increase buffer
        setrecursionlimit(1000000000)
        x_list = [p[0] for p in self.map_3d_set]
        y_list = [p[1] for p in self.map_3d_set]
        z_list = [p[2] for p in self.map_3d_set]
        return (min(x_list)-4, min(y_list)-4, min(z_list)-4),(max(x_list)+4, max(y_list)+4, max(z_list)+4)
    
    def add_o2_vars(self,coord):
        min_coord, max_coord = self.get_outlayer_coord()
        if any(coord[i]<min_coord[i] for i in range(len(min_coord))) or any(coord[i]>max_coord[i] for i in range(len(max_coord))):
            return
        for neighbour in self.neighbours:
            point = tuple(x+dx for x,dx in zip(coord,neighbour))
            if point not in self.map_3d_set and point not in self.outlayer:
                self.outlayer.add(point)
                self.add_o2_vars(point)
    
    def get_surface_area(self):
        # it approximates the shape of the lava droplet with 1x1x1 cubes on a 3D grid,
        # each given as its x,y,z position.
        surface_area = 0 
        surface_area = sum(
            tuple(x + dx for x, dx in zip(drop, neighbour)) not in self.map_3d_set 
            for neighbour in self.neighbours 
            for drop in self.map_3d
        )
        
        return surface_area
    
    def get_clean_surface_area(self):
        surface_area = 0
        surface_area = sum(
            tuple(x + dx for x, dx in zip(drop, neighbour)) in self.outlayer
             for neighbour in self.neighbours
             for drop in self.map_3d
        )
       
        return surface_area


    def run(self):
        self.load_3d_map()
        self.result1 = self.get_surface_area()
        min,_ = self.get_outlayer_coord()
        self.add_o2_vars(min)
        self.result2 = self.get_clean_surface_area()

import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = [
            "2,2,2",
            "1,2,2",
            "3,2,2",
            "2,1,2",
            "2,3,2",
            "2,2,1",
            "2,2,3",
            "2,2,4",
            "2,2,6",
            "1,2,5",
            "3,2,5",
            "2,1,5",
            "2,3,5"
        ]
        init = d18(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 64)
        self.assertEqual(init.test_pt2(), 58)