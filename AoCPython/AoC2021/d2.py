class d2:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/2
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.depth = 0
        self.forward = 0
        self.aim = 0
        self.depth = 0


    def reset_totals(self):
        self.depth = 0
        self.forward = 0
        self.aim = 0
        self.depth = 0


    def test_pt1(self):
        print(" ----- test 1 ----- ")
        print(self.result1)
        return self.result1
    

    def test_pt2(self):
        print(" ----- test 2 ----- ")
        
        print(self.result2)
        return self.result2

    def calc_distance_with_aim(self):
        self.reset_totals()
        for cmd in self.init_val:
            direction, ammount = cmd.split()
            if direction == "forward":
                self.forward += int(ammount)
                self.depth += int(ammount)*self.aim if self.aim > 0 else 0
            elif direction == "down":
                self.aim += int(ammount)
            elif direction == "up":
                self.aim -= int(ammount)
            else:
                print("unknown instruction", direction)

        self.result2 = self.depth*self.forward



    def calc_distance(self):
        self.forward = sum([int(cmd.split()[1]) for cmd in self.init_val if cmd.find("forward") > -1]) 
        self.depth += sum([int(cmd.split()[1])*-1 for cmd in self.init_val if cmd.find("up") > -1])
        self.depth += sum([int(cmd.split()[1]) for cmd in self.init_val if cmd.find("down") > -1]) 
        '''for cmd in self.init_val:
            direction, ammount = cmd.split()
            if direction == "forward":
                self.forward += int(ammount)
            elif direction == "down":
                self.depth += int(ammount)
            elif direction == "up":
                self.depth -= int(ammount)
            else:
                print("unknown instruction", direction)
        '''
        #self.depth = down + up
        self.result1 = self.depth*self.forward


import unittest
class test_d2(unittest.TestCase):
    def run_test(self):
        test_set = ["forward 5","down 5","forward 8","up 3","down 8","forward 2"]
        init = d2(test_set)
        init.calc_distance()
        self.assertEqual(init.test_pt1(), 150)
        init.calc_distance_with_aim()
        self.assertEqual(init.test_pt2(), 900)
    
