from unittest import TestCase


class d20:
    def __init__(self, input):
        self.parse_input(input)

        self.bright_pixel = '#'
        self.dark_pixel = '.'
        
        self.pixels = lambda x, y: [
            (x - 1, y - 1), (x, y - 1 ), (x + 1, y - 1),
            (x - 1, y), (x, y), (x + 1, y),
            (x - 1, y + 1), (x, y + 1), (x + 1, y + 1)
        ]
        # https://adventofcode.com/2021/day/20
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

   
    def parse_input(self, data):
        # enhancement algorithm
        self.ia_algorithm = data[0]
        # input image
        self.input_image = data[2:]


    def get_bright_coordinates(self) -> set:
        ret_coord = set()
        for y, row in enumerate(self.input_image):
            for x, val in enumerate(row):
                if val == self.bright_pixel:
                    ret_coord.add((x,y))
        return ret_coord


    def get_coord_limits(self, coords):
        tmp_x = [coord[0] for coord in coords]
        tmp_y = [coord[1] for coord in coords]

        return min(tmp_x)-1, max(tmp_x)+1, min(tmp_y)-1, max(tmp_y)+1
        
    
    def apply_algorithm(self, coords, n=2):
        # at least 2 executions
        processed_pixels = set()
   
        for execs in range(n):
            min_x, max_x, min_y, max_y = self.get_coord_limits(coords)
            enhanced_image = set()
            for y in range(min_y, max_y):
                for x in range(min_x, max_x):
                    if not execs % 2:
                        processed_pixels.add((x, y))
                    # build binary representation
                    binary = ""
                    for pixel in self.pixels(x,y):
                        if execs%2 and pixel not in processed_pixels:
                            binary+='1'
                        else:
                            binary += '1' if pixel in coords else '0'
                    if self.ia_algorithm[int(binary, 2)] == self.bright_pixel:
                        enhanced_image.add((x,y))
            coords = enhanced_image
            if execs%2:
                processed_pixels = set()

        return coords
            
    
    def enhance_image(self):
        coords = self.get_bright_coordinates()
        self.result1 = len(self.apply_algorithm(coords,2))
        self.result2 = len(self.apply_algorithm(coords,50))


class test(TestCase):
    def run(self):
        test_set = ["..#.#..#####.#.#.#.###.##.....###.##.#..###.####..#####..#....#..#..##..## \
        #..######.###...####..#..#####..##..#.#####...##.#.#..#.##..#.#......#.### \
        .######.###.####...#.##.##..#..#..#####.....#.#....###..#.##......#.....#. \
        .#..#..##..#...##.######.####.####.#.#...#.......#..#.#.#...####.##.#..... \
        .#..#...##.#.##..#...##.#.##..###.#......#.#.......#.#.#.####.###.##...#.. \
        ...####.#..#..#.##.#....##..#.####....##...##..#...#......#.#.......#.....\
        ..##..####..#...#.#.#...##..#.#..###..#####........#..####......#..#",
        "",
        "#..#.",
        "#....",
        "##..#",
        "..#..",
        "..###"
        ]
        t1 = d20(test_set)
        t1.enhance_image()
        self.assertEqual(t1.get_res_pt1(True), 35)
        self.assertEqual(t1.get_res_pt2(True), 3351)