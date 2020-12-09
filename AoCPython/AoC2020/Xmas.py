class Xmas():
    def __init__(self, input_map, preamble_slice=None):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0
        self.input_length = len(self.input)
        if preamble_slice is None:
            self.preamble = 25 # value from exercice
        else:
            self.preamble = preamble_slice


    def find_error(self):
        max_idx = self.preamble
        min_idx = 0
        l_exit = True
        while (max_idx < self.input_length and l_exit):
            if any(self.input[max_idx] == y + z for yi, y in enumerate(self.input[min_idx:max_idx]) for zi, z in enumerate(self.input[min_idx:max_idx]) if zi != yi):
                max_idx+=1
                min_idx+=1
            else:                
                l_exit = False            
        self.result1 = self.input[max_idx]
        
    
    def encryption_weakness(self):
        contiguous_sum = 0
        candidate_list = []
        start_idx = 0
        res_found = False
        while not(res_found):
            start_idx +=1
            candidate_list = []
            contiguous_sum = 0
            for num in self.input[start_idx:]:
                contiguous_sum += num
                candidate_list.append(num)
                if contiguous_sum == self.result1:
                    self.result2 = min(candidate_list) + max(candidate_list)
                    res_found = True
                    break
                elif contiguous_sum > self.result1:
                    res_found = False
                    break


    def result(self):
        self.find_error()
        #  correct 
        print("Result part 1: " , self.result1)
        self.encryption_weakness()
        #  correct 
        print("Result part 2: " , self.result2)