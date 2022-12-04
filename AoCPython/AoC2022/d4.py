class d4:
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

    
    def split_pairs(self, pair):
        pairs = pair.split(",")
        pair1 = pairs[0].split('-')
        pair2 = pairs[1].split('-')

        return pair1, pair2

    def count_wrong_pairs(self):
        for val in self.init_val:
            p1, p2 = self.split_pairs(val)
            if (int(p1[0]) -int(p2[0])) * (int(p1[1]) - int(p2[1])) <=0:
                #print(idx, "pair contained,", val)
                self.result1+=1
            if int(p1[0]) <= int(p2[0]) <= int(p1[1]) or int(p2[0]) <= int(p1[0]) <= int(p2[1]):
                self.result2+=1
           


import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["2-4,6-8","2-3,4-5","5-7,7-9","2-8,3-7","6-6,4-6","2-6,4-8"]
        init = d4(test_set)
        init.count_wrong_pairs()
        self.assertEqual(init.test_pt1(), 2)
        self.assertEqual(init.test_pt2(), 4)