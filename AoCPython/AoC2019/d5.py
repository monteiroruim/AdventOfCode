class d5:
    '''
    class to resolve exercices from day 5
    extending d2 intcode program
    '''
    def __init__(self, intcode, input_number, calc=False):
        '''
        constructor for d5 exercice
        :param intcode is array of integers with the coding sequences
        '''
        self.oper_pointer = 0
        self.output = 0
        self.input_digit = input_number
        self.flag_composite_opcode = 0
        self.intcode = intcode
        self.n_items = len(self.intcode)
        if calc:
            self.upgrade_test()


    def set_intcode(self, new_intcode):
        if len(new_intcode) == 0:
            print("No intcode program provided output: ", self.output)
            exit()
        else:
            self.intcode = new_intcode
            self.n_items = len(self.intcode)


    def set_input(self, input_digit):
        self.input_digit = input_digit


    def get_output(self):
        return self.output


    def get_pos_value(self, op_val, op_mode):
        #print("definitions", op_val, op_mode, ": ", pos_val, self.intcode[op_val])
        return self.intcode[op_val] if int(op_mode) == 0 else op_val

    def apply_operation(self, working_data, op_code, instr_modes):
        # print("Operation", op_code)
        # print("working array", working_data)
        # print("instructions mode ", instr_modes)
        if op_code == 1:
            self.intcode[working_data[3]] = self.get_pos_value(working_data[1], instr_modes[0]) + self.get_pos_value( working_data[2], instr_modes[1])
        elif op_code == 2:
            self.intcode[working_data[3]] = self.get_pos_value(working_data[1], instr_modes[0]) * self.get_pos_value( working_data[2], instr_modes[1])
        elif op_code == 3:
            self.intcode[working_data[1]] = self.input_digit
        elif op_code == 4:
            # print("self.output", self.output)
            self.output = self.get_pos_value( working_data[1], instr_modes[0])
        elif op_code == 5:
            self.oper_pointer = self.get_pos_value( working_data[2], instr_modes[1]) if self.get_pos_value( working_data[1], instr_modes[0]) != 0 else 0
        elif op_code == 6:
            self.oper_pointer = self.get_pos_value( working_data[2], instr_modes[1]) if self.get_pos_value( working_data[1], instr_modes[0]) == 0 else 0
        elif op_code == 7:
            self.intcode[working_data[3]] = 1 if self.get_pos_value( working_data[1], instr_modes[0]) < self.get_pos_value( working_data[2], instr_modes[1]) else 0
        elif op_code == 8:
            self.intcode[working_data[3]] = 1 if self.get_pos_value( working_data[1], instr_modes[0]) == self.get_pos_value( working_data[2], instr_modes[1]) else 0
        else:
            print("unknown operation, exit code ", self.output)


    def get_opcode(self, instruction):
        #print("instruction", instruction)
        def_instr_modes = "000"
        str_instruction = str(instruction)
        if len(str_instruction) == 1:
            return instruction, def_instr_modes
        elif len(str_instruction) > 1:
            if instruction == 99 or str_instruction[0:2] == "99":
                return 99, def_instr_modes
            else:
                my_modes_inv = str_instruction[::-1]
                return int(str_instruction[-2:]), \
                    my_modes_inv[2:].ljust(3,'0')
        else:
            return 0,def_instr_modes
        
    
    def get_array_from_intcode(self, start_point):
        opcode, instr_modes = self.get_opcode(self.intcode[start_point])
        # print("returned work data", opcode, instr_modes)
        if opcode == 99:
            return [], self.n_items, opcode, instr_modes
        elif opcode == 1:
            return self.intcode[start_point:start_point+4], 4, opcode, instr_modes
        elif opcode == 2:
            return self.intcode[start_point:start_point+4], 4, opcode, instr_modes
        elif opcode == 3:
            return self.intcode[start_point:start_point+2], 2, opcode, instr_modes
        elif opcode == 4:
            return self.intcode[start_point:start_point+2], 2, opcode, instr_modes
        elif opcode == 5:
            return self.intcode[start_point:start_point+3], 3, opcode, instr_modes
        elif opcode == 6:
            return self.intcode[start_point:start_point+3], 3, opcode, instr_modes
        elif opcode == 7:
            return self.intcode[start_point:start_point+4], 4, opcode, instr_modes
        elif opcode == 8:
            return self.intcode[start_point:start_point+4], 4, opcode, instr_modes
        else:
            print("Unknown instruction code ", opcode, "indexed in ", start_point)
            return [], self.n_items, 99, ["0", "0", "0", "0", "0"]


    def upgrade_test(self):
        i = 0
        while i < self.n_items:
            # strip first position of the increment and get opcode and array
            instr_array, increment, op_code, instr_modes = self.get_array_from_intcode(i)
      
            if len(instr_array) == 0:
                print("exiting ", i, "because of value ", self.intcode[i], " output: ", self.output)
                break
            
            self.apply_operation(instr_array, op_code, instr_modes)
            if self.oper_pointer > 0:
                i = self.oper_pointer
                self.oper_pointer = 0
            else:
                i = i + increment
