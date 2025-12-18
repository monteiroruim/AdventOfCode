from collections import defaultdict
class d8:
    def __init__(self, input):
        self.get_data(input)

        self.result1 = 0
        self.result2 = 0

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
    
    def get_data(self, init_data):
        # large number of small electrical junction boxes
        self.data = list()
        self.len_data = len(init_data)
        for coord in init_data:
            x,y,z = [int(v) for v in coord.split(",")]
            self.data.append((x,y,z))
        self.len_data = len(self.data)
        self.distances = list()
        for i, (x,y,z) in enumerate(self.data):
            for j, (x1,y1,z1) in enumerate(self.data):
                # that are as close together as possible according to straight-line distance.
                d = (x-x1)**2 + (y-y1)**2 + (z-z1)**2
                if i>j:
                    self.distances.append((d, i, j))
        
        # sort shortest
        self.distances = sorted(self.distances)
        self.connection_idx = {i:i for i in range(self.len_data)}

    def get_connection_idx(self, idx) -> int:
        if idx == self.connection_idx[idx]:
            return idx
        self.connection_idx[idx] = self.get_connection_idx(self.connection_idx[idx])

        return self.connection_idx[idx]
    
    def mix_conections(self, x,y):
        self.connection_idx[self.get_connection_idx(x)] = self.get_connection_idx(y)

    def resolve(self, n_connections) -> None:
         # In this example, the two junction boxes which are closest together are 
        # 162,817,812 and 425,690,689.
        #the Elves would like to focus on connecting pairs of junction boxes 
        
        con_counter = 0
        for ix, (d, i, j) in enumerate(self.distances):
            if ix == n_connections:
                tmp = defaultdict(int)
                for m in range(self.len_data):
                    tmp[self.get_connection_idx(m)] += 1
                tmp_sorted = sorted(tmp.values())
                self.result1 = tmp_sorted[-1]*tmp_sorted[-2]*tmp_sorted[-3]
            if self.get_connection_idx(i) != self.get_connection_idx(j):
                con_counter += 1
                # reach the end of connection list scan
                if con_counter == self.len_data-1:
                    self.result2 = self.data[i][0] * self.data[j][0]
                self.mix_conections(i,j)

        
        
import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["162,817,812",
                    "57,618,57",
                    "906,360,560",
                    "592,479,940",
                    "352,342,300",
                    "466,668,158",
                    "542,29,236",
                    "431,825,988",
                    "739,650,466",
                    "52,470,668",
                    "216,146,977",
                    "819,987,18",
                    "117,168,530",
                    "805,96,715",
                    "346,949,466",
                    "970,615,88",
                    "941,993,340",
                    "862,61,35",
                    "984,92,344",
                    "425,690,689"]

        init = d8(test_set)
        init.resolve(10)
        self.assertEqual(init.test_pt1(), 40) #  
        self.assertEqual(init.test_pt2(), 25272)