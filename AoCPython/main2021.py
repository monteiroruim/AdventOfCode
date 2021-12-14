import os
import time
from utils import utils
from AoC2021 import d1, d2, d3, d4, d5, d6, d7, d8, d9, \
    d10, d11, d12


# day 12
print("Day 12: Passage Pathing")
start_time = time.time()
print("- testing")
tst = d12.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d12.txt")
cave = d12.d12(input_set)
cave.find_paths()
print("part1 :", cave.get_res_pt1())
cave.find_paths2()
print("part2 :", cave.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 11
print("Day 11: Dumbo Octopus ")
start_time = time.time()
print("- testing")
tst = d11.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d11.txt")
octopus = d11.d11(input_set)
octopus.simulate_flashes(100)
print("part1 :", octopus.get_res_pt1())

print("part2 :", octopus.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))

# day 10
print("Day 10: Syntax Scoring")
start_time = time.time()
print("- testing")
tst = d10.test().run()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d10.txt")
nav_system = d10.d10(input_set)
nav_system.check_syntax()
print("part1 :", nav_system.get_res_pt1())

print("part2 :", nav_system.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))

# day 9
print("Day 9: Smoke Basin")
start_time = time.time()
print("- testing")
tst = d9.test().run()

start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d9.txt")
cave = d9.d9(input_set)
cave.calc_smoke_path()
print("part1 :", cave.get_res_pt1())

print("part2 :", cave.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))

# day 8
print("Day 8: Seven Segment Search")
start_time = time.time()
print("- testing")
tst = d8.test().run()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d8.txt")
display = d8.d8(input_set)
display.output_decode()
print("part1 :", display.get_res_pt1())

print("part2 :", display.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))

# day 7
print("Day 7: The Treachery of Whales")
start_time = time.time()
print("- testing")
tst = d7.test().run()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_int_array(os.getcwd() 
    + "/AoCPython/AoC2021/input/d7.txt")
crabs = d7.d7(input_set)
crabs.get_least_fuel()
print("part1 :", crabs.get_res_pt1())

print("part2 :", crabs.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))

# day 6 
print("Day 6: Lanternfish")
start_time = time.time()
print("- testing")
tst = d6.test().run()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_int_array(os.getcwd() 
    + "/AoCPython/AoC2021/input/d6.txt")
lantern_fish = d6.d6(input_set)
lantern_fish.forecast_growth(80)
print("part1 :", lantern_fish.get_res_pt1())
lantern_fish.forecast_growth(256)
print("part2 :", lantern_fish.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))

# day 5 
print("Day 5: Hydrothermal Venture")
start_time = time.time()
print("- testing")
tst = d5.test().run()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d5.txt")
vents = d5.d5(input_set)
print("part1 :", vents.get_res_pt1())
print("part2 :", vents.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))

# day 4
print("Day 4: Giant Squid")
start_time = time.time()
print("- testing")
tst = d4.test().run()
start_time = time.time()
print("- calculation")
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2021/input/d4.txt")
bingo_session = d4.d4(input_set)
bingo_session.start_draw()
print("part1 :", bingo_session.get_res_pt1())
print("part2 :", bingo_session.get_res_pt2())
print("--- %s seconds ---" % (time.time() - start_time))

# day 3
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