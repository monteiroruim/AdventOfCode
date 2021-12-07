class d5:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/5
        self.init_val = input
        self.result_map_1 = dict()
        self.result_map = dict()
        
        self.result1 = 0
        self.result2 = 0
        self.parse_instr()

        '''
        --- Day 5: Hydrothermal Venture ---
        You come across a field of hydrothermal vents on the ocean floor! These vents constantly produce large, opaque clouds, so it would be best to avoid them if possible.

        They tend to form in lines; the submarine helpfully produces a list of nearby lines of vents (your puzzle input) for you to review. For example:

        0,9 -> 5,9
        8,0 -> 0,8
        9,4 -> 3,4
        2,2 -> 2,1
        7,0 -> 7,4
        6,4 -> 2,0
        0,9 -> 2,9
        3,4 -> 1,4
        0,0 -> 8,8
        5,5 -> 8,2
        Each line of vents is given as a line segment in the format x1,y1 -> x2,y2 where x1,y1 are the coordinates of one end the line segment and x2,y2 are the coordinates of the other end. These line segments include the points at both ends. In other words:

        An entry like 1,1 -> 1,3 covers points 1,1, 1,2, and 1,3.
        An entry like 9,7 -> 7,7 covers points 9,7, 8,7, and 7,7.
        For now, only consider horizontal and vertical lines: lines where either x1 = x2 or y1 = y2.

        So, the horizontal and vertical lines from the above list would produce the following diagram:

        .......1..
        ..1....1..
        ..1....1..
        .......1..
        .112111211
        ..........
        ..........
        ..........
        ..........
        222111....
        In this diagram, the top left corner is 0,0 and the bottom right corner is 9,9. Each position is shown as the number of lines which cover that point or . if no line covers that point. The top-left pair of 1s, 
        for example, comes from 2,2 -> 2,1; the very bottom row is formed by the overlapping lines 0,9 -> 5,9 and 0,9 -> 2,9.

        To avoid the most dangerous areas, you need to determine the number of points where at least two lines overlap. In the above example, this is anywhere in the diagram with a 2 or larger - a total of 5 points.

        Consider only horizontal and vertical lines. At how many points do at least two lines overlap?
        '''

     
    def get_res_pt1(self, p=False):
       
        if p:
            print(" ----- Result part 1 ----- ")
            print(self.result1)
            return 5

        return self.result1

    
    def get_res_pt2(self, p=False):
        if p:
            print(" ----- Result part 2 ----- ")
            print(self.result2)  
        return self.result2
    

    def parse_instr(self):
        for i, instr in enumerate(self.init_val):
            cmd = instr.split()
            x1, y1 = tuple(int(x) for x in cmd[0].split(','))
            x2, y2 = tuple(int(x) for x in cmd[2].split(','))
            coord = [(x1,x2), (y1,y2)]
            self.draw_line(coord)

    
    def draw_line(self, cmd):
        print("line", cmd)

        x1, x2 = cmd[0]
        y1, y2 = cmd[1]

        if x1 == x2:
            print(" horizontal line", cmd)
            # draw horizontal row
            for y in range(min(y1,y2),max(y1,y2)+1):
                if (x1,y) in self.result_map.keys():
                    self.result_map[(x1,y)] +=1
                else:
                    self.result_map[(x1,y)] = 1

        elif y1 == y2:
            print("vertical line", cmd)
            # draw vertical row
            for x in range(min(x1,x2),max(x1,x2)+1):       
                if (x,y1) in self.result_map.keys():
                    self.result_map[(x,y1)] +=1
                else:
                    self.result_map[(x,y1)] = 1
            
        else:
            # draw vertical row 
            # comment this block for result 1
            dx = x2 - x1
            dy = y2 - y1
            if (x1,y1) in self.result_map.keys():
                self.result_map[(x1,y1)] +=1
            else:
                self.result_map[(x1,y1)] = 1
            # grid[y1][x1] += 1
            while not x1 == x2:
                x1 = x1 + (dx // abs(dx))  # get positive (1) or negative (-1)
                y1 = y1 + (dy // abs(dy))
                if (x1,y1) in self.result_map.keys():
                    self.result_map[(x1,y1)] +=1
                else:
                    self.result_map[(x1,y1)] = 1
            
        return
        
      
        for x in range(x1,x2+1):
            #print(x)
            for y in range(y1,y2+1):
                if (x,y) in self.result_map.keys():
                    self.result_map[(x,y)] +=1
                else:
                    self.result_map[(x,y)] = 1
            print(self.result_map)


    def trace_map(self):
        self.result1 = sum([1 for key,val in self.result_map.items() if val > 1])
        self.result2 = sum([1 for key,val in self.result_map.items() if val > 1])
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["0,9 -> 5,9","8,0 -> 0,8","9,4 -> 3,4","2,2 -> 2,1","7,0 -> 7,4",
                    "6,4 -> 2,0","0,9 -> 2,9","3,4 -> 1,4","0,0 -> 8,8","5,5 -> 8,2"]
        init = d5(test_set)
        init.trace_map()
        self.assertEqual(init.get_res_pt1(True), 5)
        # exit()
        # second test
        #init.calc_life_support()
        self.assertEqual(init.get_res_pt2(True), 12) 


        
    
