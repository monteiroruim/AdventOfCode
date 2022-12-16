class d14:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.sand_hole = (500,0)
        self.adj_list = [(0, 1), (-1, 1), (1, 1)]
        self.rocks = set()
        self.sand = set()
    
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

    
    def eval_values(self,l,r):
        return (l > r) - (l < r)

    def get_max_height(self):
        return max(r for _,r in self.rocks)

    def get_sand_setup(self, x, y, h):
        return (x, y) not in self.rocks and (x, y) not in self.sand and y < h

    def set_sand_pos(self,h):
        prev_x = -1
        prev_y = -1
        x, y = self.sand_hole
        while (prev_x, prev_y) != (x,y):
            prev_x , prev_y = x,y
            for dx, dy in self.adj_list:
                if self.get_sand_setup(x+dx,y+dy,h):
                    x,y = x+dx, y+dy
                    break
        return x, y

    def fill_sand(self, floor, max_h):
        # print(self.rocks)
        fill = self.set_sand_pos(floor)
        while fill[1] != max_h:
            # print(fill, max_h)
            self.sand.add(fill)
            fill = self.set_sand_pos(floor)
        return len(self.sand)
        
    def run(self):
        for rock_path in self.init_val:
            coords = rock_path.split(" -> ")
            coords = [tuple(map(int,coord.split(','))) for coord in coords]
            for i in range(1,len(coords)):
                prev_point, new_point = coords[i-1],coords[i]
                dx = self.eval_values(new_point[0],prev_point[0]) 
                dy = self.eval_values(new_point[1],prev_point[1])
                x, y = prev_point
                while (x,y) != new_point:
                    self.rocks.add((x,y))
                    x, y = x + dx, y + dy
                self.rocks.add((x,y))
        
        max_h = self.get_max_height()
        self.result1 = self.fill_sand(max_h+1,max_h)
        self.result2 = self.fill_sand(max_h+2, 0) + 1
                
import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = ["498,4 -> 498,6 -> 496,6",
                    "503,4 -> 502,4 -> 502,9 -> 494,9"]
        init = d14(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 24)
        self.assertEqual(init.test_pt2(), 93)