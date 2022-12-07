class d7:
    def __init__(self, input):
        self.init_val = input

        self.result1 = 0 # 1443806
        self.result2 = 0

        self.tree = {}
        self.current_dir = "/"
        self.total_space = 70000000
        self.program_space = 30000000

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
    

    def translate_cmd(self, cmd):
        # print(cmd, self.tree, len(self.current_dir))
        if cmd.startswith('ls') or cmd.startswith('dir'):
            return  
        a, b = cmd.split()
        if 'cd' == a:
            if b == '..':
                self.current_dir = self.current_dir.rsplit('/', 2)[0]+"/"
            elif b == '/':
                self.current_dir = '/'
            else:
                self.current_dir += b+'/'
        else:
            if self.current_dir not in self.tree.keys():
                self.tree[self.current_dir] = int(a)
            else:
                self.tree[self.current_dir] += int(a)
            if len(self.current_dir) > 1:
                k = self.current_dir
                while True:
                    k = k.rsplit('/', 2)[0]+"/"
                    if k not in self.tree.keys():
                        self.tree[k] = int(a)
                    else:
                        self.tree[k] += int(a)
                    if k == '/':
                        break
    
    
    def sum_dirs(self):
        return sum([v for k,v in self.tree.items() if v <= 100000])

    
    def get_deletion_candidate(self):
        current_free_space = self.total_space - self.tree['/']
        needed_space = self.program_space - current_free_space
        candidate_list = sorted([v for k,v in self.tree.items() if v > needed_space])

        return candidate_list[0]


    def get_directories_size(self):
        for cmd in self.init_val:
            c = cmd.strip('$ ')
            self.translate_cmd(c)
        # print(self.tree)
            
        self.result1 = self.sum_dirs()
        self.result2 = self.get_deletion_candidate()


import unittest
class test(unittest.TestCase):
    def run(self):
        test_set = ["$ cd /","$ ls","dir a",
        "14848514 b.txt","8504156 c.dat","dir d",
        "$ cd a","$ ls","dir e","29116 f","2557 g",
        "62596 h.lst","$ cd e","$ ls","584 i",
        "$ cd ..","$ cd ..","$ cd d","$ ls",
        "4060174 j","8033020 d.log","5626152 d.ext",
        "7214296 k"]
        init = d7(test_set)
        init.get_directories_size()
        self.assertEqual(init.test_pt1(), 95437)
        self.assertEqual(init.test_pt2(), 24933642)