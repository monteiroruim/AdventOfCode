class d5:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/5
        self.init_val = input
        self.result_map_1 = dict()
        self.result_map = dict()
        
        self.result1 = 0
        self.result2 = 0
        self.parse_instr()        
     
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
        for instr in self.init_val:
            cmd = instr.split()
            x1, y1 = tuple(int(x) for x in cmd[0].split(','))
            x2, y2 = tuple(int(x) for x in cmd[2].split(','))
            coord = [(x1,x2), (y1,y2)]   
            self.draw_hor_vert_lines(coord)   

        self.result1 = sum([1 for key,val in self.result_map.items() if val > 1])

        for instr in self.init_val:
            cmd = instr.split()
            x1, y1 = tuple(int(x) for x in cmd[0].split(','))
            x2, y2 = tuple(int(x) for x in cmd[2].split(','))
            coord = [(x1,x2), (y1,y2)]  
            self.draw_diagonal_lines(coord)

        self.result2 = sum([1 for key,val in self.result_map.items() if val > 1])
        
      

    
    def draw_hor_vert_lines(self,cmd):
        x1, x2 = cmd[0]
        y1, y2 = cmd[1]

        if x1 == x2:
            # draw horizontal row
            for y in range(min(y1,y2),max(y1,y2)+1):
                if (x1,y) in self.result_map.keys():
                    self.result_map[(x1,y)] +=1
                else:
                    self.result_map[(x1,y)] = 1

        elif y1 == y2:
            # draw vertical row
            for x in range(min(x1,x2),max(x1,x2)+1):       
                if (x,y1) in self.result_map.keys():
                    self.result_map[(x,y1)] +=1
                else:
                    self.result_map[(x,y1)] = 1
        
        return


    def draw_diagonal_lines(self,cmd):
        x1, x2 = cmd[0]
        y1, y2 = cmd[1]
        # make sure is not horizontal or vertical line
        if not(x1 == x2 or y1 == y2):
            dx = x2 - x1
            dy = y2 - y1
            if (x1,y1) in self.result_map.keys():
                self.result_map[(x1,y1)] +=1
            else:
                self.result_map[(x1,y1)] = 1
            while not x1 == x2:
                x1 = x1 + (dx // abs(dx)) 
                y1 = y1 + (dy // abs(dy))
                if (x1,y1) in self.result_map.keys():
                    self.result_map[(x1,y1)] +=1
                else:
                    self.result_map[(x1,y1)] = 1
            
        return        

        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["0,9 -> 5,9","8,0 -> 0,8","9,4 -> 3,4","2,2 -> 2,1","7,0 -> 7,4",
                    "6,4 -> 2,0","0,9 -> 2,9","3,4 -> 1,4","0,0 -> 8,8","5,5 -> 8,2"]
        init = d5(test_set)
        self.assertEqual(init.get_res_pt1(True), 5)

        self.assertEqual(init.get_res_pt2(True), 12) 


        
    
