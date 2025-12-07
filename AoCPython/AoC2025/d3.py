class d3:
    def __init__(self, input):
        self.data = input

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
    
    def get_data(self) -> list:
        pass
    
    def solve_part_1(self, v)-> int:
        # get 2 higher voltage bateries
        i = v.index(max(v))
        if i < len(v) - 1:
            print("first normal", i, v[i] + max(v[i+1:]))
            return int(v[i] + max(v[i+1:]))
        else:
            print("second first", i, max(v[:i]) + v[i])
            return int(max(v[:i]) + v[i])

    def solve_part_2(self, v, ix, str_len)-> int:
        # handle static friction
        if ix==len(v) and str_len==12:
            return 0
        if ix==len(v):
            return -10**20
        key = (ix,str_len)
        if key in self.data_idx:
            return self.data_idx[key]
        res = self.solve_part_2(v, ix+1, str_len)
        if str_len < 12:
            res = max(res, 10**(11-str_len)*int(v[ix])+self.solve_part_2(v, ix+1, str_len+1))
        self.data_idx[key] = res
        #print(self.data_idx)
        return res

    def resolve(self) -> None:
        # joltage rating for each batery in the batery bank
        for bank in self.data:
            print(bank)
            self.data_idx = {}
            self.result1 += self.solve_part_1(bank)
            self.result2 += self.solve_part_2(bank, 0, 0)
        
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["987654321111111",
                    "811111111111119",
                    "234234234234278",
                    "818181911112111"]

        init = d3(test_set)
        init.resolve()
        self.assertEqual(init.test_pt1(), 357) # 
        self.assertEqual(init.test_pt2(), 3121910778619)
    

'''
987654321111
987654321111

811111111119
811111111119

434234234278
434234234278

888911112111
881911112111

'''