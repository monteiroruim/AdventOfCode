from AoC2019 import d5
class d7:
    def __init__(self, intcode=[], amps="01234"):
        '''
        constructor for d7 class exercice
        :param input_codes is array of integers with the coding sequences
        '''
        self.d71_result = 0
        self.d71_result_seq = ""
        self.intcode = intcode
        self.amplifiers_preset = amps
        self.thruster_cfg = {}
        self.input_number = 0

        '''
        example document {
            01234: [
                0: {inputs: [0,0], ouput: 0},
                1: {inputs: [1,, ouput: 0},
                2: {inputs: [0,0], ouput: 0},
                3: {inputs: [0,0], ouput: 0},
                4: {inputs: [0,0], ouput: 0}
            ]

        }
        '''


    def set_amp_preset(self, num_amps):
        res = ""
        if len(num_amps) > 0:
            for i in num_amps:
                res = res + str(i)
        else:
            print("Number of amplifiers unknown")
            exit()
        self.amplifiers_preset = res


    def set_input_code(self, input_code):
        self.intcode = input_code


    def settings_combinations(self, s):
        base = len(s)
        for n in range(base**base):
            yield "".join(s[n // base**(base-d-1) % base] for d in range(base))


    def get_all_combinations(self):
        for c in self.settings_combinations(self.amplifiers_preset):
            if len("".join(set(c))) == len(self.amplifiers_preset):
                self.thruster_cfg[c] = {'input': None, 'output': None}
                self.thruster_cfg[c]['input'] = [(int(c[i]), d5.d5(self.intcode, int(c[i]), True)) for i in range(len(c))]
            else:
                pass 
   
    
    def amplify_thrusters(self):
        self.get_all_combinations()
        for val in self.thruster_cfg:
            print ( " --------------------")
            print(val, self.thruster_cfg[val])
            for inp in self.thruster_cfg[val]['input']:
                print ( "< -------------------- > ")
                # print(inp)
                _ , program = inp
                program.set_input(self.input_number)
                program.upgrade_test()
                self.input_number = program.get_output()

            self.thruster_cfg[val]['output'] = self.input_number
            print(self.thruster_cfg[val])
            self.input_number = 0

