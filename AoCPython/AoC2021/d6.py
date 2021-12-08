class d6:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/6
        self.init_val = input
        self.days = 0
        self.previous_day = 0
        self.work_set = self.preset_workset()
        
        
        self.result1 = 0
        self.result2 = 0    
     
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
    
    
    def preset_workset(self):
        tmp = {0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0}
        for v in self.init_val:
            tmp[v] += 1
        print(tmp)
        return tmp
    
    # optimized version
    def forecast_growth(self, window):
        for day in range(window):     
            tmp_set = {0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0}
            for k in self.work_set.keys():
                tmp_set[k-1] = self.work_set[k]
            for kt in tmp_set:
                if kt == -1:
                    tmp_set[8] = tmp_set[kt]
                    tmp_set[6] += tmp_set[kt]

            tmp_set.pop(-1)
            self.work_set = tmp_set

        self.result1 = sum([self.work_set[d] for d in self.work_set])
        self.result2 = sum([self.work_set[d] for d in self.work_set])

    # dont work with more that 150 days of window
    def forecast_growth2_old(self, window):
        self.set_number_days(window)
        for day in range(self.days):      
            self.work_set = [x-1 for x in self.work_set]
            # after 0 reset for 6
            self.work_set += [8 for l in self.work_set if l == -1]
            tmp = [i for i, v in enumerate(self.work_set) if v == -1]
            for i in tmp:
                self.work_set[i] = 6
                # self.work_set.append(8)

        self.result1 = len(self.work_set)
        self.result2 = len(self.work_set)
        
            
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = [3,4,3,1,2]
        init = d6(test_set)

        init.forecast_growth(18)
        self.assertEqual(init.get_res_pt1(True), 26)
        init = d6(test_set)
        init.forecast_growth(80)
        self.assertEqual(init.get_res_pt1(True), 5934)
        init = d6(test_set)
        init.forecast_growth(256)
        self.assertEqual(init.get_res_pt2(True), 26984457539)
  
