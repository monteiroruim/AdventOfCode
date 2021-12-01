import os
import time
from utils import utils
from AoC2021 import d1


# day 1 exercice calculate Elf expenses
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