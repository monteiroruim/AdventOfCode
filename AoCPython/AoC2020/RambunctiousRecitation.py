class RambunctiousRecitation():
    def __init__(self, input_map):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0
        self.target_1 = 2020
        self.target_2 = 30000000
        self.input_dict = dict()


    def preset_memory(self):
        for i,v in enumerate(self.input):
            self.input_dict[v] = i+1
    

    def memory_game(self):
        inc = len(self.input) +1
        last_item = 0
        while inc <= self.target_2+1:
            last_inc = self.input_dict.get(last_item, None)
            self.input_dict[last_item] = inc
            if inc == self.target_1:
                self.result1 = last_item
            if inc == self.target_2:
                self.result2 = last_item
            last_item = inc - last_inc if last_inc else 0
            inc+=1

    
    def result(self):
        self.preset_memory()
        self.memory_game()
        print("Result part 1: " , self.result1)
        print("Result part 2: " , self.result2)