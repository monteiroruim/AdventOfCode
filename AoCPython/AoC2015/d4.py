import hashlib

class d4:
    def __init__(self, input):
        self.init_val = input
        self.reset_counter()
        # when md5 hash starts with hit key
        self.key_hit = '00000'


    def reset_counter(self):
        self.counter = 0

    def get_lowest_integer(self):
        '''
        --- Day 4: The Ideal Stocking Stuffer ---
        Santa needs help mining some AdventCoins (very similar to bitcoins) to use as gifts for all the economically forward-thinking little girls and boys.

        To do this, he needs to find MD5 hashes which, in hexadecimal, start with at least five zeroes. 
        The input to the MD5 hash is some secret key (your puzzle input, given below) followed by a number in decimal. 
        To mine AdventCoins, you must find Santa the lowest positive number (no leading zeroes: 1, 2, 3, ...) that produces such a hash.

        For example:

        If your secret key is abcdef, the answer is 609043, because the MD5 hash of abcdef609043 starts with five zeroes (000001dbbfa...), and it is the lowest such number to do so.
        If your secret key is pqrstuv, the lowest number it combines with to make an MD5 hash starting with five zeroes is 1048970; that is, the MD5 hash of pqrstuv1048970 looks like 000006136ef....
        Your puzzle input is yzbqklnj.
        '''
        x_eval = self.init_val + str(self.counter)
        x_md5 = hashlib.md5(x_eval.encode('utf-8')).hexdigest()
        while x_md5.find(self.key_hit) != 0:
            self.counter+=1
            x_eval = self.init_val + str(self.counter)
            x_md5 = hashlib.md5(x_eval.encode('utf-8')).hexdigest()


        print("the final value is: ", self.counter)

    def set_new_hit_key(self, hit_key):
        self.key_hit = hit_key
        self.reset_counter()