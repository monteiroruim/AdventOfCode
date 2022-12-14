from string import ascii_lowercase
class d12:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.start_key = 'S'
        self.end_key = 'E'
        self.adj_list = [(0,1), (1,0),(-1,0), (0,-1)]
        self.char_vals = ascii_lowercase

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
    
    def get_height(self, x,y):
        if self.init_val[x][y] in self.char_vals:
            return self.char_vals.index(self.init_val[x][y])
        else:
            if self.init_val[x][y] == self.start_key:
                return 0
            elif self.init_val[x][y] == self.end_key:
                return 25

    def start_search(self,coords):
        done = set()
        todo = list()
        for coord in coords:
            todo.append((coord,0))
            done.add(coord)
        while todo:
            # print("1.", todo)
            # print("2.", done)
            (coord, length) = todo.pop(0)
            x,y=coord
            if self.init_val[x][y] == self.end_key:
                return length
            curr_hval = self.get_height(x,y)
            for i, j in self.adj_list:
                # print(i, j)
                dx = x+i
                dy = y+j
                if 0<=dx<len(self.init_val) and 0<=dy<len(self.init_val[0]) and self.get_height(dx,dy)-curr_hval<=1 and (dx,dy) not in done:
                    # print("added", (dx,dy), self.init_val[dx][dy])
                    done.add((dx,dy))
                    todo.append(((dx,dy),length+1))

    def run(self,start_key):
        coords = list()
        for i in range(len(self.init_val)):
            for j in range(len(self.init_val[0])):
                # print(i,j,self.init_val[i][j])
                if self.init_val[i][j] in start_key:
                    coords.append((i,j))
        if start_key == 'S':
            self.result1 = self.start_search(coords)
        else:
            self.result2 = self.start_search(coords)

import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = ["Sabqponm",
                    "abcryxxl",
                    "accszExk",
                    "acctuvwj",
                    "abdefghi"]
        init = d12(test_set)
        init.run('S')
        self.assertEqual(init.test_pt1(), 31)
        init.run('Sa')
        self.assertEqual(init.test_pt2(), 29)