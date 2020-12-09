import os
import time
from utils import utils
from AoC2020 import ExpenseReport, PasswordPolicy, SlopeLandscape, PassportScanner, BoardingPassScanner \
    , CustomDeclaration, LuggageScan, GameConsole, Xmas


# day 1 exercice calculate Elf expenses
print("Day 1 - Expense reports")
start_time = time.time()
inputHandler = utils.fileHandler()
result_set = inputHandler.parse_2_int_set(os.getcwd() 
    + "/AoCPython/AoC2020/input/ExpenseReport.txt")
l_expenses = ExpenseReport.ExpenseReport(result_set)
l_expenses.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 2 exercice validate valid passwords according to policies of North Pole Toboggan Rental Shop
print("Day 2 - Password policy")
start_time = time.time()
test_result_set = ['1-3 a: abcde', '1-3 b: cdefg', '2-9 c: ccccccccc']
pass_policy = utils.fileHandler()
result_set = pass_policy.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/PasswordPolicy.txt")
l_pass_policy = PasswordPolicy.PasswordPolicy(result_set)
l_pass_policy.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 3 check slope landscape and count trees in the shortest paths
print("Day 3 - Slope Landscape")
start_time = time.time()
test_result_set = ['..##.......','#...#...#..','.#....#..#.','..#.#...#.#',
                    '.#...##..#.','..#.##.....','.#.#.#....#','.#........#',
                    '#.##...#...','#...##....#','.#..#...#.#']
slope_map = utils.fileHandler()
result_set = slope_map.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/SlopeLandscape.txt")
l_slope_landscape = SlopeLandscape.SlopeLandscape(result_set)
l_slope_landscape.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 4 process batch passports (ids) and identify valid ones
print("Day 4 - Passport scanner")
start_time = time.time()
test_result_set = ['ecl:gry pid:860033327 eyr:2020 hcl:#fffffd',
'byr:1937 iyr:2017 cid:147 hgt:183cm',
'',
'iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884',
'hcl:#cfa07d byr:1929',
'',
'hcl:#ae17e1 iyr:2013',
'eyr:2024',
'ecl:brn pid:760753108 byr:1931',
'hgt:179cm',
'',
'hcl:#cfa07d eyr:2025 pid:166559648',
'iyr:2011 ecl:brn hgt:59in']
passport_batch = utils.fileHandler()
result_set = passport_batch.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/PassportScanner.txt")
l_passport_scanner = PassportScanner.PassportScanner(result_set)
l_passport_scanner.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 5 check boarding pass and fin your place
print("Day 5 - Binary boarding")
start_time = time.time()
test_result_set = ['BFFFBBFRRR', 'FFFBBBFRRR', 'BBFFBBFRLL', 'FBFBBFFRLR']
boarding_passes = utils.fileHandler()
result_set = boarding_passes.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/BoardingPassScanner.txt")
l_scanner = BoardingPassScanner.BoardingPassScanner(result_set)
l_scanner.result()
print("--- %s seconds ---" % (time.time() - start_time))


# day 6 analyse customs declaration forms  
print("Day 6 - Custom Customs")
start_time = time.time()
test_result_set = ['abc','','a','b','c','','ab','ac','','a','a','a','a','','b']
custom_declaration = utils.fileHandler()
result_set = custom_declaration.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/CustomDeclaration.txt")
l_report = CustomDeclaration.CustomDeclaration(result_set)
l_report.result()
print("--- %s seconds ---" % (time.time() - start_time))


# day 7 analyse luggage patterns  
print("Day 7 - Handy Haversacks")
start_time = time.time()
test_result_set = ['light red bags contain 1 bright white bag, 2 muted yellow bags.',
        'dark orange bags contain 3 bright white bags, 4 muted yellow bags.',
        'bright white bags contain 1 shiny gold bag.',
        'muted yellow bags contain 2 shiny gold bags, 9 faded blue bags.',
        'shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.',
        'dark olive bags contain 3 faded blue bags, 4 dotted black bags.',
        'vibrant plum bags contain 5 faded blue bags, 6 dotted black bags.',
        'faded blue bags contain no other bags.',
        'dotted black bags contain no other bags.']
luggage_list = utils.fileHandler()
result_set = luggage_list.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/LuggageScan.txt")
l_luggage = LuggageScan.LuggageScan(result_set)
l_luggage.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 8 in flight console 
print("Day 8 - Handheld Halting")
start_time = time.time()
test_result_set = ['nop +0','acc +1','jmp +4','acc +3','jmp -3','acc -99','acc +1','jmp -4','acc +6']
console_instructions = utils.fileHandler()
result_set = console_instructions.parse_line_2_list(os.getcwd() 
    + "/AoCPython/AoC2020/input/GameConsole.txt")
l_console = GameConsole.GameConsole(result_set)
l_console.result()
print("--- %s seconds ---" % (time.time() - start_time))

# day 9 Xmas encoding error
print("Day 9 - xmas Encoding error")
start_time = time.time()
test_result_set = [35,20,15,25,47,40,62,55,65,95,102,117,150,182,127,219,299,277,309,576]
xmas_instructions = utils.fileHandler()
result_set = xmas_instructions.parse_2_int_array(os.getcwd() 
    + "/AoCPython/AoC2020/input/Xmas.txt")
#xmas_encoding = Xmas.Xmas(test_result_set, 5)
xmas_encoding = Xmas.Xmas(result_set)
xmas_encoding.result()
print("--- %s seconds ---" % (time.time() - start_time))