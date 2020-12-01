import utils as utl
import time


'''
Specifically, they need you to find the two entries that sum to 2020 and then multiply those two numbers together.
For example, suppose your expense report contained the following:

1721
979
366
299
675
1456
In this list, the two entries that sum to 2020 are 1721 and 299. Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.

Of course, your expense report is much larger. Find the two entries that sum to 2020; what do you get if you multiply them together?

Your puzzle answer was 1007331.
'''

class ExpenseReport:
    def __init__(self, input_set):        
        self.local_set = input_set  


    def calc_pairs(self):
        for n in self.local_set:
            if 2020 - n in self.local_set:
                return n * (2020 - n)
        
        return None


    def calc_triples(self):
        print("triples")
        for n in self.local_set:
            tmp = 2020 - n
            for n2 in self.local_set:
                if n2 == n:
                    pass
                if tmp - n2 in self.local_set:
                    return n * n2 * (tmp - n2)
        
        return None


    def result(self):
        start_time = time.time()
        res1 = self.calc_pairs()
        print("Result part 1: " + str(res1))

        res2 = self.calc_triples()
        print("Result part 2: " + str(res2))

        print("--- %s seconds ---" % (time.time() - start_time))

