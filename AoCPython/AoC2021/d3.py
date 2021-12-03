class d3:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/3
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.gamma_rate = ""
        self.epsilon_rate = ""

        self.o2_rate = ""
        self.co2_rate = ""


    def get_res_pt1(self, p=False):
       
        if p:
            print(" ----- Result part 1 ----- ")
            print(self.result1)

        return self.result1

    
    def get_res_pt2(self, p=False):
        if p:
            print(" ----- Result part 2 ----- ")
            print(self.result2)  
        return self.result2

    
    def get_col_trends(self, tgt_array, col2scan):
        col_val = [int(v[col2scan]) for v in tgt_array]
        if col_val.count(0) > col_val.count(1):
            max = "0"
            min = "1"
        else:
            max = "1"
            min = "0"

        return (max, min)
    
    def calc_life_support(self):
        l_o2 = self.init_val
        l_co2 = self.init_val
        max = len(self.init_val[0])
        while len(l_o2) > 1:
            for i in range(0,max):
                # least common lc and most common mc
                mc, lc = self.get_col_trends(l_o2,i)
                l_o2 = [v for v in l_o2 if mc == v[i]]
                if len(l_o2) == 1:
                    break
        while len(l_co2) > 1:
            for i in range(0,max):
                mc, lc = self.get_col_trends(l_co2,i)
                l_co2 = [v for v in l_co2 if lc == v[i]]
                if len(l_co2) == 1:
                    break
        
        self.o2_rate = l_o2[0]
        self.co2_rate = l_co2[0]

        
        self.result2 = int(self.o2_rate, 2) * int(self.co2_rate, 2)


    def calc_power_consumption(self):
        max = len(self.init_val[0])
        for i in range(0,max):
            mc, lc = self.get_col_trends(self.init_val,i)
            self.gamma_rate += mc
            self.epsilon_rate += lc
        
        self.result1 = int(self.gamma_rate, 2) * int(self.epsilon_rate, 2)

        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["00100","11110","10110","10111","10101","01111","00111","11100","10000","11001","00010","01010"]
        init = d3(test_set)
        init.calc_power_consumption()
        self.assertEqual(init.get_res_pt1(True), 198)
        # second test
        init.calc_life_support()
        self.assertEqual(init.get_res_pt2(True), 230) # 230


        
    
