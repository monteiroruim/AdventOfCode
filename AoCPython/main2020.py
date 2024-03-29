import os
import time
from utils import utils
from AoC2020 import ExpenseReport, PasswordPolicy, SlopeLandscape, PassportScanner, BoardingPassScanner \
    , CustomDeclaration, LuggageScan, GameConsole, Xmas, AdapterArray, SeatingSystem, RainRisk \
    , ShuttleSearch, DockingData, RambunctiousRecitation, TicketTranslation


# day 1 exercice calculate Elf expenses
print("Day 1 - Expense reports")
start_time = time.time()
inputHandler = utils.fileHandler()
input_set = inputHandler.parse_2_int_set(os.getcwd() 
    + "/AoCPython/AoC2020/input/ExpenseReport.txt")
l_expenses = ExpenseReport.ExpenseReport(input_set)
l_expenses.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 2 exercice validate valid passwords according to policies of North Pole Toboggan Rental Shop
print("Day 2 - Password policy")
start_time = time.time()
test_input_set = ['1-3 a: abcde', '1-3 b: cdefg', '2-9 c: ccccccccc']
pass_policy = utils.fileHandler()
input_set = pass_policy.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/PasswordPolicy.txt")
l_pass_policy = PasswordPolicy.PasswordPolicy(input_set)
l_pass_policy.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 3 check slope landscape and count trees in the shortest paths
print("Day 3 - Slope Landscape")
start_time = time.time()
test_input_set = ['..##.......','#...#...#..','.#....#..#.','..#.#...#.#',
                    '.#...##..#.','..#.##.....','.#.#.#....#','.#........#',
                    '#.##...#...','#...##....#','.#..#...#.#']
slope_map = utils.fileHandler()
input_set = slope_map.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/SlopeLandscape.txt")
l_slope_landscape = SlopeLandscape.SlopeLandscape(input_set)
l_slope_landscape.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 4 process batch passports (ids) and identify valid ones
print("Day 4 - Passport scanner")
start_time = time.time()
test_input_set = ['ecl:gry pid:860033327 eyr:2020 hcl:#fffffd','byr:1937 iyr:2017 cid:147 hgt:183cm','',
'iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884','hcl:#cfa07d byr:1929','',
'hcl:#ae17e1 iyr:2013','eyr:2024','ecl:brn pid:760753108 byr:1931','hgt:179cm','',
'hcl:#cfa07d eyr:2025 pid:166559648','iyr:2011 ecl:brn hgt:59in']
passport_batch = utils.fileHandler()
input_set = passport_batch.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/PassportScanner.txt")
l_passport_scanner = PassportScanner.PassportScanner(input_set)
l_passport_scanner.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 5 check boarding pass and fin your place
print("Day 5 - Binary boarding")
start_time = time.time()
test_input_set = ['BFFFBBFRRR', 'FFFBBBFRRR', 'BBFFBBFRLL', 'FBFBBFFRLR']
boarding_passes = utils.fileHandler()
input_set = boarding_passes.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/BoardingPassScanner.txt")
l_scanner = BoardingPassScanner.BoardingPassScanner(input_set)
l_scanner.result()
print("--- %s seconds ---" % (time.time() - start_time))


# day 6 analyse customs declaration forms  
print("Day 6 - Custom Customs")
start_time = time.time()
test_input_set = ['abc','','a','b','c','','ab','ac','','a','a','a','a','','b']
custom_declaration = utils.fileHandler()
input_set = custom_declaration.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/CustomDeclaration.txt")
l_report = CustomDeclaration.CustomDeclaration(input_set)
l_report.result()
print("--- %s seconds ---" % (time.time() - start_time))


# day 7 analyse luggage patterns  
print("Day 7 - Handy Haversacks")
start_time = time.time()
test_input_set = ['light red bags contain 1 bright white bag, 2 muted yellow bags.',
        'dark orange bags contain 3 bright white bags, 4 muted yellow bags.',
        'bright white bags contain 1 shiny gold bag.',
        'muted yellow bags contain 2 shiny gold bags, 9 faded blue bags.',
        'shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.',
        'dark olive bags contain 3 faded blue bags, 4 dotted black bags.',
        'vibrant plum bags contain 5 faded blue bags, 6 dotted black bags.',
        'faded blue bags contain no other bags.',
        'dotted black bags contain no other bags.']
