import os
import time
from utils import utils
from AoC2022 import d1, d2, d3, d4, d5, d6, d7, d8, \
                d9, d10, d11, d12, d13, d14, d15, d16, \
                d17, d18, d19


# day 19
print("Day 19: Not Enough Minerals")
start_time = time.time()
print("- testing")
tst = d19.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d19.txt")
device = d19.d19(input_set)
device.run()
print("part1 :", device.get_res_pt1())
print("part2 :", device.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 18
print("Day 18: Boiling Boulders")
start_time = time.time()
print("- testing")
tst = d18.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d18.txt")
device = d18.d18(input_set)
device.run()
print("part1 :", device.get_res_pt1())
print("part2 :", device.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 17
print("Day 17: Pyroclastic Flow")
start_time = time.time()
print("- testing")
tst = d17.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_file_2_str(os.getcwd() 
    + "/AoCPython/AoC2022/input/d17.txt")
device = d17.d17(input_set)
device.run()
print("part1 :", device.get_res_pt1())
print("part2 :", device.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 16
print("Day 16: Proboscidea Volcanium")
start_time = time.time()
print("- testing")
tst = d16.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d16.txt")
device = d16.d16(input_set)
device.run()
print("part1 :", device.get_res_pt1())
print("part2 :", device.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 15
print("Day 15: Beacon Exclusion Zone")
start_time = time.time()
print("- testing")
tst = d15.test().run()
exit()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d15.txt")
sensors = d15.d15(input_set)
sensors.run(2000000,4000000)
print("part1 :", sensors.get_res_pt1())
print("part2 :", sensors.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 14
print("Day 14: Regolith Reservoir")
start_time = time.time()
print("- testing")
tst = d14.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2022/input/d14.txt")
scaner = d14.d14(input_set)
scaner.run()
print("part1 :", scaner.get_res_pt1())
print("part2 :", scaner.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()
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

