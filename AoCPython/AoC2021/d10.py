class d10:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/10
        self.init_val = input
        
        self.result1 = 0
        self.result2 = 0

        self.code_map = {'(': ')', '[': ']', '{':'}', '<':'>'}
        self.code_scores = {')': 3, ']': 57, '}': 1197, '>': 25137}
        self.autocomplete_scores = {')': 1, ']': 2, '}': 3, '>': 4}

        self.autocomplete_totals = []

        '''
        }}]])})]
        ])})]]}}
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



    def autocomplete(self, open_cmd):
        closure_seq = []
        total = 0
        for c in reversed(open_cmd):
            # create closure sequence
            closure_seq.append(self.code_map[c])
        # loop closure sequence multiply by 5 and sum
        for cl in closure_seq:
            total*=5
            total+= self.autocomplete_scores[cl]
        # store in global array
        self.autocomplete_totals.append(total)
          

    def get_middle_score(self):
        self.autocomplete_totals.sort()
        idx = len(self.autocomplete_totals)//2

        return self.autocomplete_totals[idx]


    def get_syntax_score(self, scores):
        total = 0
        for char in scores:
            total += scores[char]*self.code_scores[char]
        
        return total


    def check_syntax(self):
        tmp_score = {')': 0, ']': 0, '}': 0, '>': 0}
        for i, v in enumerate(self.init_val):
            # reset per line
            tmp_open = []
            tmp_closed = []
            corrupted_line = False
            for c in v:
                if c in self.code_map:
                   tmp_open.append(c)
                   tmp_closed.append("")
                elif c in self.code_map.values():
                    if c == self.code_map[tmp_open[-1]]:
                        del tmp_open[-1]
                        del tmp_closed[-1]
                    else:
                        tmp_score[c]+=1
                        corrupted_line = True
                        break
                else:
                    print(c,"not a bracket, exit")
                    break
            if not corrupted_line:
                self.autocomplete(tmp_open)
            
        self.result1 = self.get_syntax_score(tmp_score)
        self.result2 = self.get_middle_score()
                        
                

import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = [r"[({(<(())[]>[[{[]{<()<>>",
                    r"[(()[<>])]({[<{<<[]>>(",
                    r"{([(<{}[<>[]}>{[]{[(<()>",
                    r"(((({<>}<{<{<>}{[]{[]{}",
                    r"[[<[([]))<([[{}[[()]]]",
                    r"[{[{({}]{}}([{[{{{}}([]",
                    r"{<[[]]>}<{[{[{[]{()[[[]",
                    r"[<(<(<(<{}))><([]([]()",
                    r"<{([([[(<>()){}]>(<<{{",
                    r"<{([{{}}[<[[[<>{}]]]>[]]"
        ]
        init = d10(test_set)
        init.check_syntax()
        self.assertEqual(init.get_res_pt1(True), 26397)
        # 
        self.assertEqual(init.get_res_pt2(True), 288957)
  
