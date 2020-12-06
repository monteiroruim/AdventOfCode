
class CustomDeclaration():
    def __init__(self, input_map ):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0

        self.data_dict = dict()


    def input_2_dict(self):
        dict_key = 0
        self.data_dict[dict_key] = dict()
        group_vals = ""
        group_list = []
        
        for line in self.input:
            # print(dict_key, line)       
            if len(line) == 0 or dict_key+1 == len(self.input):
                
                for i, w in enumerate(group_list):
                    if len(group_list) == 1:
                        unique2 = set(w)
                    elif i == 0:
                        unique2 = set(w)
                    else:
                        unique2 = unique2.intersection(w)
                
                final_string = group_vals.join(group_list)
                self.data_dict[dict_key]['answers'] = final_string
                self.data_dict[dict_key]['unique'] = set(l for l in final_string)
                self.data_dict[dict_key]['unique_fix'] = unique2
                self.result1 += len(self.data_dict[dict_key]['unique'])
                self.result2 += len(self.data_dict[dict_key]['unique_fix'])
         
                dict_key +=1
                group_list = []
                group_vals = ""
                self.data_dict[dict_key] = dict()
            else:
                group_list.append(line)
        for i, w in enumerate(group_list):
            if len(group_list) == 1:
                unique2 = set(w)
            elif i == 0:
                unique2 = set(w)
            else:
                unique2 = unique2.intersection(w)
        
        final_string = group_vals.join(group_list)
        self.data_dict[dict_key]['answers'] = final_string
        self.data_dict[dict_key]['unique'] = set(l for l in final_string)
        self.data_dict[dict_key]['unique_fix'] = unique2
        self.result1 += len(self.data_dict[dict_key]['unique'])
        self.result2 += len(self.data_dict[dict_key]['unique_fix'])


    def result(self):
        self.input_2_dict()
        #  correct
        print("Result part 1: " , self.result1)
        #  correct
        print("Result part 2: " , self.result2)