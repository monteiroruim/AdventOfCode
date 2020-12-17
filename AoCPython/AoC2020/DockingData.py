from re import compile, findall
from itertools import product
from copy import deepcopy

class DockingData():
    def __init__(self, input_map):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0

        self.mask_keyword = 'mask'
        self.mem_keyword = 'mem'
        self.floating_val = 'X'
        self.bit36_format = '036b'
        self.memory_dict = dict()
        self.memory_dict_v2 = dict()


    def floating_mask(self, bin_num, bin_mask, mem_val):
        x_idx = []
        bin_id = list(format(int(bin_num), self.bit36_format)) 
    
        for i, _ in enumerate(bin_id):
            if bin_mask[i] != str(0):
                bin_id[i] = bin_mask[i]
                if bin_mask[i] == self.floating_val:
                    x_idx.append(i)

        floating_res = list(product([0,1], repeat=len(x_idx)))
        bin_id_cpy = deepcopy(bin_id)
        for res in floating_res:
            for (z, new) in zip(x_idx, res):
                bin_id_cpy[z] = str(new)
            new_mem_item = int("".join(bin_id_cpy), 2)
            self.memory_dict_v2[new_mem_item] = mem_val
        

    def override_init(self):
        mem_handler = compile(r'mem\[(\d*)\]\s=\s(\d*)')
        mask = ""
        for row in self.input:
            if row.startswith(self.mask_keyword):
                mask = row.split()[2]
                replacements = [(int(i), v) for i, v in enumerate(mask) if v != self.floating_val]
            elif row.startswith(self.mem_keyword):
                mem_id, desc_val = mem_handler.findall(row)[0]
                binary_desc = list(format(int(desc_val), self.bit36_format))


                for pos, val in replacements:
                    binary_desc[pos] = val

                self.memory_dict[mem_id] = int("".join(binary_desc), 2)
                # part 2
                self.floating_mask(mem_id, mask, int(desc_val))

            else:
                print('unknown instruction, skiping ', row)

            self.result1 = sum(self.memory_dict.values())
            self.result2 = sum(self.memory_dict_v2.values())
       

    def result(self):
        self.override_init() # 109862793554 to low
        print("Result part 1: " , self.result1)
        print("Result part 2: " , self.result2)
