from collections import deque
import re
from functools import cache
class d7:
    def __init__(self, input):
        self.get_data(input)

        self.result1 = 0
        self.result2 = 0

        # tachyon beam enters the manifold at the location marked S
        self.manifold_location = "S"
        # Tachyon beams pass freely through empty space (.)
        self.empty_space = "."
        # a splitter (^)
        self.splitter = "^"

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
        self.data = init_data
        self.len_r = len(init_data)
        self.len_c = len(init_data[0])
        print(self.data)
    
    def solve_part_1(self, beams_queue)-> None:
        # Analyze your manifold diagram. How many times will the beam be split?
        print(beams_queue)
        beams = set()
        while beams_queue:
            r,c = beams_queue.popleft()
            if (r,c) in beams:
                continue
            beams.add((r,c))
            if r+1 == self.len_r:
                continue
            if self.data[r+1][c] == self.splitter:
                beams_queue.append((r+1, c-1))
                beams_queue.append((r+1, c+1))
                self.result1 +=1
            else:
                beams_queue.append((r+1, c))

        # tachyon beams always move downward
        #if a tachyon beam encounters a splitter (^), the beam is stopped

    @cache
    def solve_part_2(self, row, col)-> int:
        # it isn't a classical tachyon manifold - it's a quantum tachyon manifold
        # only a single tachyon particle is sent
        # it's actually time itself which splits. In one timeline, the particle went left, and in the other timeline, the particle went right.
        if row+1 == self.len_r:
            return 1
        if self.data[row+1][col] == self.splitter:
            return self.solve_part_2(row+1, col-1) + self.solve_part_2(row+1, col+1)
        else:
            return self.solve_part_2(row + 1, col)


    def resolve(self) -> None:
        # To repair the teleporter, 
        # you first need to understand the beam-splitting properties of the tachyon manifold
        # tachyon beam enters the manifold at the location marked S
        beams_queue = deque([(0, self.data[0].find(self.manifold_location))])
        self.solve_part_1(beams_queue)
        # you really need to know is the number of timelines active after 
        # a single particle completes all of its possible journeys through the manifold
        self.result2 = self.solve_part_2(0, self.data[0].find(self.manifold_location))
        
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = [
            ".......S.......",
           "...............",
           ".......^.......",
           "...............",
           "......^.^......",
           "...............",
           ".....^.^.^.....",
           "...............",
           "....^.^...^....",
           "...............",
           "...^.^...^.^...",
           "...............",
           "..^...^.....^..",
           "...............",
           ".^.^.^.^.^...^.",
           "..............."]

        init = d7(test_set)
        init.resolve()
        self.assertEqual(init.test_pt1(), 21) # 21 
        self.assertEqual(init.test_pt2(), 40)
    

