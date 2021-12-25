from copy import deepcopy
from unittest.main import TestProgram
class d16:
    def __init__(self, input):
        self.init_val = input
        # https://adventofcode.com/2021/day/16
        # decode input hex2bin and keep both
        self.h2b_conversor = {
            '0': '0000', '1': '0001', '2': '0010', '3': '0011',
            '4': '0100', '5': '0101', '6': '0110', '7': '0111',
            '8': '1000', '9': '1001', 'A': '1010', 'B': '1011',
            'C': '1100', 'D': '1101', 'E': '1110', 'F': '1111'
        }
        self.bin_val = self.parse_input(input)
       
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
        # convert to dictionary as a map
        return ''.join([self.h2b_conversor[char] for char in input])
  

    def unpack(self, subpack):
        subpack_version = int(subpack[0:3], 2)
        subpack_type = int(subpack[3:6], 2)
        subpacket = subpack[6:]
           
        if subpack_type == 4:
            # skip leading 1s (literals)
            subpack_val = ''
            while subpacket[0] != '0':
                subpacket = subpacket[5:]
                # part 2
                
            return subpacket[5:], subpack_version
        
        subpack_len_type = subpacket[0]
        subpacket = subpacket[1:]

        if subpack_len_type == '0':
            subpack_len = int(subpacket[:15], 2)
            tmp_pack = subpacket[15:15+subpack_len]
            subpacket = subpacket[15+subpack_len:]
            while len(tmp_pack) > 0:
                tmp_pack, tmp_ver = self.unpack(tmp_pack)
                subpack_version += tmp_ver     
        else:
            subpack_num = int(subpacket[:11], 2)
            subpacket = subpacket[11:]
            for i in range(subpack_num):
                subpacket, tmp_ver = self.unpack(subpacket)
                subpack_version += tmp_ver
     
        return subpacket, subpack_version


    def sum_version_packets(self):
        _, version = self.unpack(self.bin_val)
        self.result1 = version
        _, pv = self.eval_hex_transmission(self.bin_val)
        self.result2 = pv
    

    def eval_hex_transmission(self, subpack):
        subpack_type = int(subpack[3:6], 2)
        subpack = subpack[6:]
        subpack_vals = []

        if subpack_type == 4:
            value = ''
            while subpack[0] == '1':
                value += subpack[1:5]
                subpack = subpack[5:]
            value += subpack[1:5]	
            subpack = subpack[5:]		
            return subpack, int(value, 2)

        subpack_len_type = subpack[0]
        subpack = subpack[1:]
        if subpack_len_type == '0':
            subpack_len = int(subpack[:15], 2)
            subpacket = subpack[15:15 + subpack_len]
            subpack = subpack[15 + subpack_len:]

            while len(subpacket) != 0:
                subpacket, subvalue = self.eval_hex_transmission(subpacket)
                subpack_vals.append(subvalue)
        else:
            num_packets = int(subpack[:11], 2)
            subpack = subpack[11:]

            for i in range(num_packets):
                subpack, subvalue = self.eval_hex_transmission(subpack)
                subpack_vals.append(subvalue)

        if subpack_type == 0:
            value = sum(subpack_vals)
        elif subpack_type == 1:
            value = 1
            for k in subpack_vals:
                value *= k
        elif subpack_type == 2:
            value = min(subpack_vals)
        elif subpack_type == 3:
            value = max(subpack_vals)
        elif subpack_type == 5:
            value = int(subpack_vals[0] > subpack_vals[1])
        elif subpack_type == 6:
            value = int(subpack_vals[0] < subpack_vals[1])
        elif subpack_type == 7:
            value = int(subpack_vals[0] == subpack_vals[1])

        return subpack, value


import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = "8A004A801A8002F478"
        t1 = d16(test_set)
        t1.sum_version_packets()
        self.assertEqual(t1.get_res_pt1(True), 16)
        self.assertEqual(t1.get_res_pt2(True), 15)
        print("==================================")
        test_set = "A0016C880162017C3686B18A3D4780"
        t2 = d16(test_set)
        t2.sum_version_packets()
        self.assertEqual(t2.get_res_pt1(True), 31)
        self.assertEqual(t2.get_res_pt2(True), 54)
        print("==================================")
        test_set = "880086C3E88112"
        t3 = d16(test_set)
        t3.sum_version_packets()
        self.assertEqual(t3.get_res_pt1(True), 15) 
        self.assertEqual(t3.get_res_pt2(True), 7) 
        print("==================================")
        test_set = "9C0141080250320F1802104A08"
        t4 = d16(test_set)
        t4.sum_version_packets()
        self.assertEqual(t4.get_res_pt1(True), 20)
        self.assertEqual(t4.get_res_pt2(True), 1)
        
