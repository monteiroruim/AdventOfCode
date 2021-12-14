from copy import deepcopy

class d13:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/13
        self.init_val = input

        self.results = dict()
        self.folds = list()
        self.parse_input()

        self.result1 = 0
        self.result2 = ""

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


    def parse_input(self):
        for line in self.init_val:
            if len(line) < 1:
                continue            
            elif "fold" in line:
                a, k = line.strip('fold along ').split('=')
                self.folds.append((a,int(k)))
            else:
                i, j = line.split(",")
                self.results[(int(i),int(j))] = "#"
           
    
    def fold_map(self):
        for idx, fold in enumerate(self.folds):
            folded_res = dict()
            a, k = fold
            for coord in self.results:
                i,j = coord
                if a == 'y':
                    if j > k:
                        y = k + (k - j)
                    else:
                        y = j
                    folded_res[(i,y)]= "#"
                elif fold[0] == 'x':
                    if i > k:
                        x = k + (k - i)
                    else:
                        x = i
                    folded_res[(x,j)]= "#"
            
            self.results = deepcopy(folded_res)
            if idx == 0:
                self.result1 = len(self.results)
                        

    def fold_transparent_paper(self):
        self.fold_map()

    
    def get_activation_code(self):
        print(self.results)
        x_max = max(i for i, _ in self.results) + 1
        y_max = max(j for _ , j in self.results) + 1

        for y in range(y_max):
            r = (self.results.get((x,y), ' ') for x in range(x_max))
            print(self.result2.join(r))
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["6,10","0,14","9,10","0,3","10,4","4,11","6,0","6,12","4,1",
                    "0,13","10,12","3,4","3,0","8,4","1,10","2,14",
                    "8,10","9,0","","fold along y=7","fold along x=5"
        ]
        init = d13(test_set)
        init.fold_transparent_paper()
        self.assertEqual(init.get_res_pt1(True), 17) 
        init.get_activation_code()        