luggage_list = utils.fileHandler()
input_set = luggage_list.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/LuggageScan.txt")
l_luggage = LuggageScan.LuggageScan(input_set)
l_luggage.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 8 in flight console 
print("Day 8 - Handheld Halting")
start_time = time.time()
test_input_set = ['nop +0','acc +1','jmp +4','acc +3','jmp -3','acc -99','acc +1','jmp -4','acc +6']
console_instructions = utils.fileHandler()
input_set = console_instructions.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/GameConsole.txt")
l_console = GameConsole.GameConsole(input_set)
l_console.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 9 Xmas encoding error
print("Day 9 - xmas Encoding error")
start_time = time.time()
test_input_set = [35,20,15,25,47,40,62,55,65,95,102,117,150,182,127,219,299,277,309,576]
xmas_instructions = utils.fileHandler()
input_set = xmas_instructions.parse_2_int_array(os.getcwd() 
    + "/AoCPython/AoC2020/input/Xmas.txt")
#xmas_encoding = Xmas.Xmas(test_input_set, 5)
xmas_encoding = Xmas.Xmas(input_set)
xmas_encoding.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 10 Xmas encoding error
print("Day 10 - Adapter Array")
start_time = time.time()
test_input_set1 = [16,10,15,5,1,11,7,19,6,12,4]
test_input_set = [28,33,18,42,31,14,46,20,48,47,24,23,49,45,19,38,39,11,1,32,25,35,8,17,7,9,4,2,34,10,3]
adapter_array = utils.fileHandler()
input_set = adapter_array.parse_2_int_set(os.getcwd() 
    + "/AoCPython/AoC2020/input/AdapterArray.txt")
valid_adapter = AdapterArray.AdapterArray(input_set)
valid_adapter.result()
print("--- %s seconds ---" % (time.time() - start_time))


# day 11 Ferry waiting area Seating System
print("Day 11 - Seating System")
start_time = time.time()
test_input_set = ['L.LL.LL.LL','LLLLLLL.LL','L.L.L..L..','LLLL.LL.LL','L.LL.LL.LL',
                    'L.LLLLL.LL','..L.L.....','LLLLLLLLLL','L.LLLLLL.L','L.LLLLL.LL']
seat_map = utils.fileHandler()
input_set = seat_map.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/SeatingSystem.txt")
waiting_area = SeatingSystem.SeatingSystem(test_input_set)
waiting_area.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 12 Ferry Manhatan distance
print("Day 12 - Rain risk")
start_time = time.time()
test_input_set = ['F10','N3','F7','R90','F11']
rain_map = utils.fileHandler()
input_set = rain_map.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/RainRisk.txt")
path_area = RainRisk.RainRisk(input_set)
path_area.result()
print("--- %s seconds ---" % (time.time() - start_time))


# day 13 Shuttle Search on time table
print("Day 13 - Shuttle Search")
start_time = time.time()
test_input_set = ['939','7,13,x,x,59,x,31,19']
timetable = utils.fileHandler()
input_set = timetable.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/ShuttleSearch.txt")
path_area = ShuttleSearch.ShuttleSearch(input_set)
path_area.result()
print("--- %s seconds ---" % (time.time() - start_time))


# day 14 Docking Data check bit maps and retrieve sum in decimal for all positions in memory
print("Day 14 -  Docking Data")
start_time = time.time()
test_input_set = ['mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X','mem[8] = 11','mem[7] = 101', 'mem[8] = 0']
test_input_set1 = ['mask = 000000000000000000000000000000X1001X','mem[42] = 100','mask = 00000000000000000000000000000000X0XX','mem[26] = 1']
timetable = utils.fileHandler()
input_set = timetable.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/DockingData.txt")
dock_program = DockingData.DockingData(input_set)
dock_program.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 15 Rambunctious Recitation
print("Day 15: Rambunctious Recitation")
start_time = time.time()
test_input_set = [3,1,2]
input_set = [6,19,0,5,7,13,1]
mem_game = RambunctiousRecitation.RambunctiousRecitation(test_input_set)
#mem_game.result()
print("--- %s seconds ---" % (time.time() - start_time))

# Day 16: Ticket Translation
print("Day 16: Ticket Translation")
start_time = time.time()
test_input_set = ['class: 0-1 or 4-19','row: 0-5 or 8-19','seat: 0-13 or 16-19','',
'your ticket:','11,12,13','','nearby tickets:','3,9,18','15,1,5','5,14,9','38,6,12']
timetable = utils.fileHandler()
input_set = timetable.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/TicketTranslation.txt")
ticket = TicketTranslation.TicketTranslation(input_set)
ticket.result()
print("--- %s seconds ---" % (time.time() - start_time))