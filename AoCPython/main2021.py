import os
import time
from utils import utils
from AoC2021 import d1, d2, d3


# day 2
print("Day 3: Binary Diagnostic")
start_time = time.time()
print("- testing")
tst = d3.test().run()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d3.txt")
submarine = d3.d3(input_set)
submarine.calc_power_consumption()
print("part1 :", submarine.get_res_pt1())
submarine.calc_life_support()
print("part2 :", submarine.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))


# day 2
print("Day 2: Dive!")
start_time = time.time()
print("- testing")
tst = d2.test_d2().run_test()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d2.txt")
pilot = d2.d2(input_set)
pilot.calc_distance()
print("part1 :", pilot.result1)
pilot.calc_distance_with_aim()
print("part2 :", pilot.result2)
print("--- %s seconds ---" % (time.time() - start_time))

# day 1 
print("Day 1: Sonar Sweeps")
start_time = time.time()
print("- testing")
tst = d1.test_d1().run_test()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_2_int_array(os.getcwd() 
    + "/AoCPython/AoC2021/input/d1.txt")
scanner = d1.d1(input_set)
scanner.calc_increments()
print("part1 :", scanner.result1)
print("part2 :", scanner.result2)
print("--- %s seconds ---" % (time.time() - start_time))