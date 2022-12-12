

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


    def parse_2_int_set(self, path_file_name):
        with open(path_file_name, 'r') as f:
            numbers = set([int(entry) for entry in f.readlines()])
            return numbers
    

    def parse_2_int_array(self, path_file_name):
        with open(path_file_name, 'r') as f:
            numbers = [int(entry) for entry in f.readlines()]
            return numbers


    def parse_line_2_list(self, path_file_name):
        with open(path_file_name, 'r') as f:
            result_set = [line.replace('\n', '').replace('\r', '') for line in f]
        return result_set

    def parse_file_2_str(self, path_file_name):
        result_set = []
        with open(path_file_name, 'r') as f:
            for line in f:
                for instr in line:
                    result_set.append(instr)
        return result_set

    
    def parse_line_2_int_array(self, path_file_name, delimiter=','):
        with open(path_file_name, 'r') as f:
            result_set = [int(n) for line in f for n in line.split(delimiter)]
        return result_set
    

    def parse_inst_from_map(self, path_file_name, separator='\n\n'):
        with open(path_file_name, 'r') as f:
            map_state, instruction_list = f.read().split(separator)
        return map_state, instruction_list

    def parse_on_line_break(self, path_file_name, separator='\n\n'):
        return open(path_file_name).read().strip().split(separator)