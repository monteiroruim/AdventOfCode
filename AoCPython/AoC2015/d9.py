from itertools import permutations
from os import path


class d9:
    def __init__(self, input):
        self.init_val = input

        self.data = dict()

        self.result1 = 9999999
        self.result2 = 0

        self.result1_route = ""
        self.result2_route = ""
        r'''
        --- Day 9: All in a Single Night ---
            Every year, Santa manages to deliver all of his presents in a single night.

            This year, however, he has some new locations to visit; his elves have provided him the distances between every pair of locations. 
            He can start and end at any two (different) locations he wants, but he must visit each location exactly once. 
            
            What is the shortest distance he can travel to achieve this?

            For example, given the following distances:

            London to Dublin = 464
            London to Belfast = 518
            Dublin to Belfast = 141
            The possible routes are therefore:

            Dublin -> London -> Belfast = 982
            London -> Dublin -> Belfast = 605
            London -> Belfast -> Dublin = 659
            Dublin -> Belfast -> London = 659
            Belfast -> Dublin -> London = 605
            Belfast -> London -> Dublin = 982
            The shortest of these is London -> Dublin -> Belfast = 605, and so the answer is 605 in this example.

            What is the distance of the shortest route?
        '''

    
    def test_pt1(self):
        print(" ----- test 1 ----- ")
        self.get_shortest_route()
        print(self.result1)
        return self.result1
    

    def test_pt2(self):
        print(" ----- test 2 ----- ")
        print(self.result2)
        return self.result2


    def parse_input(self):
        for cmd in self.init_val:
            instr = cmd.split()
            start, end, dist = instr[0], instr[2], int(instr[4])
            if start not in self.data.keys():
                self.data[start] = set()
                self.data[start].add((end, dist))
            else:
                self.data[start].add((end, dist))
            
            if end not in self.data.keys():
                self.data[end] = set()
                self.data[end].add((start,dist))
            else:
                self.data[end].add((start,dist))
            
        #print(self.data)


    def get_branch_dist(self, route):
        route_total = 0
        rt = list(route)
        while len(rt) > 1:
            tgt = rt.pop(0)
            dest = self.data[tgt]

            for (city, dist) in dest:
                if city == rt[0]:
                    route_total += dist
                    break

        return route_total
    

    def get_shortest_route(self):
        self.parse_input()
        for route in permutations(self.data.keys()):
            tmp = self.get_branch_dist(route)
            if tmp < self.result1:
                self.result1 = tmp 
                self.result1_route = route
            if tmp > self.result2:
                self.result2 = tmp
                self.result2_route = route
        
        print(self.result1, " shortest route ", self.result1_route)
        print(self.result2, " longest route ", self.result2_route)
                     


import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ['London to Dublin = 464','London to Belfast = 518','Dublin to Belfast = 141']
        init = d9(test_set)
        self.assertEqual(init.test_pt1(), 605)
        self.assertEqual(init.test_pt2(), 982)
        
        