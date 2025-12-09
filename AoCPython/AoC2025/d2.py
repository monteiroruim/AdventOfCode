class d2:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0 #
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
        # Due to newer security protocols, 
        # please use password method 0x434C49434B until further notice.
        # this method counts all 0 passages and not only certains
        return self.result2
    
    def get_data(self) -> list:
        tl = list()
        for v in self.init_val:
            print(v)
            v1, v2 = v.split('-')
            tl.append((int(v1), int(v2)))
        return tl
    
    def solve_part_1(self, v)-> None:
        str_num = str(v)
        slice = int(round(len(str_num)/2))
        if str_num[slice:] == str_num[:slice]:
            self.result1 += v

    def solve_part_2(self, v)-> bool:
        str_num = str(v)
        for k in range(2, len(str_num)+1):
            if len(str_num)%k == 0:
                slice = len(str_num)//k
                idx = 0
                valid = True
                while idx < len(str_num):
                    if str_num[idx:idx+slice] != str_num[:slice]:
                        valid = False
                    idx += slice
                if valid:
                    return True
        return False

    def resolve(self) -> None:
        data = self.get_data()
        for row in data:
            for v in range(row[0], row[1]+1):
                self.solve_part_1(v)
                if self.solve_part_2(v):
                    self.result2 += v
        
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = "11-22,95-115,998-1012,1188511880-1188511890,222220-222224, \
1698522-1698528,446443-446449,38593856-38593862,565653-565659, \
824824821-824824827,2121212118-2121212124"
        test_set = test_set.split(",")

        init = d2(test_set)
        init.resolve()
        self.assertEqual(init.test_pt1(), 1227775554) # 13919717792
        self.assertEqual(init.test_pt2(), 4174379265)
    
