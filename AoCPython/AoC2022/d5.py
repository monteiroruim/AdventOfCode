class d5:
    def __init__(self, crate_stacks, instr_list):
        self.crate_stacks = crate_stacks
        self.instr_list = instr_list

        self.result1 = '' 
        self.result2 = ''

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
   

    def set_crates(self):
        crate_map = {}
        for crate_stack in self.crate_stacks.split('\n')[::-1][1:]:
            for i, crate in enumerate(crate_stack[1::4]):
                if crate != ' ':
                    crate_map.setdefault(i+1, []).append(crate)
        
        return crate_map

    def move_crane(self, crate_map, crane_version=9000):
        
        # print(crane_version,crate_map)
        working_map = crate_map
        for instr in self.instr_list.strip().split('\n'):
            instr_vals = [int(c) for c in instr.split() if c.isdigit()]
            ammount, source, destination = instr_vals[0], instr_vals[1], instr_vals[2]
            if crane_version == 9000:
                for j in range(ammount):
                    working_map[destination].append(working_map[source].pop())
            else:
                working_map[destination].extend(working_map[source][-ammount:])
                working_map[source] = working_map[source][:-ammount]
        return working_map
        

    def get_top_crates(self):
        crate_map = self.set_crates()
        crate_map9000 = self.move_crane(crate_map, 9000)
        for crate in crate_map9000.values():
            self.result1 += crate[-1]

        # preset the crate stack
        crate_map = self.set_crates()
        crate_map9001 = self.move_crane(crate_map, 9001)
        for crate in crate_map9001.values():
            self.result2 += crate[-1]
        

import unittest
class test(unittest.TestCase):
    def run(self):
        stack_list = """    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 """
        instr_list   = """move 1 from 2 to 1
                        move 3 from 1 to 3
                        move 2 from 2 to 1
                        move 1 from 1 to 2"""

        init = d5(stack_list, instr_list)
        init.get_top_crates()
        self.assertEqual(init.test_pt1(), 'CMZ')
        self.assertEqual(init.test_pt2(), 'MCD')