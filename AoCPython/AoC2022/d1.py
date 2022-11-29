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
  


import unittest
class test_d1(unittest.TestCase):
    def run_test(self):
        test_set = []
        init = d1(test_set)
        init.calc_increments()
        self.assertEqual(init.test_pt1(), 0)
        self.assertEqual(init.test_pt2(), 0)
    
