from copy import deepcopy

class SeatingSystem():
    def __init__(self, input_map):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0

        self.empty_seat = 'L'
        self.occupied_seat = '#'
        self.floor = '.'
        self.adjacent_list = [(-1,1), (-1,0), (-1,-1),(0,1),(0,-1),(1,1),(1,0),(1,-1)]
        self.row_size = len(self.input)
        self.seat_size = len(self.input[0])
        '''
        rules
        Each position is either floor (.), an empty seat (L), or an occupied seat (#).
        
        If a seat is empty (L) and there are no occupied seats adjacent to it, the seat becomes occupied.
        If a seat is occupied (#) and four or more seats adjacent to it are also occupied, the seat becomes empty.
        Otherwise, the seat's state does not change.
        Floor (.) never changes; seats don't move, and nobody sits on the floor.
        '''
    

    def get_occupied_seats(self):        
        working_map = deepcopy(self.input)
        while True:
            previous_map = deepcopy(working_map)
            for i,row in enumerate(working_map):
                new_row = ""
                for j, seat in enumerate(row):
                    if seat == self.floor:
                        new_row+=seat
                    else:
                        working_adj = deepcopy(self.adjacent_list)
                        working_adj = [(i + t[0], j + t[1]) for t in working_adj]
                        cnt_occup=0
                        for x,y in working_adj:                     
                            if x < self.row_size and x>= 0 and y>=0 and y<self.seat_size:
                                if previous_map[x][y] == self.occupied_seat:
                                    cnt_occup+=1
                        
                        # If a seat is empty (L) and there are no occupied seats adjacent to it, the seat becomes occupied.
                        if seat == self.empty_seat and cnt_occup == 0:
                            new_row+=self.occupied_seat
                        # If a seat is occupied (#) and four or more seats adjacent to it are also occupied, the seat becomes empty.
                        elif seat == self.occupied_seat and cnt_occup>=4:
                            new_row+=self.empty_seat
                        else:
                            new_row+=seat
                working_map[i] = new_row

            if previous_map == working_map:
                break

        for row in working_map:
            self.result1+=row.count(self.occupied_seat)

    
    def get_occupied_seats_open_floor(self):
        '''
        it now takes five or more visible occupied seats for an occupied seat to become empty (rather than four or more from the previous rules). 
        The other rules still apply: empty seats that see no occupied seats become occupied, seats matching no rule don't change, and floor never changes.
        '''
        working_map = deepcopy(self.input)
        idx=0
        while True:
            idx+=1
            previous_map = deepcopy(working_map)
            
            for i,row in enumerate(previous_map):
                new_row = ""
                for j, seat in enumerate(previous_map[i]):
                    cnt_occup = 0
        
                    for adj in self.adjacent_list:
                        position = (i + adj[0], j + adj[1])
                        while True:
                            if position[0] < 0 or position[1] < 0:
                                break
                            if position[0] >= self.row_size or position[1] >= self.seat_size:
                                break
                            current_item = previous_map[position[0]][position[1]]
                            if current_item == self.empty_seat:
                                break
                            elif current_item == self.occupied_seat:
                                cnt_occup+=1
                                break
                            elif current_item == self.floor:
                                position = (position[0] + adj[0], position[1]+ adj[1])

                    # If a seat is empty (L) and there are no occupied seats adjacent to it, the seat becomes occupied.
                    if seat == self.empty_seat and cnt_occup == 0:
                        new_row+=self.occupied_seat
                    # If a seat is occupied (#) and five or more seats adjacent to it are also occupied, the seat becomes empty.
                    elif seat == self.occupied_seat and cnt_occup>4:
                        new_row+=self.empty_seat
                    else:
                        new_row+=seat
   
                working_map[i] = new_row

            if previous_map == working_map:
                break

    

        for row in working_map:
            self.result2+=row.count(self.occupied_seat)



    def result(self):
        self.get_occupied_seats()
        #  correct 2289
        print("Result part 1: " , self.result1)
        #  correct 
        self.get_occupied_seats_open_floor()
        print("Result part 2: " , self.result2)