class d2:
    def __init__(self, i_intcode, i_break_array_size):
        '''
        constructor for d2 exercice
        :param intcode is array of integers with the coding sequences
        '''
        if len(i_intcode) == 0:
            print("No intcode program provided")
            exit()
        else:
            self.intcode = i_intcode

        if i_break_array_size is None:
            self.break_array_size = 4
        else:
            self.break_array_size = i_break_array_size

        self.n_items = len(self.intcode)
        self.n_iter = int(self.n_items/self.break_array_size)


    def override_position_val(self, pos, val):
        self.intcode[pos] = val


    def break_intcode(self, start_pos, len_sub_array):
        return self.intcode[start_pos:start_pos+len_sub_array]


    def apply_operation(self, working_data):
        if working_data[0] == 1:
            self.intcode[working_data[3]] = self.intcode[working_data[1]]+self.intcode[working_data[2]]
            
        elif working_data[0] == 2:
            self.intcode[working_data[3]] = self.intcode[working_data[1]] * self.intcode[working_data[2]]
        else:
            print("unknown operation")
            exit()


    def restore_gravity(self):
        intcode_len = len(self.intcode)
        start_point = 0
        for iteration in range(1, self.n_iter):
            working_array = self.break_intcode(start_point, self.break_array_size)
            if working_array[0] == 99:
                print(self.intcode)
                exit()
            else:
                self.apply_operation(working_array)
            start_point=start_point+4
        print(self.intcode)


    def destroy(self):
        self.intcode = []
        self.break_array_size = None
        self.n_items = len(self.intcode)
        self.n_iter = None