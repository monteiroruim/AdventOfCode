class d8:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/8
        self.init_val = input
        
        self.result1 = 0
        self.result2 = 0

        self.code_map = {
            0: "abcefg",
            1: "cf", 
            2: "acdeg",
            3: "acdfg", 
            4: "bcdf", 
            5: "abdfg",
            6: "abdefg",
            7: "acf",
            8: "abcdefg", 
            9: "cefabd" 
        }

        self.input_codes = dict()

        self.num_1 = "ab"
        self.num_4 = "eafb"
        self.num_7 = "dab"
        self.num_8 = "acedgfb"     

    
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
      
    def decode_input(self, input):
        l_code_map = dict()
        i=0
        while len(l_code_map.keys()) < len(input):
            i +=1
            # infer positions lu,ld, ru,rl, u,m,l
            for cmd in input:
                if len(cmd) == len(self.code_map[1]):
                    l_code_map[1] = set(cmd)
                elif len(cmd) == len(self.code_map[4]):
                    l_code_map[4] = set(cmd)
                elif len(cmd) == len(self.code_map[7]):
                    l_code_map[7] = set(cmd)
                elif len(cmd) == len(self.code_map[8]):
                    l_code_map[8] = set(cmd)
                elif len(cmd) == len(self.code_map[5]):              
                    # can be 2,3,5
                    if set([1,8,4]).issubset(l_code_map.keys()):
                        if l_code_map[1].issubset(set(cmd)):
                           l_code_map[3] = set(cmd)                 
                        elif len(l_code_map[8].difference(l_code_map[4]).intersection(set(cmd))) == 2:
                            l_code_map[5] = set(cmd)
                        elif len(l_code_map[8].difference(l_code_map[4]).intersection(set(cmd))) == 3:                        
                            l_code_map[2] = set(cmd)                                                                 
                elif len(cmd) == len(self.code_map[6]):
                    # can be 6,9,0
                    if set([1,8,4]).issubset(l_code_map.keys()):
                        if not l_code_map[1].issubset(set(cmd)):
                            l_code_map[6] = set(cmd)
                        # can be 0 or 9
                        elif len(l_code_map[8].difference(l_code_map[4]).intersection(set(cmd)) ) == 2:
                            l_code_map[9] = set(cmd)
                        elif len(l_code_map[8].difference(l_code_map[4]).intersection(set(cmd)) ) == 3:
                            l_code_map[0] = set(cmd)
                     
        return l_code_map
        
   
    def translate_from_input(self, cmd):
        for k in self.input_codes:            
            if len(self.input_codes[k].symmetric_difference(set(cmd))) == 0:       
                # print(set(cmd), "=", k, len(set(cmd).symmetric_difference(self.input_codes[k])))         
                return str(k)        
        return ""

                
    def output_decode(self):
        for v in self.init_val:
            tmp = v.split('|')
            output = [o for o in tmp[1].split()]
            input = [o for o in tmp[0].split()]
            self.input_codes = self.decode_input(input)
            l_cmd = []
            for val in output:
                if len(val) == len(self.code_map[1]): # 2 chars
                    self.result1 +=1
                    l_cmd.append("1")
                elif len(val) == len(self.code_map[7]): # 3 chars
                    self.result1 +=1
                    l_cmd.append("7")
                elif len(val) == len(self.code_map[4]): # 4 chars
                    self.result1 +=1
                    l_cmd.append("4")
                elif len(val) == len(self.code_map[8]): # 7 chars
                    self.result1 +=1
                    l_cmd.append("8")
                else:                    
                    l_cmd.append(self.translate_from_input(val))
            res2 = int("".join(t for t in l_cmd))
            # print(output, " - " ,res2)
            self.result2 += res2

            

           
          
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["be cfbegad cbdgef fgaecd cgeb fdcge agebfd fecdb fabcd edb | fdgacbe cefdb cefbgd gcbe",
                    "edbfga begcd cbg gc gcadebf fbgde acbgfd abcde gfcbed gfec | fcgedb cgb dgebacf gc",
                    "fgaebd cg bdaec gdafb agbcfd gdcbef bgcad gfac gcb cdgabef | cg cg fdcagb cbg",
                    "fbegcd cbd adcefb dageb afcb bc aefdc ecdab fgdeca fcdbega | efabcd cedba gadfec cb",
                    "aecbfdg fbg gf bafeg dbefa fcge gcbea fcaegb dgceab fcbdga | gecf egdcabf bgf bfgea",
                    "fgeab ca afcebg bdacfeg cfaedg gcfdb baec bfadeg bafgc acf | gebdcfa ecba ca fadegcb",
                    "dbcfg fgd bdegcaf fgec aegbdf ecdfab fbedc dacgb gdcebf gf | cefg dcbef fcge gbcadfe",
                    "bdfegc cbegaf gecbf dfcage bdacg ed bedf ced adcbefg gebcd | ed bcgafe cdgba cbgef",
                    "egadfb cdbfeg cegd fecab cgb gbdefca cg fgcdab egfdb bfceg | gbdfcae bgc cg cgb",
                    "gcafb gcf dcaebfg ecagb gf abcdeg gaef cafbge fdbac fegbdc |fgae cfgab fg bagce"
        ]
        init = d8(test_set)
        init.output_decode()
        self.assertEqual(init.get_res_pt1(True), 26) # 26 
        # init.get_least_fuel()
        self.assertEqual(init.get_res_pt2(True), 61229)
  
