from unittest import TestCase
from math import ceil
from ast import literal_eval

class d18:
    def __init__(self, input):
        self.escape_chars = ["[","]", ","]
        self.init_val = self.parse_input(input)
        # https://adventofcode.com/2021/day/18
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


    def parse_input(self, input) -> list:
        # every snailfish number is a pair - an ordered list of two elements
        return [self.create_pairs(instr) for instr in input]

    
    def create_pairs(self, instr):
        pairs = []
        i = 0
        while i< len(instr):
            if instr[i] in self.escape_chars:
                pairs.append(instr[i])
                i+=1
            elif instr[i].isdigit():
                tmp = ""
                while i < len(instr) and instr[i].isdigit():
                    tmp += instr[i]
                    i+=1
                pairs.append(int(tmp))
            else:
                i+=1
        return pairs

     
    def add(self, pair1, pair2):     
        # For example, [1,2] + [[3,4],5] becomes [[1,2],[[3,4],5]].
        added_pairs = ["["] + pair1 + [","] + pair2 + ["]"]
        # To reduce a snailfish number, you must repeatedly do the first action in this list that applies to the snailfish number:
        reduce = True
        while reduce:
            reduce = False
            exploded_pairs = self.explode(added_pairs)                        
            if exploded_pairs is not None:
                #print("exploded", self.beautify(exploded_pairs))
                reduce = True
                added_pairs = exploded_pairs
                continue
            split_pairs = self.split(added_pairs)            
            if split_pairs is not None:
                #print("split", self.beautify(split_pairs))
                added_pairs = split_pairs
                reduce = True
   
        return added_pairs            


    def explode(self, pairs):
        num_pairs = 0
        i = 0
        prev_i = 0
        # print("exploded pair", self.beautify(pairs))
        while i < len(pairs):
            if pairs[i] == "[":
                num_pairs+=1
                # If any pair is nested inside four pairs, the leftmost such pair explodes.
                if num_pairs>4:
                    left = pairs[i+1] 
                    right = pairs[i+3]
                    if prev_i > 0:
                        # the pair's left value is added to the first regular number to the left of the exploding pair (if any)
                        pairs[prev_i] += left
                        # the pair's right value is added to the first regular number to the right of the exploding pair (if any)
                    for i2 in range(i+4, len(pairs)):
                        if isinstance(pairs[i2], int):
                            pairs[i2] += right
                            break
                    # Exploding pairs will always consist of two regular numbers. Then, the entire exploding pair is replaced with the regular number 0
                    pairs = pairs[0:i] + [0] + pairs[i+5:]
                    return pairs                    
            elif pairs[i] == "]":
                num_pairs -=1
            elif isinstance(pairs[i], int):
                prev_i = i
            i+=1

        return None


    def split(self, pairs):
        # If any regular number is 10 or greater, the leftmost such regular number splits.
        new_pairs = None
        for i in range(len(pairs)):
            pair = pairs[i]
            if isinstance(pair, int) and pair > 9:                
                # the left element of the pair should be the regular number divided by two and rounded down
                # the right element of the pair should be the regular number divided by two and rounded up
                tmp = ["[", pair // 2,",", ceil(pair/2),"]"]
                return pairs[:i] + tmp + pairs[i+1:]
        return new_pairs


    def magnitude(self, final_pairs):
        # For example, the magnitude of [9,1] is 3*9 + 2*1 = 29; 
        # the magnitude of [1,9] is 3*1 + 2*9 = 21. 
        # Magnitude calculations are recursive: the magnitude of [[9,1],[1,9]] is 3*29 + 2*21 = 129.
        if isinstance(final_pairs, list):
            return 3 * self.magnitude(final_pairs[0]) + 2 * self.magnitude(final_pairs[1])
        else:
            return final_pairs


    def beautify(self, pairs):
        return "".join([str(i) for i in pairs])


    def resolve_homework(self):        
        prev_pairs = self.init_val[0]
        for pairs in self.init_val[1:]:
            prev_pairs = self.add(prev_pairs, pairs)
            
        prev_pairs = self.beautify(prev_pairs)
        # Magnitude calculations are recursive: the magnitude of [[9,1],[1,9]] is 3*29 + 2*21 = 129.
        self.result1 = self.magnitude(literal_eval(prev_pairs))

        # What is the largest magnitude of any sum of two different snailfish numbers from the homework assignment?
        for i in range(len(self.init_val)):
            for j in range(len(self.init_val)):
                if i != j:
                    sum_res = self.beautify(self.add(self.init_val[i], self.init_val[j]))
                    magn = self.magnitude(literal_eval(sum_res))
                    if magn > self.result2:
                        self.result2 = magn


class test(TestCase):
    def run(self):
        test_set = ["[[[0,[5,8]],[[1,7],[9,6]]],[[4,[1,2]],[[1,4],2]]]",
                    "[[[5,[2,8]],4],[5,[[9,9],0]]]",
                    "[6,[[[6,2],[5,6]],[[7,6],[4,7]]]]",
                    "[[[6,[0,7]],[0,9]],[4,[9,[9,0]]]]",
                    "[[[7,[6,4]],[3,[1,3]]],[[[5,5],1],9]]",
                    "[[6,[[7,3],[3,2]]],[[[3,8],[5,7]],4]]",
                    "[[[[5,4],[7,7]],8],[[8,3],8]]",
                    "[[9,3],[[9,9],[6,[4,9]]]]",
                    "[[2,[[7,7],7]],[[5,8],[[9,3],[0,2]]]]",
                    "[[[[5,2],5],[8,[3,7]]],[[5,[7,5]],[4,4]]]"
                    ]
        t1 = d18(test_set)
        t1.resolve_homework()
        self.assertEqual(t1.get_res_pt1(True), 4140)
        self.assertEqual(t1.get_res_pt2(True), 3993)