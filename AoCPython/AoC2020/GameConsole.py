import copy
class GameConsole():
    def __init__(self, input_map):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0
        self.stop = False


    def calc_results(self, commands):
        processed_pos = []
        idx = 0
        accumulated = 0
        max_pos = len(commands)
   
        while (idx not in processed_pos and idx<max_pos):
            instr, arg = commands[idx].split(' ', 1) 
            processed_pos.append(idx)
            #print(idx, 'processing ', instr, arg)
            if instr == 'acc':
                #print('increase global value', arg)
                accumulated+=int(arg)
                idx+=1
            elif instr == 'jmp':
                #print('jump to new index', arg)
                idx+=int(arg)
            else:
                #print('no operation')
                idx+=1
        
        if max_pos == idx:
            self.stop = True
        return accumulated

    
    def fix_corrupted(self, commands):
        while not(self.stop):
            for j, val in enumerate(self.input):
                tmp = copy.deepcopy(self.input)
                instr, _ = val.split(' ', 1)
                if instr == 'jmp':
                    tmp[j] = tmp[j].replace('jmp', 'nop')
                elif instr == 'nop':
                    tmp[j] = tmp[j].replace('nop', 'jmp')
           
                self.result2 = self.calc_results(tmp)
                if self.stop:
                    break
                
                
           # break


    def result(self):
        self.result1 = self.calc_results(self.input)
        # 235 correct
        print("Result part 1: " , self.result1)

        self.fix_corrupted(self.input)
        # 194 correct
        print("Result part 2: " , self.result2)