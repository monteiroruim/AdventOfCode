from math import prod
class d6:
    def __init__(self, input):
        self.get_data(input)

        self.result1 = 0
        self.result2 = 0

        self.operator_multiply = "*"
        self.operator_add = "+"

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
    
    def get_data(self, init_data):
        self.data = [v.split() for v in init_data[:-1]]
        self.operators = init_data[-1].split()
        print(self.data)
        print(self.operators)
        self.cephalopod_data = [v for v in init_data[:-1]]
        print(self.cephalopod_data)

    
    def solve_part_1(self)-> int:
        res = 0
        for i in range(len(self.operators)):
            operands = list()
            for v in self.data:
                operands.append(int(v[i]))
            if self.operators[i] == self.operator_multiply:
                #print(f"multiply {self.operators[i]} in list {operands}")
                res += prod(operands)
            else:
                #print(f"add {self.operators[i]} in list {operands}")
                res += sum(operands)

        return res

    def solve_part_2(self)-> int:
        
        # math is written right-to-left in columns. Each number is given in its own column, 
        # with the most significant digit at the top and the least significant digit at the bottom
        res = 0
        new_ops = list()

        operands = list()
        for i in range(len(self.cephalopod_data[0])):
            numbers = list()
            n = ""
            for j in range(len(self.cephalopod_data)):
                n += self.cephalopod_data[j][i]

                numbers.append(n)
            if n.isspace():
                #print("break line", n)
                new_ops.append(operands)
                operands = list()
                continue
            else:
                #print("cephalopod ", numbers[-1])
                operands.append(int(numbers[-1]))
        
        new_ops.append(operands)
        #print(new_ops)
        for i in range(len(self.operators)):
            operands = list()
            if self.operators[i] == self.operator_multiply:
                #print(f"multiply {self.operators[i]} in list {operands}")
                res += prod(new_ops[i])
            else:
                #print(f"add {self.operators[i]} in list {operands}")
                res += sum(new_ops[i])

        return res

    def resolve(self) -> None:
        # a list of problems
        # group of numbers that need to be either added (+) or multiplied (*)
        self.result1 = self.solve_part_1()
        self.result2 = self.solve_part_2()
        
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["123 328  51 64 ", 
                    " 45 64  387 23 ",
                    "  6 98  215 314",
                    "*   +   *   +  "]

        init = d6(test_set)
        init.resolve()
        self.assertEqual(init.test_pt1(), 4277556) # 
        self.assertEqual(init.test_pt2(), 3263827)
    

