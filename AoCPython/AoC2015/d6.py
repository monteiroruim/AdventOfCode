class d6:
    def __init__(self, input):
        self.init_val = input

        self.cmd_list = ['turn on', 'turn off', 'toggle']
        self.cmd_values = [1, -1, 2]

        self.max_x = 1000
        self.max_y = 1000
        # fill a grid
        self.light_grid = [[0 for x in range(self.max_x)] for y in range(self.max_y)]

        '''
            --- Day 6: Probably a Fire Hazard ---   
            Because your neighbors keep defeating you in the holiday house decorating contest year after year, you've decided to deploy one million lights in a 1000x1000 grid.

            Furthermore, because you've been especially nice this year, Santa has mailed you instructions on how to display the ideal lighting configuration.

            Lights in your grid are numbered from 0 to 999 in each direction; the lights at each corner are at 0,0, 0,999, 999,999, and 999,0. 
            The instructions include whether to turn on, turn off, or toggle various inclusive ranges given as coordinate pairs. 
            Each coordinate pair represents opposite corners of a rectangle, inclusive; 
            a coordinate pair like 0,0 through 2,2 therefore refers to 9 lights in a 3x3 square. The lights all start turned off.

            To defeat your neighbors this year, all you have to do is set up your lights by doing the instructions Santa sent you in order.

            For example:

            turn on 0,0 through 999,999 would turn on (or leave on) every light.
            toggle 0,0 through 999,0 would toggle the first line of 1000 lights, turning off the ones that were on, and turning on the ones that were off.
            turn off 499,499 through 500,500 would turn off (or leave off) the middle four lights.
            After following the instructions, how many lights are lit?

                --- Part Two ---
            You just finish implementing your winning light pattern when you realize you mistranslated Santa's message from Ancient Nordic Elvish.

            The light grid you bought actually has individual brightness controls; each light can have a brightness of zero or more. The lights all start at zero.

            The phrase turn on actually means that you should increase the brightness of those lights by 1.

            The phrase turn off actually means that you should decrease the brightness of those lights by 1, to a minimum of zero.

            The phrase toggle actually means that you should increase the brightness of those lights by 2.

            What is the total brightness of all lights combined after following Santa's instructions?

            For example:

            turn on 0,0 through 0,0 would increase the total brightness by 1.
            toggle 0,0 through 999,999 would increase the total brightness by 2000000.
        '''
    def reset_light_grid(self):
        self.light_grid = [[0 for x in range(self.max_x)] for y in range(self.max_y)]


    def parse_cmd(self, cmd_str):
        l_cmd = cmd_str.replace(',',' ')
        coords = [int(s) for s in l_cmd.split() if s.isdigit()]
        x1,y1,x2,y2 = coords[0], coords[1], coords[2]+1, coords[3]+1
        for cmd in self.cmd_list:
            if l_cmd.find(cmd) > -1:
                return cmd,x1,y1,x2,y2
        
        print("command not found")
        return '?',0,0,0,0
            
    def set_light_value2(self, x1,x2,y1,y2, val):      
        for row in range(y1,y2):
            cols = self.light_grid[row]
            for col in range(x1,x2):
                cols[col]+=val
                if cols[col] < 0:
                    cols[col]=0
            self.light_grid[row] = cols

    def set_light_value(self, x1,x2,y1,y2, val):      
        for row in range(y1,y2):
            if val == -1:
                # toggle
                cols = self.light_grid[row]
                #print("toggling on ", cols)
                for col in range(x1,x2):
                    if cols[col]==1:
                        cols[col] = 0
                    else:
                        cols[col] = 1
                #print("setting final array ", cols)
                self.light_grid[row] = cols                
            else:
                # set value on=1, off=0
                cols = self.light_grid[row]
                #print("new val on ", cols)
                for col in range(x1,x2):
                    cols[col]=val
                #print("setting final array ", cols)
                self.light_grid[row] = cols

    def set_lights_instructions2(self):
        for val in self.init_val:
            oper,x1,y1,x2,y2 = self.parse_cmd(val)
            if oper == self.cmd_list[0]:
                self.set_light_value2(x1,x2,y1,y2, self.cmd_values[0])
            elif oper == self.cmd_list[1]:
                self.set_light_value2(x1,x2,y1,y2, self.cmd_values[1])
            elif oper == self.cmd_list[2]:
                self.set_light_value2(x1,x2,y1,y2, self.cmd_values[2])
            else:
                print("unknown operation", val)
                break

    # old method part 1
    def set_lights_instructions(self):
        for val in self.init_val:
            oper,x1,y1,x2,y2 = self.parse_cmd(val)
            if oper == 'turn on':
                self.set_light_value(x1,x2,y1,y2, 1)
            elif oper == 'turn off':
                self.set_light_value(x1,x2,y1,y2, 0)
            elif oper == 'toggle':
                self.set_light_value(x1,x2,y1,y2, -1)
            else:
                print("unknown operation", val)
                break
    
    def get_number_lights_on(self):
        print("---- first part ---- ")
        self.set_lights_instructions()
        total_lights_on = 0
        for row in self.light_grid:
            total_lights_on+=sum(row)
        print(total_lights_on)

        print("---- second part ---- ")
        self.reset_light_grid()
        self.set_lights_instructions2()
        total_lights_on = 0
        for row in self.light_grid:
            total_lights_on+=sum(row)
        print(total_lights_on)