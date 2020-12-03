class PasswordPolicy():
    def __init__(self, input_map, word_delimiter=None, range_delimiter=None):  
        self.input_set = input_map
        self.result_dict = {}
        
        if word_delimiter is None:
            self.word_delimiter = ' '
        else:
            self.word_delimiter = word_delimiter
        if range_delimiter is None:
            self.range_delimiter = '-'
        else:
            self.range_delimiter = range_delimiter
        
        self.parse_input_list()


    def parse_input_list(self):
        for idx, item in enumerate(self.input_set):
            range_str, key, pwd = item.split(self.word_delimiter)
            key_char = key[0]
            min_hits, max_hits = map(int, range_str.split(self.range_delimiter))
            self.result_dict[idx] = {
                'search_key': key_char,
                'pass_code': pwd,
                'low_idx': min_hits,
                'high_idx': max_hits 
            }



    def policy1(self):
        total_pwds = 0
        for val in self.result_dict:
            #print(self.result_dict[val])
            total_hits = self.result_dict[val]['pass_code'].count(self.result_dict[val]['search_key'])
            if self.result_dict[val]['high_idx'] >= total_hits >= self.result_dict[val]['low_idx']:
                total_pwds+=1

        return total_pwds


    def policy2(self):
        total_pwds = 0
        for val in self.result_dict:
            if bool(self.result_dict[val]['pass_code'][self.result_dict[val]['low_idx'] - 1] == self.result_dict[val]['search_key']) !=  bool(self.result_dict[val]['pass_code'][self.result_dict[val]['high_idx'] - 1] == self.result_dict[val]['search_key']) :
                total_pwds+=1

        return total_pwds
    
    
    def result(self):        
        res1 = self.policy1()
        print("Result part 1: " + str(res1))
        res2 = self.policy2()
        print("Result part 2: " + str(res2))
