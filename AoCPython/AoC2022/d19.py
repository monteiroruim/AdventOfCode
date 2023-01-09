class d19:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0
        self.result2 = 1

        self.blueprints = self.parse_blueprints()

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

    
    def parse_blueprints(self):
        dataset = dict()
        for bp in self.init_val:
            k, v = bp.split(':')
            # print('1 ', k)
            k = [int(w) for w in k.split() if w.isdigit()][0]
            ore_robot, clay_robot, obsidian_robot,geode_robot = v.split('. ')
            ore_robot = [int(w) for w in ore_robot.split() if w.isdigit()][0]
            clay_robot = [int(w) for w in clay_robot.split() if w.isdigit()][0]
            obsidian_robot = [int(w) for w in obsidian_robot.split() if w.isdigit()]
            geode_robot = [int(w) for w in geode_robot.split() if w.isdigit()]
            if not dataset.get(k):
                dataset[k] = (
                    ((ore_robot,0,0,0),(1,0,0,0)),
                    ((clay_robot,0,0,0), (0,1,0,0)),
                    ((obsidian_robot[0],obsidian_robot[1],0,0),(0,0,1,0)),
                    ((geode_robot[0],0,geode_robot[1],0),(0,0,0,1)),
                    ((0,0,0,0),(0,0,0,0))
                )
            
        return dataset

    def get_quality_level(self,bp,time):
        # quality level[blueprint] = blueprint's ID number * largest number of geodes that can be opened in 24 minutes using that blueprint
        cnt = [[[0,0,0,0],[1,0,0,0]]]
        for _ in range(time):
            tmp = []
            for q,p in cnt:
                for u,r in bp:
                    # print(q, u)
                    q_units = [q-c for q, c in zip(q,u)]
                    # print("number of items available", q_units)
                    if all(item>=0 for item in q_units):
                        prod_robot = [sum(v) for v in zip(p,r)]
                        # print("robots production ",prod_robot)
                        tmp.append([[sum(v) for v in zip(q_units,p)], prod_robot])
            # print(len(tmp))
            tmp.sort(key = lambda x: tuple((b, a) for a, b in zip(*map(reversed, x))), reverse = True)
            cnt = tmp[:5000]
        # print(cnt)
        print("Max egeod", max(robot[3] for robot, _ in cnt))
        return max(robot[3] for robot, _ in cnt)

    def run(self):
        # print(self.blueprints)
        print("parte 1" )
        for k,v in self.blueprints.items():
            self.result1 += (k * self.get_quality_level(v,24))
        print("parte 2")
        for i,v in enumerate(self.blueprints.items()):
            if i >2:
                break
            self.result2 *= self.get_quality_level(v[1], 32)
            
import unittest
class test(unittest.TestCase):
    def run(self):
        print('--------- Test suite -----------')
        test_set = [
            "Blueprint 1: Each ore robot costs 4 ore. Each clay robot costs 2 ore. Each obsidian robot costs 3 ore and 14 clay. Each geode robot costs 2 ore and 7 obsidian.",
            "Blueprint 2: Each ore robot costs 2 ore. Each clay robot costs 3 ore. Each obsidian robot costs 3 ore and 8 clay. Each geode robot costs 3 ore and 12 obsidian."
        ]
        init = d19(test_set)
        init.run()
        self.assertEqual(init.test_pt1(), 33)
        self.assertEqual(init.test_pt2(), 3472)