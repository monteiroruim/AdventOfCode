import os
import time
from utils import utils
from AoC2022 import d1

# day 20
print("Day 1: Calorie Counting ")
start_time = time.time()
print("- testing")
tst = d1.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d1.txt")
elf = d1.d1(input_set)
elf.count_calories()
print("part1 :", elf.get_res_pt1())
print("part2 :", elf.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

