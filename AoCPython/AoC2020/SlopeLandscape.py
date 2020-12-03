class SlopeLandscape():
    def __init__(self, input_map, x=None, y=None, hit_key=None):  
        self.input_set = input_map
        if x is None:
            self.x = [1,3,5,7,1]
        else:
            self.x = x
        
        if y is None:
            self.y = [1,1,1,1,2]
        else:
            self.y = y
        
        if hit_key is None:
            self.search_key = "#"
        else:
            self.search_key = hit_key
        
        self.x_size, self.y_size = self.get_input_sizes()


    def get_input_sizes(self):
        return  len(self.input_set[0]), len(self.input_set)

    
    def count_trees(self, x_move, y_move):
        tree_count = 0
        x,y = 0,0
        while (y+1) <= self.y_size:
            if self.input_set[y][x%self.x_size] == self.search_key:
                tree_count+=1            
            x += x_move
            y += y_move
        return tree_count

    
    def prob_arboreal_stop(self):
        prob = 1
        for idx, val in enumerate(self.x):
            count = self.count_trees(self.x[idx], self.y[idx])
            prob *= count
        return prob


    def result(self):
        res1 = self.count_trees(self.x[1], self.y[1])
        print("Result part 1: " + str(res1))
        res2 = self.prob_arboreal_stop()
        print("Result part 2: " + str(res2))