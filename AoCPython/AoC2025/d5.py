class d5:
    def __init__(self, input):
        self.get_data(input)

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
    
    def get_data(self, init_data):
        # list of fresh ingredient ID ranges
        # a blank line
        # list of available ingredient IDs
        self.ranges = [tuple(v.split("-")) for v in init_data[0].split("\n")]
        self.ranges = sorted([(int(r[0]),int(r[1])) for r in self.ranges])
        self.ingredients = [int(v) for v in init_data[1].split("\n")]

    
    def solve_part_1(self)-> int:
        res = 0
        for i in self.ingredients:
            _clear = False
            for (l, h) in self.ranges:
                if l <= i <= h:
                    _clear = True
                    break
            if _clear:
                res += 1
                
        return res

    def solve_part_2(self)-> int:
        #How many ingredient IDs are considered to be fresh according to the fresh ingredient ID ranges (low, high)?
        res = 0
        curr = -1
        for (l, h) in self.ranges:
            if curr >= l:
                l = curr+1
            if l<=h:
                res+=h-l+1
            curr = max(curr,h)
        
        return res

    def resolve(self) -> None:
        # which of their ingredients are fresh and which are spoiled

        self.result1 = self.solve_part_1()
        self.result2 = self.solve_part_2()
        
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["3-5\n10-14\n16-20\n12-18","1\n5\n8\n11\n17\n32"]

        init = d5(test_set)
        init.resolve()
        self.assertEqual(init.test_pt1(), 3) # 
        self.assertEqual(init.test_pt2(), 14)
    

