class d1:
    def __init__(self, input):
        # clean the whitespace in the file
        self.init_val = input

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


    def calc_increments(self):
        self.result1 = sum([1 for i in range(1,len(self.init_val)) if  self.init_val[i] > self.init_val[i-1]])
        self.result2 = sum([1 for i in range(0,len(self.init_val)) if sum(self.init_val[i+1:i+1+3]) > sum(self.init_val[i:i+3] )])        


import unittest
class test_d1(unittest.TestCase):
    def run_test(self):
        test_set = [199,200,208,210,200,207,240,269,260,263]
        init = d1(test_set)
        init.calc_increments()
        self.assertEqual(init.test_pt1(), 7)
        self.assertEqual(init.test_pt2(), 5)
    
