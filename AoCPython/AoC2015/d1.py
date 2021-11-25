class d1:
    def __init__(self, input):
        self.instruction_list = input
        # print(len(self.instruction_list))
        self.test1 = ['(','(',')',')']
        self.lock_ug = False
        self.index_ug1 = 0
        '''
        constructor
        :param coordinate1 is the line position
        :param coordinate2 is the column position
        :startVal is the value in the coordinate 1:1
        '''

    ''''
    Not Quite Lisp

        Santa is trying to deliver presents in a large apartment building, but he can't find the right floor - the directions he got are a little confusing. He starts on the ground floor (floor 0) and then follows the instructions one character at a time.

        An opening parenthesis, (, means he should go up one floor, and a closing parenthesis, ), means he should go down one floor.

        The apartment building is very tall, and the basement is very deep; he will never find the top or bottom floors.

        For example:

        (()) and ()() both result in floor 0.
        ((( and (()(()( both result in floor 3.
        ))((((( also results in floor 3.
        ()) and ))( both result in floor -1 (the first basement level).
        ))) and )())()) both result in floor -3.
        To what floor do the instructions take Santa?
    '''
    def find_floor(self):
        floor = 0
        for i, instr in enumerate(self.instruction_list):
            if instr == '(':
                floor +=1
            elif instr == ')':
                floor-=1
            else:
                print("unknown instruction", floor)
            if floor == -1 and not(self.lock_ug):
                self.store_ug1(i)

        print("final floor:", floor)
        print("first time in basement:", self.index_ug1)

    def store_ug1(self, ix):
        # print(ix)
        self.index_ug1 = ix+1
        self.lock_ug = True
        
