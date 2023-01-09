class d20:
    def __init__(self, input):
        self.init_val = input
        
        self.result1 = 0
        self.result2 = 0
        
        self.data_set = list(enumerate(self.init_val))
        self.working_set = [(i,v) for i,v in enumerate(self.init_val)]
        self.zero_loc = (input.index(0), 0)
        self.idx_list = [1000, 2000, 3000]

        self.description_key = 811589153

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
    
    def preset_key(self):
        self.init_val = [self.description_key*v for v in self.init_val]
        self.data_set = list(enumerate(self.init_val))
        self.working_set = [(i,v) for i,v in enumerate(self.init_val)]

    # Mix your encrypted file exactly once. What is the sum of the three numbers that form the grove coordinates?
    def mix_file(self, data, pos):
        curr_idx = data.index(self.data_set[pos])
        curr_val = data[curr_idx]
        data.pop(curr_idx)
        data.insert((curr_idx+curr_val[1])%len(data),curr_val)
        return data


    def decript_file(self):
        self.preset_key()
        for x in range(10):
            for i in range(len(self.data_set)):
                self.working_set = self.mix_file(self.working_set, i)
        
        return sum(self.working_set[(self.working_set.index(self.zero_loc) + v) % len(self.working_set)][1] for v in self.idx_list)

    def run(self):
        for i in range(len(self.data_set)):
            self.working_set = self.mix_file(self.working_set, i)
        self.result1 = sum(self.working_set[(self.working_set.index(self.zero_loc) + v) % len(self.working_set)][1] for v in self.idx_list)
        self.result2 = self.decript_file()

import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = [
            1,2,-3,3,-2,0,4
        ]
        init = d20(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 3)
        self.assertEqual(init.test_pt2(), 1623178306)   