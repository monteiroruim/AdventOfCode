
import string

class d3:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0 
        self.result2 = 0
        self.char_index = self.load_char_index()

    
    def load_char_index(self):
        i1 = [c for c in string.ascii_lowercase]
        i2 = [c for c in string.ascii_uppercase]

        return i1 + i2

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

    def get_priorities_sum(self):
        sum = 0
        sum2 = 0
        group_index = 1
        group_items = []
        for item in self.init_val:
            group_items.append(set(item))
            if len(group_items) == 3:
                # triple id merge sets
                tmp = ''.join(group_items[0].intersection(group_items[1], group_items[2]))
                sum2 += self.char_index.index(tmp[0]) + 1
                group_items = []

            item_type_1, item_type_2 = set(item[:len(item)//2]), set(item[len(item)//2:])
            res = ''.join(item_type_1.intersection(item_type_2))
            sum += self.char_index.index(res[0]) + 1 
            
            group_index +=1
        self.result1 = sum
        self.result2 = sum2
            

import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["vJrwpWtwJgWrhcsFMMfFFhFp", "jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL",
                    "PmmdzqPrVvPwwTWBwg","wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn",
                    "ttgJtRGJQctTZtZT", "CrZsJsPPZsGzwwsLwLmpwMDw"]
        init = d3(test_set)
        init.get_priorities_sum()
        self.assertEqual(init.test_pt1(), 157)
        self.assertEqual(init.test_pt2(), 70)
