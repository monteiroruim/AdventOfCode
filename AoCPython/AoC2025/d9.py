from shapely import Polygon, box
from itertools import combinations, starmap, compress
# handle geometry effective
# https://shapely.readthedocs.io/en/stable/
class d9:
    def __init__(self, input):
        self.get_data(input)

        self.result1 = 0
        self.result2 = 0


    def test_pt1(self):
        print(" ----- test 1 ----- ")
        print(self.result1)
        return self.result1
    
    def test_pt2(self):
        print(" ----- test 2 ----- ")
        print(self.result2)
        return self.result2

    def get_res_pt1(self):
        return self.result1
    
    def get_res_pt2(self):
        return self.result2
    
    def get_data(self, init_data):
        # a list of where the red tiles are located in the grid
        self.data = list()
        self.len_r = len(init_data)
        for row in init_data:
            x,y = [int(x) for x in row.split(",")]
            self.data.append((x,y))
        
        
        self.rectangles = [
            (min(x, x1), min(y, y1), max(x,x1), max(y,y1))
            for (x,y),(x1,y1) in combinations(self.data, 2)
        ]

        #print(self.data)
    
    def solve_part_1(self)-> int:
        # the Elves would like to find the largest rectangle that uses red tiles for two of its opposite corners
        # Using two red tiles as opposite corners, what is the largest area of any rectangle you can make?
        self.areas = [(x1-x+1) * (y1-y+1) for (x,y,x1,y1) in self.rectangles]
        return max(self.areas)

    def solve_part_2(self)-> int:
        # every red tile is connected to the red tile before and after it by a straight line of green tiles.
        # what is the largest area of any rectangle you can make using only red and green tiles?
        # preset geometric boundaries
        polygon = Polygon(self.data)

        return max(compress(self.areas, map(polygon.contains, starmap(box, self.rectangles))))


    def resolve(self) -> None:
        self.result1 = self.solve_part_1()
        self.result2 = self.solve_part_2()
        #return 0
        
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["7,1",
                    "11,1",
                    "11,7",
                    "9,7",
                    "9,5",
                    "2,5",
                    "2,3",
                    "7,3"]

        init = d9(test_set)
        init.resolve()
        self.assertEqual(init.test_pt1(), 50) 
        self.assertEqual(init.test_pt2(), 24)
    

