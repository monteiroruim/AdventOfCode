from unittest import TestCase

class d17:
    def __init__(self, input):
        self.init_val = input

        # https://adventofcode.com/2021/day/17
        self.x_range = ()
        self.y_range = ()
        self.target_area = set()
        self.parse_input(input)
        
        self.result1 = 0
        self.result2 = 0

    def get_res_pt1(self, p=False):
        if p:
            print(" ----- Result part 1 ----- ")
            print(self.result1)
            return self.result1

        return self.result1

    
    def get_res_pt2(self, p=False):
        if p:
            print(" ----- Result part 2 ----- ")
            print(self.result2)  
        return self.result2


    def parse_input(self, input):
        tmp = ''.join(input).split()
        for v in tmp:
            if 'x' in v:
                tmp_x = v.strip('x=').strip(',').split('..')
                self.x_range = (int(tmp_x[0]), int(tmp_x[1]))
            if 'y' in v:
                tmp_y = v.strip('y=').strip(',').split('..')
                self.y_range = (int(tmp_y[0]), int(tmp_y[1]))
        self.draw_target_area()
        
        
    def draw_target_area(self):
        j = min(self.y_range)
        while j <= max(self.y_range):
            i = min(self.x_range)
            while i <= max(self.x_range):
                self.target_area.add((i,j))
                i += 1
            j += 1


    def hit(self, vel_x, vel_y):
        preset_x, preset_y = (0,0)
        while True:
            preset_x += vel_x
            preset_y += vel_y
            if (preset_x, preset_y) in self.target_area:
                return True
            
            if vel_x != 0:
                vel_x -= 1 if vel_x > 0 else -1
            vel_y -= 1

            if preset_x > max(self.x_range) or preset_y < min(self.y_range):
                return False


    def set_max_y(self, hitlist):        
        hitlist.sort(key=lambda x:x[1])       
        _, y = hitlist[-1]
        self.result1 = sum(range(1, y+1))


    def set_velocity_count(self,hitlist):
        self.result2 = len(set(hitlist))

    def launch(self):
        vel_x = 0
        probe_hit = []
        while vel_x <= max(self.x_range):
            vel_y = abs(min(self.y_range))
            while vel_y >= min(self.y_range):                
                if self.hit(vel_x, vel_y):
                    # print("velocity with hits", (vel_x,vel_y), len(probe_hit))
                    probe_hit.append((vel_x,vel_y))                
                vel_y -= 1
            vel_x +=1
        
        self.set_max_y(probe_hit)
        self.set_velocity_count(probe_hit)



class test(TestCase):
    def run(self):
        test_set = "target area: x=20..30, y=-10..-5"
        t1 = d17(test_set)
        t1.launch()
        self.assertEqual(t1.get_res_pt1(True), 45)
        self.assertEqual(t1.get_res_pt2(True), 112)