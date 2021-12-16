class d14:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/14
        self.init_val = input
        self.polymer_template =  self.init_polymer_template()
        self.polymer_dict = self.set_polymer_template_dict()
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
                p, k = line.split('->')     
                tmp_rules.append((p.strip(), k.strip()))

        return tmp_rules


    def set_polymer_template_dict(self):
        tmp_rules = {}
        for i in range(len(self.polymer_template)):
            ks = self.polymer_template[i:i+2]
            if ks not in tmp_rules.keys():
                tmp_rules[ks] = 1
            else:
                tmp_rules[ks] += 1

        return tmp_rules


    def calc_results(self):
        # extract key pair first
        # first iteration create a single B entry that needs to be taken in account whem summing
        results = {}
        results[self.polymer_template[-1]] = 1
        pls = [(k,v) for k,v in self.polymer_dict.items()]        
        for polimer in pls:
            k, v = polimer            
            if k[0] not in results.keys():
                results[k[0]] = v
            else:
                results[k[0]] += v

        least_common = min([v for v in results.values()])
        most_common = max([v for v in results.values()])
        return most_common - least_common

    def extend(self, steps):
        self.set_num_steps(steps)
        for step in range(self.num_steps):
            new_template = {}
            for i in self.insertion_rules:
                if i[0] in self.polymer_dict.keys():
                    cnt = self.polymer_dict[i[0]]
                    # reset value
                    self.polymer_dict[i[0]] = 0
                    pair = list(i[0])
                    r_pair = pair[0] + i[1]
                    l_pair = i[1] + pair[1]
                    if r_pair not in new_template.keys():
                        new_template[r_pair] = cnt
                    else:
                        new_template[r_pair] += cnt
                    if l_pair not in new_template.keys():
                        new_template[l_pair] = cnt
                    else:
                        new_template[l_pair] += cnt
            self.polymer_dict = new_template
            if step == 9:
                self.result1 = self.calc_results()
                
        
        self.result2 = self.calc_results()


import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["NNCB","","CH -> B","HH -> N","CB -> H","NH -> C","HB -> C",
                    "HC -> B","HN -> C","NN -> C","BH -> H","NC -> B","NB -> B",
                    "BN -> B","BB -> N","BC -> B","CC -> N","CN -> C"
        ]
        init = d14(test_set)
        init.extend(40)
        self.assertEqual(init.get_res_pt1(True), 1588)   
        # continue extension instead of restarting
  

        self.assertEqual(init.get_res_pt2(True), 2188189693529)
