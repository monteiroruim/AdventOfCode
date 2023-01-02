from itertools import permutations, product
class d16:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 0

        self.tunnel_system = dict()
        self.valve_flow = dict()
        self.bin_valves = dict()
        self.path_length = dict()
        self.start_valve = 'AA'
        self.timespan = 0
        self.pressure = 0
        self.timelimit = 30
        self.timelimit2 = 26

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
    
    def calc_paths(self):
        self.bin_valves = {v: 1 << i for i, v in enumerate(self.valve_flow)}
        self.path_length = {s: {d: 1 if d in self.tunnel_system[s] else float("+inf") for d in self.tunnel_system} for s in self.tunnel_system}
        for m,s,d in product(self.tunnel_system, self.tunnel_system, self.tunnel_system):
            self.path_length[s][d] = min(self.path_length[s][d], self.path_length[s][m] + self.path_length[m][d])

    def release_max_pressure(self,  curr_valve,curr_time, valv_val, curr_pressure, curr_path):
        # print("release_max_pressure init - ", curr_valve,curr_time, valv_val, curr_pressure, curr_path)
        curr_path[valv_val] = max(curr_path.get(valv_val, 0), curr_pressure)
        for valve in self.valve_flow:
            timespan = curr_time - self.path_length[curr_valve][valve]-1
            if self.bin_valves[valve] & valv_val or timespan <=0:
                continue
            self.release_max_pressure(valve, timespan, valv_val | self.bin_valves[valve], curr_pressure + timespan * self.valve_flow[valve], curr_path)
        return curr_path

    def run(self):
        for row in self.init_val:
            valve, valve_paths = row.split('; ')
            valve_key, flow = valve.split(" has flow ")
            _, valve_key = valve_key.split()
            valve_key = valve_key.strip()
            flow = int(flow.strip("rate="))

            valve_paths = valve_paths.strip("tunnels lead to valves ")
            valve_paths = [v.strip() for v in valve_paths.split(",")]

            if valve_key not in self.tunnel_system.keys():
                self.tunnel_system[valve_key] = valve_paths
            if valve_key not in self.valve_flow.keys() and flow > 0:
                self.valve_flow[valve_key] = flow
        
        # print("0 - ", self.tunnel_system)
        self.calc_paths()
        # print(a)
        self.result1 = max(self.release_max_pressure(self.start_valve, self.timelimit, 0, 0, {}).values())
        res2 = self.release_max_pressure(self.start_valve, self.timelimit2, 0, 0, {})
        for i,v in res2.items():
            for j, v1 in res2.items():
                curr_max = v + v1
                if self.result2 < curr_max and not i & j:
                    self.result2 = curr_max 
       
import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = ["Valve AA has flow rate=0; tunnels lead to valves DD, II, BB",
                    "Valve BB has flow rate=13; tunnels lead to valves CC, AA",
                    "Valve CC has flow rate=2; tunnels lead to valves DD, BB",
                    "Valve DD has flow rate=20; tunnels lead to valves CC, AA, EE",
                    "Valve EE has flow rate=3; tunnels lead to valves FF, DD",
                    "Valve FF has flow rate=0; tunnels lead to valves EE, GG",
                    "Valve GG has flow rate=0; tunnels lead to valves FF, HH",
                    "Valve HH has flow rate=22; tunnel leads to valve GG",
                    "Valve II has flow rate=0; tunnels lead to valves AA, JJ",
                    "Valve JJ has flow rate=21; tunnel leads to valve II"]
        init = d16(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 1651)
        self.assertEqual(init.test_pt2(), 1707)