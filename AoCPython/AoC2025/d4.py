class d4:
    def __init__(self, input):
        self.data = self.get_data(input)

        self.result1 = 0
        self.result2 = 0

        self.rolls_papper = "@"
        self.empty_space = "."
        self.adj_list = [-1,0,1]

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
        res = list()
        for row in init_data:
            res.append(list(row))
        #print(res)
        self._data_len = len(res)
        self._data_heigth = len (res[0])
        return res
    
    def solve_part_1(self)-> int:
        # fewer than four rolls of paper in the eight adjacent positions
       res = 0
       return res

    def solve_part_2(self)-> int:
        # 
        res = 0
        return res

    def resolve(self) -> None:
        # How many rolls of paper can be accessed by a forklift
        # pt 2 once its removed more can be removed until no more removals
        _pt1 = True
        _pt1_iteration = 0
        while True:
            _swapped = False
            for row in range(self._data_len):
                for col in range(self._data_heigth):
                    cnt_adj_rolls = 0
                    #print(row, col)
                    for adj_r in self.adj_list:
                        for adj_c in self.adj_list:
                            rx, cx = row+adj_r, col+adj_c
                            #print(rx, cx)
                            if 0<=rx<self._data_len and 0<=cx<self._data_heigth and self.data[rx][cx] == self.rolls_papper:
                                cnt_adj_rolls+=1
                    if self.data[row][col] == self.rolls_papper and cnt_adj_rolls < 5:
                        _pt1_iteration+=1
                        _swapped = True
                        if not _pt1:
                            self.result2 += 1
                            self.data[row][col] = self.empty_space
            if _pt1:
                self.result1 += _pt1_iteration
                _pt1 = False
            if not _swapped:
                break
        
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["..@@.@@@@.",
                    "@@@.@.@.@@",
                    "@@@@@.@.@@",
                    "@.@@@@..@.",
                    "@@.@@@@.@@",
                    ".@@@@@@@.@",
                    ".@.@.@.@@@",
                    "@.@@@.@@@@",
                    ".@@@@@@@@.",
                    "@.@.@@@.@."]

        init = d4(test_set)
        init.resolve()
        self.assertEqual(init.test_pt1(), 13) # 
        self.assertEqual(init.test_pt2(), 43)
    

