class d2:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0 # 13009
        self.result2 = 0
        self.decoder = {
            "A": {'val': 1, 'draw': ("A", 3), 'win': ("B", 6), 'loss': ("C", 0)}, 
            "B": {'val': 2, 'draw': ("B", 3), 'win': ("C", 6), 'loss': ("A", 0)}, 
            "C": {'val': 3, 'draw': ("C", 3), 'win': ("A", 6), 'loss': ("B", 0)}, 
            "X": {'val': 1, 'draw': "A", 'win': "C", 'loss': "B"}, 
            "Y": {'val': 2, 'draw': "B", 'win': "A", 'loss': "C"}, 
            "Z": {'val': 3, 'draw': "C", 'win': "B", 'loss': "A"}
        }
        self.result_outcome = {
            'X': "loss",
            'Y': 'draw',
            'Z': 'win'
        }

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
    
    def eval_draw(self, draw):
        # extract values
        opponent, inner = draw[0], self.decoder[draw[-1]]
        #print("mine", inner, "opponent", opponent)
        if inner['win'] == opponent:
            return inner['val'] + 6
        elif inner['draw'] == opponent:
            return inner['val'] + 3
        else:
            return inner['val']
    
    def eval_inner_draw(self, draw):
        opponent, outcome = self.decoder[draw[0]], self.result_outcome[draw[-1]]
        my_draw = opponent[outcome]
        return self.decoder[my_draw[0]]['val'] + my_draw[1]


    def get_total_score(self):
        res = []
        res2 = []
        for i, val in enumerate(self.init_val):
            #print("eval", i, val)
            res.append(self.eval_draw(val))
            res2.append(self.eval_inner_draw(val))
        
        self.result1 = sum(res)
        self.result2 = sum(res2)


import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["A Y", "B X", "C Z"]
        init = d2(test_set)
        init.get_total_score()
        self.assertEqual(init.test_pt1(), 15)
        self.assertEqual(init.test_pt2(), 12)
