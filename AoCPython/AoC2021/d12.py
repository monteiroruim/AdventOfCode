from os import path


class d12:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/12
        self.init_val = input

        self.info_table = dict()
        self.start_key = 'start'
        self.stop_key = 'end'
        self.parse_input()

        self.result1 = 0
        self.result2 = 0

        '''
        the only way to know if you've found the best path is to find all of them.
        '''

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
            p1, p2 = line.split("-")

            if p1 not in self.info_table.keys():
                self.info_table[p1] = set()
            if p2 not in self.info_table.keys():
                self.info_table[p2] = set()            
            if p2 != self.start_key:
                self.info_table[p1].add(p2)
            if p1 != self.start_key:
                self.info_table[p2].add(p1)
         


    def init_paths(self, no_bool=True):
        tmp = []
        for st in self.info_table[self.start_key]:
            if no_bool:
                tmp.append((self.start_key,st))
            else:
                tmp.append(((self.start_key,st),no_bool))
        return tmp
        

    def find_paths(self):
        paths = self.init_paths()
        final_paths = set()
        while paths:
            path = paths.pop()
            for next_cave in self.info_table[path[-1]]:
                
                # only visit small caves once
                if next_cave in path and next_cave.lower() == next_cave:
                    continue
                
                tmp_path = path + (next_cave,)
                # process closure of a path
                if next_cave == self.stop_key and tmp_path not in final_paths:
                    final_paths.add(tmp_path)
                    continue

                paths.append(tmp_path)

        self.result1 = len(final_paths)


    def find_paths2(self):
        paths = self.init_paths(False)
        final_paths = set()

        while paths:
            path, lc_visit = paths.pop()
            for next_cave in self.info_table[path[-1]]:
                current_path_done = lc_visit                
                # changed to cope with 1 double pass
                if next_cave in path:                        
                    if next_cave.lower() == next_cave:
                        if current_path_done:
                            continue
                        else:
                            current_path_done = True    
                
                tmp_path = path + (next_cave,)
                # process closure of a path
                if next_cave == self.stop_key and tmp_path not in final_paths:
                    final_paths.add(tmp_path)
                    continue

                paths.append((tmp_path, current_path_done))

        self.result2 = len(final_paths)

import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["start-A","start-b","A-c","A-b","b-d","A-end","b-end"]
        init = d12(test_set)
        init.find_paths()
        self.assertEqual(init.get_res_pt1(True), 10) 
        init.find_paths2()
        self.assertEqual(init.get_res_pt2(True), 36)

        # additional test case
        test_set = ["dc-end","HN-start","start-kj","dc-start","dc-HN","LN-dc","HN-end","kj-sa","kj-HN","kj-dc"]
        init = d12(test_set)
        init.find_paths()
        self.assertEqual(init.get_res_pt1(True), 19) 
        init.find_paths2()
        self.assertEqual(init.get_res_pt2(True), 103)
  
