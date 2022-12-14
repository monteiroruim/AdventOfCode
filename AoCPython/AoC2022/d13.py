class d13:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.divider2 = [[2]]
        self.divider6 = [[6]]
    
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
    
    def eval_values(self,l,r):
        return (l > r) - (l < r)

    def eval_array(self,l,r):
        if type(l) is int and type(r) is int:
            return self.eval_values(l,r) 
            
        for pair1, pair2 in zip(l,r):
            if type(pair1) != type(pair2):
                # print("data type mismatch", pair1, pair2)
                pair1 = [pair1] if type(pair1) is int else pair1
                pair2 = [pair2] if type(pair2) is int else pair2
            
            res = self.eval_array(pair1,pair2) 
            if res != 0:
                return res
        return self.eval_values(len(l),len(r))

    

    def run(self):
        pair_idx = 0
        packets_list = list()
        for i in range(0, len(self.init_val), 3):
            pair_idx+=1
            packets_list.append(eval(self.init_val[i]))
            packets_list.append(eval(self.init_val[i+1]))
            if self.eval_array(eval(self.init_val[i]), eval(self.init_val[i+1])) < 0:
                # print(i+1, "added as valid",self.result1)
                self.result1 += pair_idx
        # pt2
        div2 = 1
        div6 = 1
        for packet in packets_list:
            if self.eval_array(packet, self.divider2) < 0:
                div2 += 1
            if self.eval_array(packet, self.divider6) < 0:
                div6 += 1
        self.result2 = (div2) * (div6+1)


import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = ["[1,1,3,1,1]",
                    "[1,1,5,1,1]",
                    "",
                    "[[1],[2,3,4]]",
                    "[[1],4]",
                    "",
                    "[9]",
                    "[[8,7,6]]",
                    "",
                    "[[4,4],4,4]",
                    "[[4,4],4,4,4]",
                    "",
                    "[7,7,7,7]",
                    "[7,7,7]",
                    "",
                    "[]",
                    "[3]",
                    "",
                    "[[[]]]",
                    "[[]]",
                    "",
                    "[1,[2,[3,[4,[5,6,7]]]],8,9]",
                    "[1,[2,[3,[4,[5,6,0]]]],8,9]"]
        init = d13(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 13)
        self.assertEqual(init.test_pt2(), 140)