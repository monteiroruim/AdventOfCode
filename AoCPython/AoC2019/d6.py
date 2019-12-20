class d6:
    def __init__(self, file_path_input):
        '''
        constructor for d6 class exercice
        :param intcode is array of integers with the coding sequences
        '''
        self.parent_array = []
        self.child_array = []
        # key is the coordinate, list of orbits = value the path to root
        self.info_table = {}
        self.parse_input(file_path_input)
        self.result_61 = 0
        self.result_62 = 0

    def parse_input(self, path_file_name):
        with open(path_file_name, 'r') as f:
            lines = f.readlines()
        f.close()
        for line in lines:
            my_coord = line.split(")")
            self.parent_array.append(my_coord[0].strip())
            self.child_array.append(my_coord[1].strip())
    

    def fill_parents(self, coordinate):
        for i, p in enumerate(self.info_table[coordinate]):
            self.info_table[p] = self.info_table[coordinate][i+1:]
    
    def calc_path(self, coordinate, parent):
        '''
        get the full path for a starting point coordinate
        if the coordinate was already stored skip calculation
        :coordinate child key
        :parent parent key
        '''
        
        path_to_root = []
        prt=parent
        
        if coordinate not in self.info_table.keys():
            path_to_root.append(prt)
            while len(prt) > 0:
                if prt in self.child_array: 
                    prt = self.parent_array[self.child_array.index(prt)]
                    path_to_root.append(prt)
                else:
                    prt = ""
            
            self.info_table[coordinate] = path_to_root
            self.fill_parents(coordinate)
            
    
    def process_coordinates(self):
        for i in range(1, len(self.child_array)):
            self.calc_path(self.child_array[i], self.parent_array[i])
        
        self.get_answer61()
        

    def get_answer61(self):
        for key in self.info_table.keys():
            self.result_61 += len(self.info_table[key])


    def get_answer62(self):
        for k,v in enumerate(self.info_table['SAN']):
            if v in self.info_table['YOU']:
                first_match = v
                self.result_62 = k + self.info_table['YOU'].index(v)
                break
        print(self.info_table['SAN'])
        print(self.info_table['YOU'])
        print(first_match)

        