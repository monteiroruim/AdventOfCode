import os
import time
from utils import utils
from AoC2025 import d1, d2

# day 2
print("Day 2: Gift Shop")
start_time = time.time()
print("- testing")
tst = d2.test().run()

start_time = time.time()

print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.split_line_to_list(os.getcwd() 
    + "/AoCPython/AoC2025/input/d2.txt")
solution = d2.d2(input_set)
solution.resolve()
print("part1 :", solution.get_res_pt1()) # 13919717792
print("part2 :", solution.get_res_pt2()) # 14582313461
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 1
print("Day 1: Secret Entrance")
start_time = time.time()
print("- testing")
tst = d1.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2025/input/d1.txt")
device = d1.d1(input_set)
device.resolve()
print("part1 :", device.get_res_pt1())
print("part2 :", device.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()
