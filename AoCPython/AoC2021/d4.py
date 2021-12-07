from copy import deepcopy


class d4:
    def __init__(self, input):
        # https://adventofcode.com/2021/day/4
        self.init_val = input
        
        self.picklist = [int(num) for num in self.init_val[0].split(",")]
        self.session_cards = dict()
        self.winner_card = dict()
        self.looser_card = dict()

        self.reset_session_cards()

        self.result1 = 0
        self.result2 = 0       

    def get_res_pt1(self, p=False):       
        if p:
            print(" ----- Result part 1 ----- ")
            print(self.result1)

        return self.result1

    
    def get_res_pt2(self, p=False):
        if p:
            print(" ----- Result part 2 ----- ")
            print(self.result2)  
        return self.result2


    def reset_session_cards(self):
        print("Starting new draw!")
        card=0
        for i,v in enumerate(self.init_val):
            if i > 0:
                # card processing
                if len(v.replace("\n", "")) < 1:
                    card+=1
                    line=1
                    self.session_cards[card] = dict()
                else:
                    # existing card add new line
                    self.session_cards[card][line] = [int(num) for num in v.split()]
                    line+=1
                    

    def save_winner_card(self, wn):
        tot = 0
        for line in self.winner_card:
            tot+=sum(val for val in self.winner_card[line] if val > 0)
        
        self.result1 = wn*tot


    def save_last_card(self, ln):
        tot = 0
        for line in self.looser_card:
            tot+=sum(val for val in self.looser_card[line] if val > 0)
        self.result2 = ln*tot
        
    def scan_cols(self, cardid):
        win = False
        for col in range(0, len(self.session_cards[cardid][1])):
            tmp = list()            
            for line in self.session_cards[cardid]:
                tmp.append(self.session_cards[cardid][line][col])            
            if len(self.session_cards[cardid].keys()) == tmp.count(-1):
                win = True
                break
        return win


    def scan_lines(self, c):
        win = False
                    
        for line in self.session_cards[c]:
            if self.session_cards[c][line].count(-1) == len(self.session_cards[c][line]):
                win = True
                break
        return win


    def process_card(self, num, c):
        for line in self.session_cards[c]:
            if num in self.session_cards[c][line]:
                pos = self.session_cards[c][line].index(num)
                self.session_cards[c][line][pos] = -1
            


    from copy import deepcopy
    def start_draw(self):
        no_winner = True
        cards_finished = list()
        for num in self.picklist:
            for c in self.session_cards:                
                self.process_card(num,c)

                if c not in cards_finished:

                    if self.scan_lines(c) or self.scan_cols(c):                                          
                        # print(num, " to finish CARD", c)
                        cards_finished.append(c)
                        if no_winner:
                            self.winner_card = deepcopy(self.session_cards[c])
                            self.save_winner_card(num)
                            no_winner = False
                            break
                        else:
                            if len(self.session_cards.keys()) - len(cards_finished) == 0:
                                self.looser_card = deepcopy(self.session_cards[c])
                                self.save_last_card(num)
                                return
                                                          

import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["7,4,9,5,11,17,23,2,0,14,21,24,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1","",
                    "22 13 17 11  0"," 8  2 23  4 24", "21  9 14 16  7"," 6 10  3 18  5"," 1 12 20 15 19",
                    "",
                    " 3 15  0  2 22"," 9 18 13 17  5","19  8  7 25 23", "20 11 10 24  4","14 21 16 12  6",
                    "",
                    "14 21 17 24  4","10 16 15  9 19","18  8 23 26 20","22 11 13  6  5", " 2  0 12  3  7"]
        init = d4(test_set)
        init.start_draw()
        self.assertEqual(init.get_res_pt1(True), 4512)
        # second test
        # init.calc_life_support()
        self.assertEqual(init.get_res_pt2(True), 1924) 