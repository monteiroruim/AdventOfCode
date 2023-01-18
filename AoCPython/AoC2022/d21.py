from operator import add,sub,mul,truediv
class d21:
    def __init__(self, input):
        self.init_val = input
        
        self.result1 = 0
        self.result2 = 0

        self.riddle = {}
        self.h_key = "humn"
        self.root_key = 'root'
        self.math = {
            "+": add,
            "-": sub,
            "*": mul,
            "/": truediv
        }
    

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


    def resolve_humn(self):
        root1, op, root2 = self.riddle[self.root_key]
        res = list()
        tst = None
        root_childs = [root1,root2]
        for m in root_childs:
            try:
                tst = self.translate_number(m,2)
            except TypeError:
                tst = None
            finally:
                res.append(tst)
        human=res.index(None)
        nums = [0, res[1 if human == 0 else 0]]
        vals = list()
        for n in nums:
            self.riddle[self.h_key] = int(n)
            vals.append(self.translate_number(root_childs[human]))
        h_res = int(
            (nums[1] - nums[0]) / (vals[1] - vals[0]) * (res[not human] - vals[0]) + nums[0]
        )
        self.riddle[self.h_key] = h_res

        return h_res
    
    def translate_number(self, key, part=1):
        if part == 2:
            if key == self.h_key:
                raise TypeError
        
        if isinstance(self.riddle[key],int): 
            return self.riddle[key]
        else:
            l, op, r = self.riddle[key]
            return self.math[op](self.translate_number(l,part=part),self.translate_number(r,part=part))


    def run(self):
        for val in self.init_val:
            k, v = val.split(': ')
            if v.isdigit():
                v = int(v)
            else:
                v = tuple(v.split())
            if not self.riddle.get(k):
                self.riddle[k] = v
        # What number will the monkey named root yell?
        self.result1 = int(self.translate_number(self.root_key))
        # pt2: ignore operation and match values
        # find human val
        self.result2 = self.resolve_humn()


import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = [
            "root: pppw + sjmn",
            "dbpl: 5",
            "cczh: sllz + lgvd",
            "zczc: 2",
            "ptdq: humn - dvpt",
            "dvpt: 3",
            "lfqf: 4",
            "humn: 5",
            "ljgn: 2",
            "sjmn: drzm * dbpl",
            "sllz: 4",
            "pppw: cczh / lfqf",
            "lgvd: ljgn * ptdq",
            "drzm: hmdt - zczc",
            "hmdt: 32"
        ]
        init = d21(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 152)
        self.assertEqual(init.test_pt2(), 301)   