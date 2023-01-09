from itertools import cycle
class d17:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.rock_stack = {}
        self.cave_width = 7 
        self.rocks  = [
            ((0, 0), (1, 0), (2, 0), (3, 0)),
            ((1, 0), (1, -1), (0, -1), (1, -2), (2, -1)),
            ((0, 0), (1, 0), (2, 0), (2, -1), (2, -2)),
            ((0, 0), (0, -1), (0, -2), (0, -3)),
            ((0, 0), (1, 0), (0, -1), (1, -1)),
        ]


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
    

    def get_rock_tower_height(self, n_rocks):
        jet_moves = cycle(enumerate(self.init_val))
        rock_sequence = cycle(enumerate(self.rocks)) 
        stack = set((w,0) for w in range(self.cave_width))
        heigth, idx = 0, 0
        done = False
        while idx <n_rocks:
            if idx%1000000 == 0:
                print(idx)
            if idx == 2022:
                print(idx)
                self.result1 = heigth*-1
            rock_idx, rock = next(rock_sequence)
            jet_idx, jet_move = next(jet_moves)
            if not done:
                for min_h in range(heigth, -1, 1):
                    if all((i,min_h) in stack for i in range(self.cave_width)):
                        peaks = tuple(sorted((w,h-heigth) for w,h in stack if h <= min_h))
                        if (peaks, rock_idx, jet_idx) in self.rock_stack:
                            prev_idx, prev_h = self.rock_stack.get((peaks,rock_idx,jet_idx))
                            t = idx-prev_idx
                            stack_idx = (n_rocks - idx)// t
                            idx += stack_idx * t
                            h_diff = prev_h - heigth
                            heigth -= stack_idx*h_diff
                            # reset and fill current stack
                            tmp_stack = list(stack)
                            stack = set()
                            for w,h in tmp_stack:
                                stack.add((w,h-stack_idx*h_diff))
                            done = True
                        self.rock_stack[(peaks,rock_idx,jet_idx)] = idx, heigth
                        break
            # always start 2 points blank
            curr_w, curr_h = 2, heigth-4
            max_w = max(w for w, _ in rock) + 1
            while True:
                # move width in x axis 
                if jet_move == "<":
                    # left9
                    if curr_w > 0 and not any((curr_w + w -1,curr_h+h) in stack for w,h in rock):
                        curr_w -=1
                else:
                    # right
                    if curr_w + max_w < self.cave_width and not any((curr_w + w +1,curr_h+h) in stack for w,h in rock):
                        curr_w +=1
                if any((curr_w + w,curr_h+h+1) in stack for w,h in rock):
                    for w,h in rock:
                        stack.add((curr_w+w,curr_h + h))
                    break
                # add in heigth in y axis 
                curr_h +=1
                # next move
                jet_idx, jet_move = next(jet_moves)
            heigth = min(h for _,h in stack)
            idx+=1
        return heigth*-1
        

    def run(self):
        # self.result1 = self.get_rock_tower_height(2022)
        self.result2 = self.get_rock_tower_height(1000000000000)

import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = ">>><<><>><<<>><>>><<<>>><<<><<<>><>><<>>"
        init = d17(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 3068)
        self.assertEqual(init.test_pt2(), 1514285714288)