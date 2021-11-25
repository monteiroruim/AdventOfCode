import os
import os
import time
from utils import utils
from AoC2015 import d3, d2, d1, d25

# day 2 How many total square feet of wrapping paper should they order?
print("Day 3 - Perfectly Spherical Houses in a Vacuum")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_file_2_str(os.getcwd() 
    + "/AoCPython/AoC2015/input/d3.txt")
test_set = ['^','v','^','v','^','v','^','v','^','v']# ['^', '>','v', '<'], ['^','v','^','v','^','v','^','v','^','v'] , ['>'], ['^','v']
neighbouhood_map = d3.d3(input_set)
print("---- first part ---- ")
neighbouhood_map.calc_houses()
print("---- second part ---- ")
neighbouhood_map.calc_houses_new()
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 2 How many total square feet of wrapping paper should they order?
print("Day 2 - Wrapper paper order")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2015/input/d2.txt")
test_set = ['1x1x10']
w_paper = d2.d2(input_set)
w_paper.wrap_total_order_sqf()
print("--- %s seconds ---" % (time.time() - start_time))


# day 1 
print("Day 1 - Floor locator")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_file_2_str(os.getcwd() 
    + "/AoCPython/AoC2015/input/d1_1.txt")
lift = d1.d1(input_set)
lift.find_floor()
print("--- %s seconds ---" % (time.time() - start_time))


# day 25
print("Day 1 - Expense reports")
start_time = time.time()
x = d25.d25(None,None,None)
x.get_value()
print("--- %s seconds ---" % (time.time() - start_time))
