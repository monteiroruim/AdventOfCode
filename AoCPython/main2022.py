import os
import time
from utils import utils
from AoC2022 import d20

# day 20
print("Day 20: Trench Map")
start_time = time.time()
print("- testing")
tst = d20.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d20.txt")
scanner = d20.d20(input_set)
scanner.enhance_image()
print("part1 :", scanner.get_res_pt1())
print("part2 :", scanner.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

