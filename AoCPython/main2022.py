import os
import time
from utils import utils
from AoC2022 import d1, d2, d3


# day 3
print("Day 3: Rucksack Reorganization")
start_time = time.time()
print("- testing")
tst = d3.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d3.txt")
ruckacks = d3.d3(input_set)
ruckacks.get_priorities_sum()
print("part1 :", ruckacks.get_res_pt1())
print("part2 :", ruckacks.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()
# day 2
print("Day 2: Rock Paper Scissors")
start_time = time.time()
print("- testing")
tst = d2.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d2.txt")
draws = d2.d2(input_set)
draws.get_total_score()
print("part1 :", draws.get_res_pt1())
print("part2 :", draws.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 1
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

