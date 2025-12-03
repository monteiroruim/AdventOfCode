import os
import time
from utils import utils
from AoC2025 import d1

# day 21
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
