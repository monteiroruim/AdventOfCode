import os
import time
from utils import utils
from AoC2022 import d1, d2, d3, d4, d5, d6, d7, d8, \
                d9, d10, d11, d12, d13



# day 13
print("Day 13: Distress Signal")
start_time = time.time()
print("- testing")
tst = d13.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d13.txt")

handheld = d13.d13(input_set)
handheld.run()
print("part1 :", handheld.get_res_pt1())
print("part2 :", handheld.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 12
print("Day 12: Hill Climbing Algorithm")
start_time = time.time()
print("- testing")
tst = d12.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d12.txt")

heightmap = d12.d12(input_set)
heightmap.run('S')
print("part1 :", heightmap.get_res_pt1())
heightmap.run('Sa')
print("part2 :", heightmap.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 11
print("Day 11: Monkey in the Middle")
start_time = time.time()
print("- testing")
tst = d11.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_on_line_break(os.getcwd() 
    + "/AoCPython/AoC2022/input/d11.txt")

monkey_business = d11.d11(input_set)
monkey_business.run()
print("part1 :", monkey_business.get_res_pt1())
print("part2 :", monkey_business.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 10
print("Day 10: Cathode-Ray Tube")
start_time = time.time()
tst = d10.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d10.txt")
rayTube = d10.d10(input_set)
rayTube.run()
print("part1 :", rayTube.get_res_pt1())
print(rayTube.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 9
print("Day 9: Rope Bridge")
start_time = time.time()
print("- testing")
tst = d9.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d9.txt")
bridge = d9.d9(input_set)
bridge.run()
print("part1 :", bridge.get_res_pt1())
print("part2 :", bridge.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 8 
print("Day 8: Treetop Tree House")
start_time = time.time()
print("- testing")
tst = d8.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d8.txt")
signal = d8.d8(input_set)
signal.scan_trees()
print("part1 :", signal.get_res_pt1())
print("part2 :", signal.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 7 
print("Day 7: No Space Left On Device")
start_time = time.time()
print("- testing")
tst = d7.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d7.txt")
signal = d7.d7(input_set)
signal.get_directories_size()
print("part1 :", signal.get_res_pt1())
print("part2 :", signal.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 6 
print("Day 6: Tuning Trouble")
start_time = time.time()
print("- testing")
tst = d6.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_file_2_str(os.getcwd() 
    + "/AoCPython/AoC2022/input/d6.txt")
signal = d6.d6(input_set)
signal.process()
print("part1 :", signal.get_res_pt1())
print("part2 :", signal.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 5 
print("Day 5: Supply Stacks")
start_time = time.time()
print("- testing")
tst = d5.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
stack_state, instr_list = inputHandler.parse_inst_from_map(os.getcwd() 
    + "/AoCPython/AoC2022/input/d5.txt")
stacks = d5.d5(stack_state, instr_list)
stacks.get_top_crates()
print("part1 :", stacks.get_res_pt1())
print("part2 :", stacks.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 4
print("Day 4: Camp Cleanup")
start_time = time.time()
print("- testing")
tst = d4.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d4.txt")
camp = d4.d4(input_set)
camp.count_wrong_pairs()
print("part1 :", camp.get_res_pt1())
print("part2 :", camp.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

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

