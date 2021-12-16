from typing import OrderedDict


class d14:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/14
        self.init_val = input
        self.polymer_template =  self.init_polymer_template()
        self.insertion_rules = self.init_insertion_rules()
        self.num_steps = 1

        self.result1 = 0
        self.result2 = 0
        

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


    def set_num_steps(self, n):
        self.num_steps = n


    def init_polymer_template(self):
        return self.init_val[0].strip()


    def init_insertion_rules(self):
        tmp_rules = list()
        for i, line in enumerate(self.init_val):
            if i == 0:
                continue
            elif len(line) > 0:
                # clean up and prep value to use/ replace
                print(line)
                p, k = line.split('->')     
                # new = p[0].strip()  + k.strip() + p[1].strip()  
                # tmp_rules.append((p.strip(), new))
                tmp_rules.append((p.strip(), k.strip()))

        return tmp_rules


    def calc_results(self):
        unique_pos = set(self.polymer_template)
        least_common = 99999
        most_common = 0
        # print(unique_pos)
        for c in unique_pos:
            cnt = self.polymer_template.count(c)
            if cnt < least_common:
                least_common = cnt
            if cnt > most_common:
                most_common = cnt
        
        self.result1 = most_common - least_common



    def extend(self, steps):
        # print("template", self.polymer_template)
        # print("rules ", self.insertion_rules)   
        self.set_num_steps(steps)     
        for step in range(self.num_steps):
            l_template = {}
            new_add = 0
            for i in range(len(self.polymer_template) - 1):
                val_found = [v for v in self.insertion_rules if v[0] == self.polymer_template[i:i+2]]
                if val_found:
                    l_template[i + 1 + new_add] = val_found[0]
                    new_add += 1
                
            
            new_template = list(self.polymer_template)
            for i,v in l_template.items():
                new_template.insert(i, v[1])
            self.polymer_template = ''.join(new_template)
            # print("step collected ", step, len(self.polymer_template), self.polymer_template)
            '''
            Template:     NNCB
            After step 1: NCNBCHB
            After step 2: NBCCNBBBCBHCB
            After step 3: NBBBCNCCNBBNBNBBCHBHHBCHB
            After step 4: NBBNBNBBCCNBCNCCNBBNBBNBBBNBBNBBCBHCBHHNHCBBCBHCB
            After step 5: 97
            10: 3073
            '''
        self.calc_results()


import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["NNCB","","CH -> B","HH -> N","CB -> H","NH -> C","HB -> C",
                    "HC -> B","HN -> C","NN -> C","BH -> H","NC -> B","NB -> B",
                    "BN -> B","BB -> N","BC -> B","CC -> N","CN -> C"
        ]
        init = d14(test_set)
        init.extend(10)
        self.assertEqual(init.get_res_pt1(True), 1588)      
