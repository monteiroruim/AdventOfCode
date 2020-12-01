import os
from AoC2020 import ExpenseReport
from utils import utils

# day 1 exercice calculate Elf expenses
target_res = 2020
inputHandler = utils.fileHandler()
result_set = inputHandler.parse_2_int_array(os.getcwd() + "/AoCPython/AoC2020/expense_input.txt")
l_expenses = ExpenseReport.ExpenseReport(result_set)
l_expenses.result()
