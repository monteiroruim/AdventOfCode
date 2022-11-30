import unittest
class d10:
    def __init__(self, input, n_times):
        # clean the whitespace in the file
        self.init_val = input
        self.n = n_times

        self.result1 = 0 # 492982
        self.result2 = 0
    
    def test_pt1(self):
        print(" ----- test 1 ----- ")
        self.look_say()

        return self.result1


    def test_pt2(self):
        print(" ----- test 2 ----- ")
        #self.look_say()

        return self.result2

    def look_say(self):
        for j in range(self.n):
            if j == 40:
                self.result1 = len(f_ret)

            print(j)
            cnt = 1
            f_ret = ""
            new_val = self.init_val[0]
            for i in range(1,len(self.init_val)):
                #print(cnt, new_val, " --> ", f_ret, i, "- ", self.init_val[i])
                if self.init_val[i] != new_val:
                    f_ret = f_ret + str(cnt) + str(new_val)
                    new_val = self.init_val[i]
                    cnt = 1
                else:
                    cnt += 1
            
            f_ret = f_ret + str(cnt) + str(new_val)
            self.init_val = f_ret
        
        self.result2 = len(f_ret)


class reslen(unittest.TestCase):
    def run_test(self):
        test_set = "111221"
        print(" ----- test 1----- ")
        init = d10(test_set, 0)
        self.assertEqual(init.test_pt1(), 6)
        self.assertEqual(init.test_pt2(), 0)
    