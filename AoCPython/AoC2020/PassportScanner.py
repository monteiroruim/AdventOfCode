import re

class PassportScanner():
    def __init__(self, input_map ):
        self.input = input_map
        self.data_dict = dict()
        self.mandatory_keys = ['byr', 'iyr', 'eyr', 'hgt', 'hcl', 'ecl', 'pid']
        self.optional_keys = ['cid']

        self.number_invalid1 = 0
        self.number_invalid2 = 0
        self.number_valid1 = 0
        self.number_valid2 = 0

        self.input_2_dict()


    def input_2_dict(self):
        dict_key = 0
        self.data_dict[dict_key] = dict()
        for line in self.input:            
            if len(line) == 0 or dict_key+1 == len(self.input):
                # count key_attributes valid if = 8 or (=7 and no optional) maybe a validation method
                self.check_passport(self.data_dict[dict_key])
                dict_key +=1
                self.data_dict[dict_key] = dict()
            else:
                 # break line into items k:v
                kv_pairs = line.split(' ')
                #print(dict_key, kv_pairs)
                for props in kv_pairs:
                    # breat items into key_attr and value
                    key_attr, key_val = props.split(':')
                    self.data_dict[dict_key][key_attr] = key_val
        
        self.check_passport(self.data_dict[dict_key])



    def check_num_keys(self, passport):
        if len(passport.keys()) == 8:
            return True
        elif len(passport.keys()) == 7 and all(val in self.mandatory_keys for val in passport.keys() ):
            return True
        else:
            return False


    def check_values(self, passport):
        for key in self.mandatory_keys:
            if key == 'byr':
                #print(key, passport[key])
                if not passport[key].isdigit():
                    return False
                if not(1920 <= int(passport[key]) <= 2002):
                    return False
            elif key == 'iyr': 
                if not passport[key].isdigit():
                    return False
                if not(2010 <= int(passport[key]) <= 2020):
                    return False
            elif key == 'eyr':
                if not passport[key].isdigit():
                    return False
                if not(2020 <= int(passport[key]) <= 2030):
                    return False    
            elif key == 'hgt':
                if passport[key][-2:] not in ('in', 'cm'):
                    return False
                if not passport[key][:-2].isdigit():
                    return False
                if passport[key][-2:] == 'in':
                    if not(59 <= int(passport[key][:-2]) <= 76):
                        return False 
                if passport[key][-2:] == 'cm': 
                    if  not(150 <= int(passport[key][:-2]) <= 193):
                        return False
            elif key == 'hcl':                 
                if len(passport[key]) != 7: 
                    return False
                if passport[key][0] != '#':
                    return False 
                pattern = re.compile("[a-f0-9]+") 
                if bool(pattern.fullmatch(passport[key][0:])):
                    return False
            elif key == 'ecl':
                eye_color_list = ['amb','blu','brn','gry','grn','hzl','oth']
                if passport[key] not in eye_color_list:
                    return False
            elif key == 'pid':
                if not(passport[key].isdigit()):
                    return False 
                if len(passport[key]) != 9:
                    return False
            else:
                print("unknown key") 
                exit()
        
        return True

                
    def check_passport(self, passport):
        if self.check_num_keys(passport):
            self.number_valid1+=1
            #print("Approved 1", passport)
            if self.check_values(passport):
                #print("Approved 2", passport['byr'],passport['iyr'],passport['eyr'],passport['hgt'],passport['hcl'],passport['ecl'],passport['pid'])
                self.number_valid2 += 1
            else:
                #print("Failed 2 ", passport)
                self.number_invalid2 += 1
        else:
            #print("Failed 1,2 ", passport)
            self.number_invalid2 += 1
            self.number_invalid1 +=1


    def result(self):
        # 235 correct
        print("Result part 1: " , self.number_valid1)
        # 194 correct
        print("Result part 2: " , self.number_valid2)