class d4:
    '''
    class to resolve exercices from day 4
    find number of different combinations for the password
    '''
    def __init__(self, p_input):
        '''
        constructor for the class
        input give is a string with a range
        '''
        self.puzzle_input = p_input
        self.min_val = 0
        self.max_val = 99999999999
        self.number_pwds = 0
        self.pair = 0
        self.sequence = 0
    

    def split_input(self):
        split_res = self.puzzle_input.split("-")
        self.min_val = int(split_res[0])
        self.max_val = int(split_res[1])

    def has_pair(self, lst_num):
        my_indexes = []
        for pos, dig in enumerate(lst_num):
            if pos not in my_indexes:
                my_indexes = [i for i, x in enumerate(lst_num) if x == dig]
                number_hits = len(my_indexes)
                if number_hits == 2 :
                    #print("we have at least a pair ", number_hits, "for", dig, "in", lst_num )
                    if my_indexes[0] == pos and my_indexes[1] == pos+1:
                        self.pair = 1
                        break
                elif number_hits > 2:
                        #print("does not match criteria")
                        self.pair = 0
                else:
                    #print("no pair")
                    self.pair = 0


    def has_pair1(self, lst_num):
        lst_size = len(lst_num)
        for pos, dig in enumerate(lst_num):
            if pos < lst_size-1:
                if dig == lst_num[pos+1]:
                    self.pair = 1
                    break            
                else:
                    self.pair = 0


    def is_ordered(self, lst_num):
        if sorted(lst_num) == lst_num:
            self.sequence = 1
        else:
            self.sequence = 0

    
    def get_next_increase(self, lst_num):
        lst_size = len(lst_num)
        for pos, dig in enumerate(lst_num):
            if pos < lst_size-1:
                if dig > lst_num[pos+1]:
                    for i in range(pos, lst_size):   
                        lst_num[i] = dig
                    return int(''.join(str(j) for j in lst_num))                
            else:
                return int(''.join(str(j) for j in lst_num)) + 1


    def meet_criteria(self):
        if self.pair == 1 and self.sequence==1:
            return True
        else:
            return False
        
    def calc_num_passwords_1(self):
        '''
        111111 meets these criteria (double 11, never decreases).
        223450 does not meet these criteria (decreasing pair of digits 50).
        123789 does not meet these criteria (no double).
        '''
        # v_min, v_max = 
        self.split_input()
        tmp_seq = self.min_val
        while tmp_seq<self.max_val:

            lst_num = [int(x) for x in str(tmp_seq)]
            self.has_pair1(lst_num)
            self.is_ordered(lst_num)

            # check rule 1 (at least 1 pair) and rule 2 (has ordered digits)
            if self.meet_criteria():
                self.number_pwds+=1
                #print(tmp_seq)

            self.pair = 0
            self.sequence = 0
            # validate number and increment
            tmp_seq = self.get_next_increase(lst_num)

        
    def calc_num_passwords(self):
        '''
        111111 meets these criteria (double 11, never decreases).
        223450 does not meet these criteria (decreasing pair of digits 50).
        123789 does not meet these criteria (no double).
        '''
        # v_min, v_max = 
        self.split_input()
        tmp_seq = self.min_val
        while tmp_seq<self.max_val:

            lst_num = [int(x) for x in str(tmp_seq)]
            self.has_pair(lst_num)
            self.is_ordered(lst_num)

            # check rule 1 (at least 1 pair) and rule 2 (has ordered digits)
            if self.meet_criteria():
                self.number_pwds+=1
                #print(tmp_seq)

            self.pair = 0
            self.sequence = 0
            # validate number and increment
            tmp_seq = self.get_next_increase(lst_num)
            



