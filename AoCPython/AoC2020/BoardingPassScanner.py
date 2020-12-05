class BoardingPassScanner():
    def __init__(self, input_map, plane_row_num=None, plane_col_num=None ):
        self.starting_point = 0
        self.input = input_map
        if plane_row_num is None:
            self.plane_rows = 127
        else:
            self.plane_rows = plane_row_num
        if plane_col_num is None:
            self.plane_cols = 7
        else:
            self.plane_cols = plane_col_num        
        self.max_seat_id = 0
        self.my_seat_id = 0
        self.seat_list = []
    

    def calc_seat_id(self, row, col):
        return int(row)*8+int(col)
    

    def parse_input(self):
        for b_pass in self.input:
            #print(b_pass)
            # break inputs 
            row_code = b_pass[:-3]
            col_code = b_pass[-3:]
            # binary search over each input type
            row = int(self.binary_lookup(row_code),2)
            col = int(self.binary_lookup(col_code),2)
            
            # store seatID
            self.seat_list.append(self.calc_seat_id(row, col ))


            
    def binary_lookup(self, x):
        bin_str = []
        for cd in x:
            if cd in ['F','L']:
                bin_str.append('0')
            elif cd in ['B', 'R']:
                bin_str.append('1')
        return ''.join(bin_str)


    def set_max_id(self):
       self.max_seat_id = max(self.seat_list)



    def find_my_seat(self):
        self.seat_list.sort()
        for x in range(self.seat_list[0], self.seat_list[-1]): 
            if x not in self.seat_list:
                if x+1 in self.seat_list and x-1 in self.seat_list:
                    self.my_seat_id = x


    def result(self):
        self.parse_input()
        self.set_max_id()
        # correct answer: 832
        res1 = self.max_seat_id
        print("Result part 1: " , res1)
        self.find_my_seat()
        # correct answer: 
        res2 = self.my_seat_id
        print("Result part 2: " , res2)