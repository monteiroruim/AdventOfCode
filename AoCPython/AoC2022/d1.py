class d1:
    def __init__(self, input):
        # clean the whitespace in the file
        self.init_val = input

        self.top_calories = []

        self.result1 = 0 #71934
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


    def count_calories(self):
        sum = 0
        # count elf calories
        for cal in self.init_val:
            if cal is None or cal == "":
                self.top_calories.append(sum)
                sum = 0
            else:
                sum += int(cal)
            
        self.top_calories.append(sum)
        self.top_calories = sorted(self.top_calories, reverse=True)
        self.result1 = self.top_calories[0]
        #not working self.result2 = sum(val for val in self.top_calories[:3])
        for val in self.top_calories[:3]:
            self.result2 += val

       

import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["1000","2000","3000","","4000","","5000","6000","","7000","8000","9000","","10000"]
        init = d1(test_set)
        init.count_calories()
        self.assertEqual(init.test_pt1(), 24000)
        self.assertEqual(init.test_pt2(), 45000)
    
