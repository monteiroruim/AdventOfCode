class d9:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.direction_map = {
            'R': (1,0),
            'L': (-1,0),
            'U': (0,1),
            'D': (0,-1)
        }
        self.preset() 

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

    def preset(self):
        self.tail_positions = set()
        self.head_positions = []
    
    def move_rope(self, direction):
        x, y = self.direction_map[direction]
        self.head_positions[0][0] += x
        self.head_positions[0][1] += y
        for i in range(1, len(self.head_positions)):
            last_move = self.head_positions[i-1]
            new_move = self.head_positions[i]
            # only move tail if head moves more than 2 squares away
            if max(abs(last_move[0] - new_move[0]) , abs(last_move[1] - new_move[1])) > 1:
                if last_move[0] != new_move[0]:
                    new_move[0] += 1 if last_move[0] > new_move[0] else -1
                
                if last_move[1] != new_move[1]:
                    new_move[1] += 1 if last_move[1] > new_move[1] else -1
            # print(self.head_positions)
                

    def run(self):
        self.result1 = self.run_knots(2)
        self.preset()
        self.result2 = self.run_knots(10)
    

    def run_knots(self, n_knots):
        self.head_positions = [[0,0] for x in range(n_knots)]
        # iterate inputs
        for instr in self.init_val:
            direction, ammount = instr.split()
            # print(direction, ammount)
            for i in range(int(ammount)):
                # move head and tail store unique positions of the tail
                self.move_rope(direction)
                self.tail_positions.add(tuple(self.head_positions[-1]))
     
        return len(self.tail_positions)

    
import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = ["R 4","U 4","L 3","D 1","R 4","D 1","L 5","R 2"]
        init = d9(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 13)
        self.assertEqual(init.test_pt2(), 1)

        test_set = ["R 5","U 8","L 8","D 3","R 17","D 10","L 25","R 20"]
        init = d9(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 69)
        self.assertEqual(init.test_pt2(), 25)