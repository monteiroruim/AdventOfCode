class RainRisk():
    def __init__(self, input_map):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0
        self.north_val = 'N'
        self.south_val = 'S'
        self.east_val = 'E'
        self.west_val = 'W'
        self.left_val = 'L'
        self.right_val = 'R'
        self.forward_val = 'F'

        self.waypoint_east = 10
        self.waypoint_north = 1
        self.waypoint_south = 1
        self.waypoint_west = 1

    def parseInstruction(self, instruction_def):
        digit_list = filter(str.isdigit, instruction_def)
        distance = int("".join(digit_list))
        side = instruction_def[0]
        return side, distance

    def compass(self, direction, turn_degree, inverted=None):
        #print("check compass", direction, turn_degree, inverted)
        if inverted is None:
            if direction == self.north_val:
                if turn_degree == 90:
                    return self.east_val
                elif turn_degree == 180:
                    return self.south_val
                elif turn_degree == 270:
                    return self.west_val
                else:
                    return self.north_val
            if direction == self.east_val:
                if turn_degree == 90:
                    return self.south_val
                elif turn_degree == 180:
                    return self.west_val
                elif turn_degree == 270:
                    return self.north_val
                else:
                    return self.east_val
            if direction == self.south_val:
                if turn_degree == 90:
                    return self.west_val
                elif turn_degree == 180:
                    return self.north_val
                elif turn_degree == 270:
                    return self.east_val
                else:
                    return self.south_val
            if direction == self.west_val:
                if turn_degree == 90:
                    return self.north_val
                elif turn_degree == 180:
                    return self.east_val
                elif turn_degree == 270:
                    return self.south_val
                else:
                    return self.west_val

        else:
            if direction == self.north_val:
                if turn_degree == 270:
                    return self.east_val
                elif turn_degree == 180:
                    return self.south_val
                elif turn_degree == 90:
                    return self.west_val
                else:
                    return self.north_val
            if direction == self.east_val:
                if turn_degree == 270:
                    return self.south_val
                elif turn_degree == 180:
                    return self.west_val
                elif turn_degree == 90:
                    return self.north_val
                else:
                    return self.east_val
            if direction == self.south_val:
                if turn_degree == 270:
                    return self.west_val
                elif turn_degree == 180:
                    return self.north_val
                elif turn_degree == 90:
                    return self.east_val
                else:
                    return self.south_val
            if direction == self.west_val:
                if turn_degree == 270:
                    return self.north_val
                elif turn_degree == 180:
                    return self.east_val
                elif turn_degree == 90:
                    return self.south_val
                else:
                    return self.west_val


    def nav_cpu(self):
        ew_val = 0
        ns_val = 0
        current_direction = self.east_val

        # starts East
        for code in self.input:
            #print(code, current_direction)
            step, size = self.parseInstruction(code)
            if step == self.right_val:
                current_direction = self.compass(current_direction, size)
            elif step == self.left_val:
                current_direction = self.compass(current_direction, size, 1)
            elif step == self.forward_val:
                if current_direction == self.south_val:
                    ns_val-=size
                elif current_direction == self.west_val:
                    ew_val-=size
                elif current_direction == self.north_val:
                    ns_val+=size
                elif current_direction == self.east_val:
                    ew_val+=size
            elif step == self.east_val:
                ew_val+=size
            elif step == self.west_val:
                ew_val-=size
            elif step == self.north_val:
                ns_val+=size
            elif step == self.south_val:
                ns_val-=size

        print("north_south", ns_val, "east_west", ew_val)
        self.result1 = abs(ns_val) + abs(ew_val)
    
 
    def nav_cpu_waypoint(self):
        ew_val = 0
        ns_val = 0
        ew_way = 10
        ns_way = 1

        # starts East
        for code in self.input:
            #print("current boat position ", code, ew_val, ns_val)
            step, size = self.parseInstruction(code)
            if step == self.forward_val:
                ew_val += ew_way * size
                ns_val += ns_way * size
            elif step == self.right_val:
                for _ in range(int(size/90)):
                    prev = ew_way
                    ew_way = ns_way
                    ns_way = -prev
            elif step == self.left_val:
                for _ in range(int(size/90)):
                    prev = ew_way
                    ew_way = -ns_way
                    ns_way = prev
            
            elif step == self.east_val:
                ew_way+=size
            elif step == self.west_val:
                ew_way-=size
            elif step == self.north_val:
                ns_way+=size
            elif step == self.south_val:
                ns_way-=size
            
            
            #print("current waypoint position", ns_way, ew_way)

        #print("north_south", ns_val, "east_west", ew_val)
        self.result2 = abs(ns_val) + abs(ew_val)


    def result(self):
        self.nav_cpu()
        #  correct 
        print("Result part 1: " , self.result1)
        self.nav_cpu_waypoint()
        #  correct 
        print("Result part 2: " , self.result2)