class d10:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = ''
        self.cycle_multipliers = set([20,60,100,140,180,220])
    
    def test_pt1(self):
        print(" -- pt1 ")
        print(self.result1)
        return self.result1
    
    def test_pt2(self):
        print(" -- pt2 ")
        print('\n'.join([''.join(res) for res in self.result2]))
        return self.result2

    def get_res_pt1(self):
        return self.result1
    
    def get_res_pt2(self):
        print('\n'.join([''.join(res) for res in self.result2]))
        return self.result2

    def sprite(self,cycle, val_x):
            pos = ((cycle - 1) % 40) + 1
            if val_x <= pos < val_x + 3:
                self.result2 += '#'
                print("#", end="")
            else:
                self.result2 += '.'
                print(".", end="")

            if pos == 40:
                self.result2+='\n'
                print()


    def run(self):
        val_x = []
        cycle = 1
        calc = 1
        for instr in self.init_val:
            # print("1 - ", instr)
            if "noop" == instr:
                self.sprite(cycle,calc)
                val_x.append((cycle + 1, 0))
            else:
                _, v = instr.split()
                val_x.append((cycle+2,int(v)))
            while len(val_x):
                self.sprite(cycle,calc)
                cycle +=1
                if cycle >= val_x[0][0]:
                    calc += val_x.pop()[1]
                if cycle in self.cycle_multipliers:
                    # print(cycle, " * ", calc, "=", cycle*calc)
                    self.sprite(cycle, calc)
                    self.result1 += cycle*calc
                
                    

import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = ["addx 15","addx -11","addx 6","addx -3","addx 5","addx -1",
                "addx -8","addx 13","addx 4","noop","addx -1","addx 5","addx -1",
                "addx 5","addx -1","addx 5","addx -1","addx 5","addx -1","addx -35",
                "addx 1","addx 24","addx -19","addx 1","addx 16","addx -11","noop",
                "noop","addx 21","addx -15","noop","noop","addx -3","addx 9","addx 1",
                "addx -3","addx 8","addx 1","addx 5","noop","noop","noop","noop","noop",
                "addx -36","noop","addx 1","addx 7","noop","noop","noop","addx 2","addx 6",
                "noop","noop","noop","noop","noop","addx 1","noop","noop","addx 7","addx 1",
                "noop","addx -13","addx 13","addx 7","noop","addx 1","addx -33","noop","noop",
                "noop","addx 2","noop","noop","noop","addx 8","noop","addx -1","addx 2","addx 1",
                "noop","addx 17","addx -9","addx 1","addx 1","addx -3","addx 11","noop","noop",
                "addx 1","noop","addx 1","noop","noop","addx -13","addx -19","addx 1","addx 3",
                "addx 26","addx -30","addx 12","addx -1","addx 3","addx 1","noop","noop","noop",
                "addx -9","addx 18","addx 1","addx 2","noop","noop","addx 9","noop","noop","noop",
                "addx -1","addx 2","addx -37","addx 1","addx 3","noop","addx 15","addx -21",
                "addx 22","addx -6","addx 1","noop","addx 2","addx 1","noop","addx -10","noop",
                "noop","addx 20","addx 1","addx 2","addx 2","addx -6","addx -11","noop","noop","noop",]
        init = d10(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 13140)
        pt2_solution = [
            
        ]
                          
                          
        # self.assertEqual(init.test_pt2(), pt2_solution)