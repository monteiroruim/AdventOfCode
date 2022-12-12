class Monkey:
    def __init__(self, items, oper, tst, t, f):
        self.items = items
        self.operation = oper
        self.test = tst
        self.trueClause = t
        self.falseClause = f
        self.cnt = 0

class d11:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.big_number = 1 
        self.init_monkeys()    

    def test_pt1(self):
        print(" -- pt1 ")
        print(self.result1)
        return self.result1
    
    def test_pt2(self):
        print(" -- pt2 ")
        print(self.result2)
        return self.result2

    def get_res_pt1(self):
        return self.result1
    
    def get_res_pt2(self):
        return self.result2
    
    def set_bigN(self):
        for monkey in self.monkey_data:
            self.big_number*=monkey.test

    def init_monkeys(self):
        self.monkey_data = []
        for monkey in self.init_val:
            instr = monkey.split('\n')
            items = [int(n) for n in instr[1].lstrip("Starting items: ").split(', ')]
            operation = instr[2].lstrip("Operation: new = old ")
            tst = int(instr[3].lstrip("Test: divisible by "))
            trueClause = int(instr[4].lstrip("If true: throw to monkey "))
            falseClause = int(instr[5].lstrip("If false: throw to monkey "))

            self.monkey_data.append(Monkey(items, operation,tst,trueClause,falseClause))
            self.set_bigN()

    def stuff_sling(self, rounds, w_level):
        for _ in range(rounds):
            for m in range(len(self.monkey_data)):
                for i in range(len(self.monkey_data[m].items)-1,-1,-1):
                    workingMonkey = self.monkey_data[m]
                    inspectItem = workingMonkey.items.pop(i)
                    # print(workingMonkey, inspectItem)
                    workingMonkey.cnt+=1
                    if workingMonkey.operation[0] == "*":
                        inspectItem *= inspectItem if workingMonkey.operation[-3:] == 'old' else int(workingMonkey.operation.split(" ")[1])
                    elif workingMonkey.operation[0] == "+":
                        inspectItem += inspectItem if workingMonkey.operation[-3:] == 'old' else int(workingMonkey.operation.split(" ")[1])

                    if w_level:
                        inspectItem //= w_level
                    else:
                        inspectItem = inspectItem % self.big_number
                    
                    if inspectItem % workingMonkey.test == 0:
                        self.monkey_data[workingMonkey.trueClause].items.append(inspectItem)
                    else:
                        self.monkey_data[workingMonkey.falseClause].items.append(inspectItem)

    def run(self):
        self.stuff_sling(20, 3)
        monkey_activity = sorted([monkey.cnt for monkey in self.monkey_data], reverse=True)
        self.result1 = monkey_activity[0] * monkey_activity[1]
        self.init_monkeys()
        self.stuff_sling(10000, None)
        monkey_activity = sorted([monkey.cnt for monkey in self.monkey_data], reverse=True)
        self.result2 = monkey_activity[0] * monkey_activity[1]


import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = ["Monkey 0:\n Starting items: 79, 98\n Operation: new = old * 19\n Test: divisible by 23\n If true: throw to monkey 2\n If false: throw to monkey 3",
        "Monkey 1:\n Starting items: 54, 65, 75, 74\n Operation: new = old + 6\n Test: divisible by 19\n If true: throw to monkey 2\n If false: throw to monkey 0",
        "Monkey 2:\n Starting items: 79, 60, 97\n Operation: new = old * old\n Test: divisible by 13\n If true: throw to monkey 1\n If false: throw to monkey 3",
        "Monkey 3:\n Starting items: 74\n Operation: new = old + 3\n Test: divisible by 17\n If true: throw to monkey 0\n If false: throw to monkey 1"]
        init = d11(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 10605)
        self.assertEqual(init.test_pt2(), 2713310158)
