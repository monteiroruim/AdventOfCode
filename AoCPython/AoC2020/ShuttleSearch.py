class ShuttleSearch():
    def __init__(self, input_map):
        self.input = input_map
        self.result1 = 0
        self.result2 = 0
        self.departure_ts =  int(self.input[0])
        self.timebase_bus_list = [(minute, int(bus)) for minute, bus in enumerate(self.input[1].split(',')) if bus != 'x']
        self.airport_bus_list = [int(bus) for bus in self.input[1].split(',') if bus != 'x']


    def timetable_check(self):        
        target_departure = float('inf')
        for bus in self.airport_bus_list:
            bus_departure_time = self.departure_ts + bus - (self.departure_ts%bus)
            if bus_departure_time < target_departure:
                target_departure = bus_departure_time
                target_bus = bus
        self.result1 = (target_departure - self.departure_ts) * target_bus
            
    
    def consecutive_subsequents(self):
        # Each bus has an ID number that also indicates how often the bus leaves for the airport
        # Bus schedules are defined based on a timestamp that measures the number of minutes
        # preset first readout
        res = 0
        minute = self.timebase_bus_list[0][1]
        for time, bus in self.timebase_bus_list[1:]:
            while (res + time) % bus !=0:
                res += minute    
            minute *= bus
        
        self.result2 = res


        


    def result(self):
        self.timetable_check()
        print("Result part 1: " , self.result1)
        self.consecutive_subsequents()
        print("Result part 2: " , self.result2)