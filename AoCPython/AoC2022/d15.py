class d15:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.sensor_data = list()
        self.ref_row = 2000000

    def test_pt1(self):
        print(" -- pt1 ")
        print(self.result1)
        return self.result1
    
    def test_pt2(self):
        print(" -- pt2 ")
        print(self.result2)
        return self.result2

    def get_res_pt1(self):
        return self.result1
    
    def get_res_pt2(self):
        return self.result2

    def set_eval(self,y):
        self.ref_row = y

    def manhattan_distance(self):
        ranges = {}
        for (sx,sy),(bx,by) in self.sensor_data:
            dist = abs(bx-sx)+abs(by-sy)-abs(sy-self.ref_row)
            if dist >= 0:
                # print('manhattan_distance 2', sx,bx)
                ranges.setdefault(self.ref_row,[]).append((sx-dist,sx+dist))
        
        return sum(x2-x1 for x1,x2 in self.get_all_points(sorted(ranges[self.ref_row])))

    def get_all_points(self, p_list):
        i = 0
        for point in p_list:
            # print('get_all_points', point, p_list[i])
            if p_list[i][1] >= point[0]:
                p_list[i] = (p_list[i][0], max(p_list[i][1], point[1]))
            else:
                i+=1 
                p_list[i] = point
        print('get_all_points - ',p_list[:i+1])
        return p_list[:i+1] # sum(x2-x1 for x1,x2 in p_list[:i+1])

    
    def isolate_signal(self):
        # print("isolate_signal")
        ranges = {}
        res = 0
        for (sx,sy),(bx,by) in self.sensor_data:
            dist = abs(bx-sx)+abs(by-sy)
            for row in range(-dist, dist+1):
                # print('isolate_signal 2', sx,bx)
                ranges.setdefault(sy+row,[]).append((sx-(dist-abs(row)),sx+(dist-abs(row))))
        for i in ranges:
            # make sure value is inside limits
            if 0<= i <=4000000:
                row_range = self.get_all_points(sorted(ranges[i]))
                print("--> ", i, row_range)
                # add min and max
                row_range[0] = (max(0,row_range[0][0]), max(0,row_range[0][1]))
                row_range[-1] = (min(4000000,row_range[-1][0]), min(4000000,row_range[-1][1]))
                
                if sum(1+y-x for x,y in row_range) <= self.ref_row:
                    for j in range(1,len(row_range)):
                        print('isolate_siganl calc', row_range[j][0] - row_range[j-1][1] ,row_range[j][0] , row_range[j-1][1] )
                        if row_range[j][0] - row_range[j-1][1] > 1:
                            x_val = row_range[j][0] - 1
                            print('----', x_val)
                            res = 4000000*x_val+i
                            print("isolate_signal freq",res)
                            return res 
        return 0


    def run(self, y_ref=10, y_ref2=20):
        for row in self.init_val:
            sensor, beacon = row.split(': ')
            sensor = sensor.strip('Sensor at ')
            beacon = beacon.strip('closest beacon is at ')
            # print(sensor, '|||||| ', beacon)
            sx, sy = sensor.split(', ')
            bx, by = beacon.split(', ')
            sx = int(sx.strip('x='))
            sy = int(sy.strip('y='))
            bx = int(bx.strip('x='))
            by = int(by.strip('y='))
            # print(sx, sy, '- ', bx,by)
            self.sensor_data.append(((sx,sy),(bx,by)))
        self.set_eval(y_ref)
        self.result1 = self.manhattan_distance()
        # print(self.sensor_data)
        self.set_eval(y_ref2)
        self.result2 = self.isolate_signal()
            


import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = ["Sensor at x=2, y=18: closest beacon is at x=-2, y=15",
                    "Sensor at x=9, y=16: closest beacon is at x=10, y=16",
                    "Sensor at x=13, y=2: closest beacon is at x=15, y=3",
                    "Sensor at x=12, y=14: closest beacon is at x=10, y=16",
                    "Sensor at x=10, y=20: closest beacon is at x=10, y=16",
                    "Sensor at x=14, y=17: closest beacon is at x=10, y=16",
                    "Sensor at x=8, y=7: closest beacon is at x=2, y=10",
                    "Sensor at x=2, y=0: closest beacon is at x=2, y=10",
                    "Sensor at x=0, y=11: closest beacon is at x=2, y=10",
                    "Sensor at x=20, y=14: closest beacon is at x=25, y=17",
                    "Sensor at x=17, y=20: closest beacon is at x=21, y=22",
                    "Sensor at x=16, y=7: closest beacon is at x=15, y=3",
                    "Sensor at x=14, y=3: closest beacon is at x=15, y=3",
                    "Sensor at x=20, y=1: closest beacon is at x=15, y=3"]
        init = d15(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 26)
        self.assertEqual(init.test_pt2(), 56000011) #56000011