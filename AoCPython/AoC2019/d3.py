class d3:
    '''
    output the intersecions based in 2 inputs 
    '''
    def __init__(self, chain1, chain2):
        '''
        constructor
        initializes vars, input constructors are 2 arrays of strings
        :param chain1, chain2 the 2 arrays of strings
        short distances olds the shortest calculated value to the source of the wires
        coordinates 1 and 2 store the array with the tupple (x,y) values for each instruction expansion
        intersect list holds the list of intersections between the wires
        '''
        self.wirepath1 = chain1
        self.wirepath2 = chain2
        self.shortest_distance = 9999999999
        self.coordinates_1 = []
        self.coordinates_2 = []
        self.intersect_list = []
        self.less_step = 999999999999


    def parseInstruction(self, instruction_def):
        digit_list = filter(str.isdigit, instruction_def)
        distance = int("".join(digit_list))
        side = instruction_def[0]
        return side, distance


    def expandCoordinates(self, input_array):
        coordinate_list = []
        last_inc_y = 0  
        last_inc_x = 0
        for c in input_array:
            coordinate_list_tmp = []
            uprl, dist = self.parseInstruction(c)
            if len(coordinate_list) > 0: 
                last_inc_x, last_inc_y = coordinate_list[-1] 
            else:
                coordinate_list.append((0,0))
                
            i = 1
            if uprl == "R":
                idx=last_inc_x
                while (i<=dist):
                    idx+=1
                    i+=1
                    coordinate_list_tmp.append((idx,last_inc_y))               
            elif uprl == "L":
                idx=last_inc_x
                while (i<=dist):
                    idx-=1
                    i+=1
                    coordinate_list_tmp.append((idx,last_inc_y))  
            elif uprl == "U":
                idx=last_inc_y
                while (i<=dist):
                    idx+=1
                    i+=1
                    coordinate_list_tmp.append((last_inc_x,idx))  
            elif uprl == "D":
                idx=last_inc_y
                while (i<=dist):
                    idx-=1
                    i+=1
                    coordinate_list_tmp.append((last_inc_x,idx))  
            else:
                print("unknown instruction")
                exit() 

            coordinate_list=coordinate_list + coordinate_list_tmp
            
      
        return coordinate_list

    
    def intersect_arrays(self):
        return list(set(self.coordinates_1) & set(self.coordinates_2))

    def path2coordinates(self):
        self.coordinates_1 = self.expandCoordinates(self.wirepath1)
        self.coordinates_2 = self.expandCoordinates(self.wirepath2)
        

    def manhattan_distance(self, coordinates):
        x, y = coordinates
        t = abs(x) + abs(y)
        if self.shortest_distance > t and t > 2:
            return t
        else:
            return self.shortest_distance


    def get_shortest_distance(self):
        self.path2coordinates()
        self.intersect_list = self.intersect_arrays()
        if (0,0) in self.intersect_list:
            self.intersect_list.remove((0,0))

        for val in self.intersect_list:
            self.shortest_distance = self.manhattan_distance(val)


    def calc_less_steps(self):
        for ic in self.intersect_list:
            val1 = self.coordinates_1.index(ic)
            val2 = self.coordinates_2.index(ic)
            tot_val = abs(val1) + abs(val2)
            if tot_val < self.less_step:
                self.less_step = tot_val
