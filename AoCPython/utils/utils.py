

# input a file, choose delimiter, output array of (0 - string, 1 - integer or 2 - float)
class fileHandler:

    def parse_coordinates(self, path_file_name, delimiter):
        with open(path_file_name, 'r') as f:
            lines = f.readlines()
        f.close()
        parent_array = []
        child_array = []
        for line in lines:
            my_coord = line.split(delimiter)
            parent_array.append(my_coord[0].strip())
            child_array.append(my_coord[1].strip())
        return parent_array, child_array


    def parse_2_int_array(self, path_file_name):
        print(path_file_name)
        with open(path_file_name, 'r') as f:
            numbers = set([int(entry) for entry in f.readlines()])
            return numbers
    