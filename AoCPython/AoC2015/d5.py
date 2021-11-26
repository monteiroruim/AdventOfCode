class d5:
    def __init__(self, input):
        self.init_val = input
        self.naughty_counter = 0
        self.nice_counter = 0

        self.exclusions = ['ab', 'cd', 'pq', 'xy']
        self.vowel_list = 'aeiou'


    def reset_params(self):
        self.nice_counter = 0
        self.naughty_counter = 0


    ''''
        --- Day 5: Doesn't He Have Intern-Elves For This? ---
        Santa needs help figuring out which strings in his text file are naughty or nice.

        A nice string is one with all of the following properties:

        It contains at least three vowels (aeiou only), like aei, xazegov, or aeiouaeiouaeiou.
        It contains at least one letter that appears twice in a row, like xx, abcdde (dd), or aabbccdd (aa, bb, cc, or dd).
        It does not contain the strings ab, cd, pq, or xy, even if they are part of one of the other requirements.
        For example:

        ugknbfddgicrmopn is nice because it has at least three vowels (u...i...o...), a double letter (...dd...), and none of the disallowed substrings.
        aaa is nice because it has at least three vowels and a double letter, even though the letters used by different rules overlap.
        jchzalrnumimnmhp is naughty because it has no double letter.
        haegwjzuvuyypxyu is naughty because it contains the string xy.
        dvszwmarrgswjxmb is naughty because it contains only one vowel.
        How many strings are nice?

        --- Part Two ---
        Realizing the error of his ways, Santa has switched to a better model of determining whether a string is naughty or nice. None of the old rules apply, as they are all clearly ridiculous.

        Now, a nice string is one with all of the following properties:

        It contains a pair of any two letters that appears at least twice in the string without overlapping, like xyxy (xy) or aabcdefgaa (aa), but not like aaa (aa, but it overlaps).
        It contains at least one letter which repeats with exactly one letter between them, like xyx, abcdefeghi (efe), or even aaa.
        For example:

        qjhvhtzxzqqjkmpb is nice because is has a pair that appears twice (qj) and a letter that repeats with exactly one letter between them (zxz).
        xxyxx is nice because it has a pair that appears twice and a letter that repeats with one between, even though the letters used by each rule overlap.
        uurcxstgmygtbstg is naughty because it has a pair (tg) but no repeat with a single letter between them.
        ieodomkazucvgmuy is naughty because it has a repeating letter with one between (odo), but no pair that appears twice.
        How many strings are nice under these new rules?
    '''
    def check_bad_combos(self, word):
        for opt in self.exclusions:
            if word.find(opt) > -1:
                # bad combo found exit with naughty word confirmed
                return True
        # exclusion keys not found in the word false naughty word
        return False

    
    def check_doubled_char(self, word):
        for i in range(1,len(word)):
            if word[i-1]==word[i]:
                # duplication found, exit immediatelly with a false for naughty word
                return False
        
        # if it get here there is no duplication return naughty word = True
        return True


    def check_3vowels(self, word):
        sum1 = sum([word.count(vw) for vw in self.vowel_list if vw in word])
        if sum1 > 2:
            # break and return as a False for naugty word
            return False
        else:
            # not enough vowels confirmed naughty word
            return True


    def get_good_strings_count_old(self):
        for v in self.init_val:
            naughty_eval = []
            # break if It does not contain the strings ab, cd, pq, or xy
            # It contains at least one letter that appears twice in a row
            # It contains at least three vowels (aeiou only) > 2 characters
            if len(v) < 3:
                naughty_eval.append(True)
            else:
                naughty_eval.append(self.check_bad_combos(v))
                naughty_eval.append(self.check_3vowels(v))
                naughty_eval.append(self.check_doubled_char(v))
          
            if True in naughty_eval:
                self.naughty_counter+=1
            else:
                self.nice_counter+=1
        

        print("number of naughty strings ", self.naughty_counter)
        print("number of nice strings ", self.nice_counter)


    def check_word_pairs(self, word):
        # It contains a pair of any two letters that appears at least twice in the string without overlapping, like xyxy (xy) or aabcdefgaa (aa), but not like aaa (aa, but it overlaps).
        for i in range(1,len(word)):
            combo = word[i-1] + word[i]
            if word.count(combo) > 1:
                # duplication found, exit immediatelly with a false for naughty word
                return False
        return True
    

    def check_repeat_triples(self, word):
        # It contains at least one letter which repeats with exactly one letter between them, like xyx, abcdefeghi (efe), or even aaa.
        for i in range(1,len(word)-1):
            
            if word[i-1] == word[i+1]:
                return False

        return True


    def get_good_strings_count(self):
        self.reset_params()
        for v in self.init_val:
            naughty_eval = []

            if len(v) < 3:
                naughty_eval.append(True)
            else:
                # apply new rules                
                naughty_eval.append(self.check_word_pairs(v))
                naughty_eval.append(self.check_repeat_triples(v))

            if True in naughty_eval:
                self.naughty_counter+=1
            else:
                self.nice_counter+=1
        

        print("number of naughty strings ", self.naughty_counter)
        print("number of nice strings ", self.nice_counter)
                

            