class d8:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0
        # get border size
        self.len_x = len(self.init_val[0]) 
        self.len_y = len(self.init_val) 


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


    def check_visibility(self, y, x):
        # exclude edges
        if y == 0 or x ==0 or y==self.len_y -1  or x == self.len_x - 1:
            return 1
        
        # scan left
        if all(int(n) < int(self.init_val[y][x]) for n in self.init_val[y][:x]):
            return 1
        # scan right
        if all(int(n) < int(self.init_val[y][x]) for n in self.init_val[y][x+1:]):
            return 1
        # scan up
        if all(int(n[x]) < int(self.init_val[y][x]) for n in self.init_val[:y]):
            return 1
        # scan down
        if all(int(n[x]) < int(self.init_val[y][x]) for n in self.init_val[y+1:]):
            return 1

        # not visible anywhere
        return 0

    
    def get_scenic_score(self, y, x):
        # print("(", x, ",", y, ")", self.init_val[y][x])
        if y == 0 or x ==0 or y==self.len_y -1  or x == self.len_x - 1:
            return -1
        # scan left
        left = 0
        for n in reversed(self.init_val[y][:x]):
            left +=1
            if int(n) >= int(self.init_val[y][x]):
                break
        
        right = 0
        # scan right
        for n in self.init_val[y][x+1:]:
            right +=1
            if int(n) >= int(self.init_val[y][x]):
                break
        up = 0
        #scan up
        for n in reversed(self.init_val[:y]):
            up+=1
            if int(n[x])>=int(self.init_val[y][x]) :
                break
        down = 0
        # scan down
        for n in self.init_val[y+1:]:
            down+=1
            if int(n[x])>=int(self.init_val[y][x]) :
                break
            
        return right*left*up*down

    
    def scan_trees(self):
        # height
        for i in range(0, self.len_y):
            # length
            for j in range(0, self.len_x):
                self.result1 += self.check_visibility(i, j)
                res2 = self.get_scenic_score(i,j)
                if res2 > self.result2:
                    self.result2 = res2


import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["30373","25512","65332","33549","35390"]
        init = d8(test_set)
        init.scan_trees()
        self.assertEqual(init.test_pt1(), 21)
        self.assertEqual(init.test_pt2(), 8)