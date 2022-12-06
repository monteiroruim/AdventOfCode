class d6:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0 
        self.result2 = 0
        self.start_packet = 4
        self.start_message = 14

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
        return self.result2
    

    def check_signal(self,signal):
        # the start of a packet is indicated by a sequence of four characters that are all different
        s = set(signal)
        if len(s) == len(signal):
            return True
        else:
            return False
        
    def get_packet_start(self):
        # it needs to report the number of characters from the beginning of the buffer to the end of the first such four-character marker.
        i = 0
        while i <= len(self.init_val) - self.start_packet:
            if self.check_signal(self.init_val[i:self.start_packet+i]):
                self.result1 = i+self.start_packet
                break
            i+=1
    
    def get_message_start(self):
        # A start-of-message marker is just like a start-of-packet marker, except it consists of 14 distinct characters rather than 4.
        i = 0
        while i <= len(self.init_val) - self.start_message:
            if self.check_signal(self.init_val[i:self.start_message+i]):
                self.result2 = i+self.start_message
                break
            i+=1
        
    def process(self):
        self.get_packet_start()
        self.get_message_start()
   
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = "mjqjpqmgbljsphdztnvjfqwrcgsmlb"
        init = d6(test_set)
        init.process()
        self.assertEqual(init.test_pt1(), 7)
        self.assertEqual(init.test_pt2(), 19)

        test_set = "bvwbjplbgvbhsrlpgdmjqwftvncz"
        init = d6(test_set)
        init.process()
        self.assertEqual(init.test_pt1(), 5)
        self.assertEqual(init.test_pt2(), 23)
