class LuggageScan():
    def __init__(self, input_map, start_key=None):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0

        if start_key is None:
            self.search_color = 'shiny gold'
        else:
            self.search_color = start_key

        self.stop_key = 'no other'
        self.data_dict = dict()
        self.parse_rules()


    def clean_color(self, str):
        return str.replace('bags', '').replace('bag', '').replace('.', '').strip()


    def count_child(self, child_color):
        if child_color == self.stop_key:
            return 0, child_color
        else:
            num, color = child_color.split(' ', 1)
        return int(num), color

    def parse_rules(self):
        # iterate over rules
        for rule in self.input:
            # handle dict keys
            key_attr, key_val = rule.split('contain')            
            key_attr = self.clean_color(key_attr)
            #print(key_attr)

            child_list = key_val.split(',')
            clean_child = []
            for child in child_list:
                amount, clean_color = self.count_child(self.clean_color(child))
                if clean_color == self.stop_key:
                    clean_child = []
                else:
                    clean_child.append( (clean_color, amount))
                        
            self.data_dict[key_attr] = clean_child
        #print(self.data_dict)
    

    def calc_ammount(self):
        cnt_colors =0
        total_bags = 0
        for key, value in self.data_dict.items():
            search_list = list(map(lambda x: x[0], value))
            # print('search_list2',search_list, cnt_colors )
            while len(search_list) > 0:
                bag = search_list.pop()
                if bag == self.search_color:
                    cnt_colors+=1
                    break
                for other_bag, ammount in self.data_dict[bag]:
                    search_list.append(other_bag)
        
        self.result1 = cnt_colors
        
        # handle part 2, cant be in previous cycle
        gold_childs = self.data_dict[self.search_color] 
        while len(gold_childs) > 0:
            bag_item = gold_childs.pop()
            # print(bag_item)
            total_bags+=int(bag_item[1])
            for other_bag, ammount in self.data_dict[bag_item[0]]:
                gold_childs.append((other_bag, int(ammount)*int(bag_item[1])))

        self.result2 = total_bags

    def result(self):
        self.calc_ammount()
        #  correct 332
        print("Result part 1: " , self.result1)
        #  correct 10875
        print("Result part 2: " , self.result2)