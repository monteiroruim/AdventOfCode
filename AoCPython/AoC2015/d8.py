import unittest
class d8:
    def __init__(self, input):
        # clean the whitespace in the file
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        r'''
        Space on the sleigh is limited this year, and so Santa will be bringing his list as a digital copy. He needs to know how much space it will take up when stored.

        It is common in many programming languages to provide a way to escape special characters in strings. For example, C, JavaScript, Perl, Python, and even PHP handle special characters in very similar ways.

        However, it is important to realize the difference between the number of characters in the code representation of the string literal and the number of characters in the in-memory string itself.

        Disregarding , what is the number of characters of code for string literals minus the number of characters in memory for the values of the strings in total for the entire file?

        For example, given the four strings above, the total number of characters of string code (2 + 5 + 10 + 6 = 23) minus the total number of characters in memory for string values (0 + 3 + 7 + 1 = 11) is 23 - 11 = 12.

        test_set = ['""','"abc"','"aaa\"aaa"','"\x27"']
        
        '''

    def diff_chr_vs_inmem(self, dataset=None):
        if dataset is None:
            code_list = self.init_val
        else:
            code_list = dataset
            
        inmem_chars, total_chars, enc_chars = 0, 0, 0
        for c in code_list: 
            total_chars += len(c)
            enc_chars += c.count('\\') + c.count('"') + 2 
            inmem_chars += len(eval(c))

        self.result1 = total_chars - inmem_chars
        self.result2 = enc_chars
        
        print("Part 1 total ", total_chars, " minus in memory ", inmem_chars , " equals ", total_chars - inmem_chars)
        print("Part 2 total ", enc_chars)
    

    def test_pt1(self):
        print(" ----- test 1 ----- ")
        self.diff_chr_vs_inmem()

        return self.result1


    def test_pt2(self):
        print(" ----- test 2 ----- ")
        self.diff_chr_vs_inmem()

        return self.result2

    


class diff_chr_vs_inmem(unittest.TestCase):
    def run_test(self):
        test_set = [r'""',r'"abc"',r'"aaa\"aaa"',r'"\x27"']
        print(" ----- test 1----- ")
        init = d8(test_set)
        self.assertEqual(init.test_pt1(), 12)
        self.assertEqual(init.test_pt2(), 19)
    