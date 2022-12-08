class d9:
    def __init__(self, input):
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

    def get_res_pt1(self):
        return self.result1
    
    def get_res_pt2(self):
        return self.result2
    
    def run(self):
        self.result1 = 0
        self.result2 = 0
    
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = [""]
        init = d9(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 0)
        self.assertEqual(init.test_pt2(), 0)