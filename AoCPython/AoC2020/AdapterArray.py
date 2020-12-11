from collections import Counter

class AdapterArray():
    def __init__(self, input_map):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0
        self.charging_outlet = 0
        self.charger2device = 3
        self.input_length = len(self.input)

    def find_chain(self):
        previous_value = self.charging_outlet
        sorted_input = sorted(self.input)
        # add final position charger adapter
        sorted_input.append(sorted_input[-1] + self.charger2device)
        counter = [0,0,0,0]
        for adpater in sorted(sorted_input):
            diff = adpater - previous_value
            counter[diff]+=1
            previous_value = adpater
                    
        self.result1 = counter[1] * counter[3]
        # get part 2 from here
        self.find_combinations(sorted_input)


    def find_combinations(self, sorted_input):
        cnt = Counter()
        cnt[0] = 1
        for adapter in sorted_input:
            cnt[adapter] = cnt[adapter-1] + cnt[adapter-2] + cnt[adapter-3]

        self.result2 = cnt[sorted_input[-1]]


    def result(self):
        self.find_chain()
        #  correct 1917
        print("Result part 1: " , self.result1)
        #  correct 113387824750592
        print("Result part 2: " , self.result2)