import os
import time
from AoC2020 import ExpenseReport, PasswordPolicy
from utils import utils

# day 1 exercice calculate Elf expenses
print("Day 1 - Expense reports")
start_time = time.time()
inputHandler = utils.fileHandler()
result_set = inputHandler.parse_2_int_array(os.getcwd() + "/AoCPython/AoC2020/expense_input.txt")
l_expenses = ExpenseReport.ExpenseReport(result_set)
l_expenses.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 2 exercice validate valid passwords according to policies of North Pole Toboggan Rental Shop
print("Day 2 - Password policy")
start_time = time.time()
test_result_set = set(['1-3 a: abcde', '1-3 b: cdefg', '2-9 c: ccccccccc'])
pass_policy = utils.fileHandler()
result_set = pass_policy.parse_line_2_list(os.getcwd() + "/AoCPython/AoC2020/passPolicy_input.txt") # create a map with limits, validation and pwd string from input file
l_pass_policy = PasswordPolicy.PasswordPolicy(result_set)
l_pass_policy.result()
print("--- %s seconds ---" % (time.time() - start_time))
# instance of the pass policies according to map
# apply validation and show results
