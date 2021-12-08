class d7:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/7
        self.init_val = input
        
        self.result1 = 99999999999999
        self.result2 = 99999999999999  

    
    def get_res_pt1(self, p=False):       
        if p:
            print(" ----- Result part 1 ----- ")
            print(self.result1)
            return self.result1

        return self.result1

    
    def get_res_pt2(self, p=False):
        if p:
            print(" ----- Result part 2 ----- ")
            print(self.result2)  
        return self.result2
    

    def get_least_fuel(self):
        for i in range(max(self.init_val),0,-1):
            temp_s = sum([abs(v-i) for v in self.init_val])
            if temp_s < self.result1:
                self.result1 = temp_s
        
            temp_2 = sum([abs(v-i)*(abs(v-i)+1)//2 for v in self.init_val])
            if temp_2 < self.result2:
                self.result2 = temp_2
           
          
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = [16,1,2,0,4,2,7,1,2,14]
        init = d7(test_set)
        init.get_least_fuel()
        self.assertEqual(init.get_res_pt1(True), 37) 
        # init.get_least_fuel()
        self.assertEqual(init.get_res_pt2(True), 168)
  
