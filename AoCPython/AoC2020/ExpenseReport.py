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
        res1 = self.calc_pairs()
        print("Result part 1: " + str(res1))

        res2 = self.calc_triples()
        print("Result part 2: " + str(res2))

