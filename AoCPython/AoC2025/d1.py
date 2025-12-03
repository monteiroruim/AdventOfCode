class d1:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0 #
        self.result2 = 0

        self.direction = {
            "L": -1,
            "R": 1
        } # direction 1 or -1 as multiplying factor
        self.limit = 100
        self.dial = 50

    def test_pt1(self):
        print(" ----- test 1 ----- ")
        print(self.result1)
        return self.result1
    
    def test_pt2(self):
        print(" ----- test 2 ----- ")
        print(self.result2)
        return self.result2

    def get_res_pt1(self):
        return self.result1
    
    def get_res_pt2(self):
        # Due to newer security protocols, 
        # please use password method 0x434C49434B until further notice.
        # this method counts all 0 passages and not only certains
        return self.result2
    
    def get_data(self) -> list:
        tl = list()
        for v in self.init_val:
            tl.append((v[0], int(v[1:])))
        return tl

    def rotate(self, val) -> None:
        for _ in range(val[1]):

            if self.direction[val[0]] < 0:
                self.dial = (self.dial-1+self.limit)%self.limit
            else:
                self.dial = (self.dial+1)%self.limit
            
            if self.dial == 0:
                self.result2+=1
            #Be careful: if the dial were pointing at 50, 
            # a single rotation like R1000 would cause the dial 
            # to point at 0 ten times before returning back to 50!
            #print("Dial comparision ", self.dial, (self.dial != 0))


    def resolve(self) -> None:
        data = self.get_data()
        for idx, rec in enumerate(data):
            print("handling -->", rec, self.dial)
            #prev_dial = self.dial
            self.rotate(rec)
            if self.dial == 0:
                print("add result 1:", idx, self.dial)
                self.result1 += 1
            print("R1:", self.result1)
            print("R2:", self.result2)
    

import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["L68","L30","R48","L5","R60","L55","L1","L99","R14","L82"]
        #res_set = [82,52,0,95,55,0,99,0,14,32]
        init = d1(test_set)
        init.resolve()
        self.assertEqual(init.test_pt1(), 3)
        self.assertEqual(init.test_pt2(), 6)
    
