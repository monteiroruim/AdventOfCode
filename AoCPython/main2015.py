import os
import time
from utils import utils
from AoC2015 import d9, d8, \
    d7, d6, d5, d4, d3, d2, d1, d25

# day 9
start_time = time.time()
tst = d9.test().run()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2015/input/d9.txt")
print("--- Day 9: All in a Single Night ---")
dist_calc = d9.d9(input_set)
dist_calc.get_shortest_route()
print("--- %s seconds ---" % (time.time() - start_time))
exit()


# day 1 
print("Day 1 - Floor locator")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_file_2_str(os.getcwd() 
    + "/AoCPython/AoC2015/input/d1_1.txt")
lift = d1.d1(input_set)
lift.find_floor()
print("--- %s seconds ---" % (time.time() - start_time))

# day 2 How many total square feet of wrapping paper should they order?
print("Day 2 - Wrapper paper order")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2015/input/d2.txt")
test_set = ['1x1x10']
w_paper = d2.d2(input_set)
w_paper.wrap_total_order_sqf()
print("--- %s seconds ---" % (time.time() - start_time))

#  Day 3 - Perfectly Spherical Houses in a Vacuum
print("Day 3 - Perfectly Spherical Houses in a Vacuum")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_file_2_str(os.getcwd() 
    + "/AoCPython/AoC2015/input/d3.txt")
test_set = ['^','v','^','v','^','v','^','v','^','v']# ['^', '>','v', '<'], ['^','v','^','v','^','v','^','v','^','v'] , ['>'], ['^','v']
neighbouhood_map = d3.d3(input_set)
print("---- first part ---- ")
neighbouhood_map.calc_houses()
print("--- %s seconds ---" % (time.time() - start_time))
start_time = time.time()
print("---- second part ---- ")
neighbouhood_map.calc_houses_new()
print("--- %s seconds ---" % (time.time() - start_time))

# day 4
print("Day 4 - The Ideal Stocking Stuffer")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = 'yzbqklnj'
test_set = 'pqrstuv' # 'abcdef' - 609043, 'pqrstuv' - 1048970
print("---- first part ---- ")
miner = d4.d4(input_set)
miner.get_lowest_integer()
print("--- %s seconds ---" % (time.time() - start_time))
start_time = time.time()
print("---- second part ---- ")
miner.set_new_hit_key('000000')
miner.get_lowest_integer()
print("--- %s seconds ---" % (time.time() - start_time))


# day 5
print("Day 5: Doesn't He Have Intern-Elves For This?")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2015/input/d5.txt")
test_set = ['xu','ugknbfddgicrmopn', 'aaa', 'jchzalrnumimnmhp', 'haegwjzuvuyypxyu', 'dvszwmarrgswjxmb', 'bb'] # first two are ok, last 3 are naughty
print("---- first part ---- ")
santa_file = d5.d5(input_set) 
santa_file.get_good_strings_count_old() # 238
print("---- second part ---- ")
# test_set2 = ['xxyxx','qjhvhtzxzqqjkmpb', 'uurcxstgmygtbstg', 'ieodomkazucvgmuy'] # first two are ok, last 3 are naughty
# santa_file2 = d5.d5(test_set2) 
# santa_file2.get_good_strings_count() 
santa_file.get_good_strings_count()
print("--- %s seconds ---" % (time.time() - start_time))

#day 6
print("Day 6: Probably a Fire Hazard")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2015/input/d6.txt")
test_set = ['toggle 0,0 through 999,0' , 'turn on 0,0 through 999,999', 'turn off 499,499 through 500,500'] # 'toggle 0,0 through 999,0' , 'turn off 499,499 through 500,500','turn on 0,0 through 999,999'
christmas_light_grid = d6.d6(input_set)
christmas_light_grid.get_number_lights_on()
print("--- %s seconds ---" % (time.time() - start_time))


print("Day 7: Some Assembly Required")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2015/input/d7.txt")
test_set = ['123 -> x','456 -> y','x AND y -> d','x OR y -> e','x LSHIFT 2 -> f','y RSHIFT 2 -> g','NOT x -> h','NOT y -> i']
print("---- first part ---- ")
circuit = d7.d7(input_set)
circuit.get_wire_values('a')
print("--- %s seconds ---" % (time.time() - start_time))
start_time = time.time()
print("---- second part ---- ")
circuit2 = d7.d7(input_set, 2)
circuit2.get_wire_values('a')
print("--- %s seconds ---" % (time.time() - start_time))

# day 8 
start_time = time.time()
tst = d8.diff_chr_vs_inmem().run_test()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2015/input/d8.txt")
print("Day 8: Matchsticks")
char_counter = d8.d8(input_set)
char_counter.diff_chr_vs_inmem()
print("--- %s seconds ---" % (time.time() - start_time))
exit()

# day 25
print("Day 1 - Expense reports")
start_time = time.time()
x = d25.d25(None,None,None)
x.get_value()
print("--- %s seconds ---" % (time.time() - start_time))
