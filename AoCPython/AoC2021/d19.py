from itertools import permutations
from collections import defaultdict
from unittest import TestCase


class d19:
    def __init__(self, input):
        self.init_val = self.parse_input(input)

        # https://adventofcode.com/2021/day/19

        # play with lambdas for rotation
        self.rotate_x = lambda x,y,z: (x,-z,y)
        self.rotate_y = lambda x,y,z: (-z,y,x)
        self.rotate_z = lambda x,y,z: (-y,x,z)
        self.sub_coord = lambda coord1, coord2: [coord1[0] - coord2[0], coord1[1] - coord2[1], coord1[2] - coord2[2]]
        self.add_coord = lambda coord1, coord2: [coord1[0] + coord2[0], coord1[1] + coord2[1], coord1[2] + coord2[2]]

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
        i = 0
        scanners = []
        while i < len(input):
            if "scanner" in input[i]:
                beacons = []
                i+=1
                while i < len(input) and len(input[i]) > 1:
                    beacon = [int(v) for v in input[i].split(",")]
                    beacons.append(tuple(beacon))
                    i+=1
                
                scanners.append(beacons)
                i+=1

        return scanners


    def rotate(self, coord):
        for tx in range(4):  # rotations around x
            cpos = coord
            for _ in range(tx):
                cpos = self.rotate_x(*cpos)
            for _ in range(4):  # rotations around z
                cpos = self.rotate_z(*cpos)
                yield cpos

        for ty in [1, 3]:  # rotations around y
            cpos = coord
            for _ in range(ty):
                cpos = self.rotate_y(*cpos)
            for _ in range(4):  # rotations around z
                cpos = self.rotate_z(*cpos)
                yield cpos


    def scan_mapper(self,scanner1, scanner2):
        # get second scanner possible rotations
        hits = dict()
        for idx, rotation in enumerate(zip(*map(self.rotate,scanner2))):
            hits[idx] = defaultdict(int)
            for s1_beacon in scanner1:
                for s2_beacon in rotation:                   
                    (x,y,z) = self.sub_coord(s2_beacon,s1_beacon)
                    hits[idx][x] += 1
            
            hitlist = [k for k,v in hits[idx].items() if v >=12]

            for dx in hitlist:
                dy = None
                dz = None
                # overlaps
                overlap = list()
                for s1_beacon in scanner1:
                    for s2_beacon in rotation:
                        (x,y,z) = self.sub_coord(s2_beacon, s1_beacon)
                        if x == dx:
                            if dy is None:
                                dy = y
                            if dz is None:
                                dz = z
                            
                            if dy == y and dz == z:
                                overlap.append(s1_beacon)
                if len(set(overlap)) >=12:
                    yield rotation, (dx,dy,dz)



    def scan(self):
        tmp_scanners = dict()
        tmp_scanners[0] = self.init_val[0]
        beacon_coord = {0: (0,0,0)}

        while len(tmp_scanners) < len(self.init_val):
            for i in range(len(self.init_val)):
                if i not in tmp_scanners.keys():
                    continue
                curr_scanner = tmp_scanners[i]
                for j in range(len(self.init_val)):
                    if j in tmp_scanners.keys():
                        continue
                    for (rotated, coords) in self.scan_mapper(curr_scanner, self.init_val[j]):
                        tmp_scanners[j] = rotated
                        beacon_coord[j] = self.add_coord(coords, beacon_coord[i])
        
        beacons = set()
        for idx, scanner in tmp_scanners.items():
            for beacon in scanner:
                beacons.add(tuple(self.sub_coord(beacon, beacon_coord[idx])))
        # How many beacons are there?
        self.result1 = len(beacons)

        for i, j in permutations(range(len(tmp_scanners)), 2):
            manh_dist = self.sub_coord(beacon_coord[i], beacon_coord[j])
            self.result2 = max(self.result2, abs(manh_dist[0]) + abs(manh_dist[1]) + abs(manh_dist[2]))

