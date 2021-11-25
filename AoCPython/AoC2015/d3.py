class d3:
    def __init__(self, input):
        self.instruction_list = input
        self.santa_map = {}
        self.robot_santa_map = {}
        self.santa_location = (0,0)
        self.robot_santa_location = (0,0)

    def calc_houses(self):
        '''
        --- Day 3: Perfectly Spherical Houses in a Vacuum ---
        Santa is delivering presents to an infinite two-dimensional grid of houses.

        He begins by delivering a present to the house at his starting location, and then an elf at the North Pole calls him via radio and tells him where to move next. 
        Moves are always exactly one house to the north (^), south (v), east (>), or west (<). After each move, he delivers another present to the house at his new location.

        However, the elf back at the north pole has had a little too much eggnog, and so his directions are a little off, and Santa ends up visiting some houses more than once. 
        How many houses receive at least one present?

        For example:

        > delivers presents to 2 houses: one at the starting location, and one to the east.
        ^>v< delivers presents to 4 houses in a square, including twice to the house at his starting/ending location.
        ^v^v^v^v^v delivers a bunch of presents to some very lucky children at only 2 houses.
        '''
        neigh_map = {}
        start_key = (0,0)
        neigh_map[start_key] = 1
        # preset initial coordinates
        self.santa_map[start_key] = 1
        self.robot_santa_map[start_key] = 1
        i = 0
        j = 0
        for x,v in enumerate(self.instruction_list):
            # print(v)
            if v == '^':
                i+=1
            elif v == 'v':
                i-=1
            elif v=='<':
                j-=1
            elif v=='>':
                j+=1
            else:
                print("unknow intruction in position ", x)
                break
            # add data to dictionary or increment existing entry
            if (i,j) in neigh_map.keys():
                neigh_map[(i,j)]+=1
            else:
                neigh_map[(i,j)] = 1

        #print(neigh_map.keys())
        print("number of houses with presents", len(neigh_map.keys()))
    
    def calc_houses_new(self):
        '''
        --- Part Two ---
        The next year, to speed up the process, Santa creates a robot version of himself, Robo-Santa, to deliver presents with him.

        Santa and Robo-Santa start at the same location (delivering two presents to the same starting house), 
        then take turns moving based on instructions from the elf, 
        who is eggnoggedly reading from the same script as the previous year.

        This year, how many houses receive at least one present?

        For example:

        ^v delivers presents to 3 houses, because Santa goes north, and then Robo-Santa goes south.
        ^>v< now delivers presents to 3 houses, and Santa and Robo-Santa end up back where they started.
        ^v^v^v^v^v now delivers presents to 11 houses, with Santa going one direction and Robo-Santa going the other.
        '''

        stop_idx = len(self.instruction_list)-1
        start_idx = 0

        start_key = (0,0)
        # preset initial coordinates
        self.santa_map[start_key] = 1
        self.robot_santa_map[start_key] = 1
        
        for i,v in enumerate(self.instruction_list):
            if i%2 == 0:
                self.santa_path(v)
            else:
                self.robot_santa_path(v)

        total_houses = set(self.santa_map.keys()) | set(self.robot_santa_map.keys())
        
        #print("santa delivered ", self.santa_map.keys())
        #print(total_houses)
        print("both delivered ", len(total_houses))

        
    def santa_path(self, key):
        #print("New Key ", key)
        #print("santa is in: ", self.santa_location)
        ns,ew = self.santa_location            
        if key == '^':
            ns+=1
        elif key == 'v':
            ns-=1
        elif key=='<':
            ew-=1
        elif key=='>':
            ew+=1
        else:
            print("unknow intruction in position ", key)
        
        self.santa_location=(ns,ew)
        #print("santa is now in: ", self.santa_location)
        if self.santa_location in self.santa_map.keys():
            self.santa_map[self.santa_location]+=1
        else:
            self.santa_map[self.santa_location]=1


    def robot_santa_path(self, key):
        #print("New Key ", key)
        #print("robot santa was in: ", self.robot_santa_location)
        ns,ew = self.robot_santa_location            
        if key == '^':
            ns+=1
        elif key == 'v':
            ns-=1
        elif key=='<':
            ew-=1
        elif key=='>':
            ew+=1
        else:
            print("unknow intruction in position ", key)
        
        self.robot_santa_location=(ns,ew)
        #print("robot santa is now in: ", self.robot_santa_location)
        if self.robot_santa_location in self.robot_santa_map.keys():
            self.robot_santa_map[self.robot_santa_location]+=1
        else:
            self.robot_santa_map[self.robot_santa_location]=1