class test(TestCase):
    def run(self):
        test_set = [
            "--- scanner 0 ---",
            "404,-588,-901",
            "528,-643,409",
            "-838,591,734",
            "390,-675,-793",
            "-537,-823,-458",
            "-485,-357,347",
            "-345,-311,381",
            "-661,-816,-575",
            "-876,649,763",
            "-618,-824,-621",
            "553,345,-567",
            "474,580,667",
            "-447,-329,318",
            "-584,868,-557",
            "544,-627,-890",
            "564,392,-477",
            "455,729,728",
            "-892,524,684",
            "-689,845,-530",
            "423,-701,434",
            "7,-33,-71",
            "630,319,-379",
            "443,580,662",
            "-789,900,-551",
            "459,-707,401",
            "",
            "--- scanner 1 ---",
            "686,422,578",
            "605,423,415",
            "515,917,-361",
            "-336,658,858",
            "95,138,22",
            "-476,619,847",
            "-340,-569,-846",
            "567,-361,727",
            "-460,603,-452",
            "669,-402,600",
            "729,430,532",
            "-500,-761,534",
            "-322,571,750",
            "-466,-666,-811",
            "-429,-592,574",
            "-355,545,-477",
            "703,-491,-529",
            "-328,-685,520",
            "413,935,-424",
            "-391,539,-444",
            "586,-435,557",
            "-364,-763,-893",
            "807,-499,-711",
            "755,-354,-619",
            "553,889,-390",
            "",
            "--- scanner 2 ---",
            "649,640,665",
            "682,-795,504",
            "-784,533,-524",
            "-644,584,-595",
            "-588,-843,648",
            "-30,6,44",
            "-674,560,763",
            "500,723,-460",
            "609,671,-379",
            "-555,-800,653",
            "-675,-892,-343",
            "697,-426,-610",
            "578,704,681",
            "493,664,-388",
            "-671,-858,530",
            "-667,343,800",
            "571,-461,-707",
            "-138,-166,112",
            "-889,563,-600",
            "646,-828,498",
            "640,759,510",
            "-630,509,768",
            "-681,-892,-333",
            "673,-379,-804",
            "-742,-814,-386",
            "577,-820,562",
            "",
            "--- scanner 3 ---",
            "-589,542,597",
            "605,-692,669",
            "-500,565,-823",
            "-660,373,557",
            "-458,-679,-417",
            "-488,449,543",
            "-626,468,-788",
            "338,-750,-386",
            "528,-832,-391",
            "562,-778,733",
            "-938,-730,414",
            "543,643,-506",
            "-524,371,-870",
            "407,773,750",
            "-104,29,83",
            "378,-903,-323",
            "-778,-728,485",
            "426,699,580",
            "-438,-605,-362",
            "-469,-447,-387",
            "509,732,623",
            "647,635,-688",
            "-868,-804,481",
            "614,-800,639",
            "595,780,-596",
            "",
            "--- scanner 4 ---",
            "727,592,562",
            "-293,-554,779",
            "441,611,-461",
            "-714,465,-776",
            "-743,427,-804",
            "-660,-479,-426",
            "832,-632,460",
            "927,-485,-438",
            "408,393,-506",
            "466,436,-512",
            "110,16,151",
            "-258,-428,682",
            "-393,719,612",
            "-211,-452,876",
            "808,-476,-593",
            "-575,615,604",
            "-485,667,467",
            "-680,325,-822",
            "-627,-443,-432",
            "872,-547,-609",
            "833,512,582",
            "807,604,487",
            "839,-516,451",
            "891,-625,532",
            "-652,-548,-490",
            "30,-46,-14"]
        t1 = d19(test_set)
        t1.scan()
        self.assertEqual(t1.get_res_pt1(True), 79)
        self.assertEqual(t1.get_res_pt2(True), 3621)