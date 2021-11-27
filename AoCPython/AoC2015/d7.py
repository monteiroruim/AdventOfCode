class d7:
    def __init__(self, input, part=1):
        self.init_val = input

        self.wires = dict()

        for cmd in self.init_val:
            self.parse_instruction(cmd)

        # override for part 2
        if part==2:
            self.wires['b']['sig'] = 16076
            self.wires['b']['op'] = (None, None, None)

        '''
        --- Day 7: Some Assembly Required ---
            This year, Santa brought little Bobby Tables a set of wires and bitwise logic gates! Unfortunately, little Bobby is a little under the recommended age range, and he needs help assembling the circuit.

            Each wire has an identifier (some lowercase letters) and can carry a 16-bit signal (a number from 0 to 65535). 
            A signal is provided to each wire by a gate, another wire, or some specific value. 
            Each wire can only get a signal from one source, but can provide its signal to multiple destinations. 
            A gate provides no signal until all of its inputs have a signal.

            The included instructions booklet describes how to connect the parts together: x AND y -> z means to connect wires x and y to an AND gate, and then connect its output to wire z.

            For example:

            123 -> x means that the signal 123 is provided to wire x.
            x AND y -> z means that the bitwise AND of wire x and wire y is provided to wire z.
            p LSHIFT 2 -> q means that the value from wire p is left-shifted by 2 and then provided to wire q.
            NOT e -> f means that the bitwise complement of the value from wire e is provided to wire f.
            Other possible gates include OR (bitwise OR) and RSHIFT (right-shift).
            
            If, for some reason, you'd like to emulate the circuit instead, almost all programming languages (for example, C, JavaScript, or Python) provide operators for these gates.

            For example, here is a simple circuit:

            123 -> x
            456 -> y
            x AND y -> d
            x OR y -> e
            x LSHIFT 2 -> f
            y RSHIFT 2 -> g
            NOT x -> h
            NOT y -> i
            After it is run, these are the signals on the wires:

            d: 72
            e: 507
            f: 492
            g: 114
            h: 65412
            i: 65079
            x: 123
            y: 456
            In little Bobby's kit's instructions booklet (provided as your puzzle input), what signal is ultimately provided to wire a?
        '''

    def parse_instruction(self, instr):
        # print("Parsing ", instr)
        src_dest = instr.split('->')
        src_ops = src_dest[0]
        src_ops = src_ops.split()
        dest = src_dest[1].strip()
        self.wires[dest] = dict()
        
        if "NOT" in src_ops:
            op, v1 = src_ops[0], src_ops[1]
            self.wires[dest]['op'] = (op, v1, None)
            self.wires[dest]['sig'] = -1

        elif "AND" in src_ops or "OR" in src_ops or "LSHIFT" in src_ops or "RSHIFT" in src_ops:
            v1, op, v2 = src_ops[0], src_ops[1], src_ops[2]
            self.wires[dest]['op'] = (op, v1, v2)
            self.wires[dest]['sig'] = -1

        elif src_ops[0].isdigit() and len(src_ops) == 1:
            self.wires[dest]['op'] = (None, src_ops[0], None)
            self.wires[dest]["sig"] = int(src_ops[0])
        
        elif not(src_ops[0].isdigit()) and len(src_ops) == 1:
            self.wires[dest]['op'] = ("REPLACE", src_ops[0], None)
            self.wires[dest]["sig"] = -1
        

    def run_instructions(self):                
        # keep running until all values computed
        checkpoint = True
        while checkpoint:
            w_cnt = 0
            for wire in self.wires.keys():
                # print(wire)
                if self.wires[wire]["sig"] < 0:
                    # not calculated, extract inputs and operation
                    # print("processing ",self.wires[wire]['op'])
                    cmd, v1, v2 = self.wires[wire]['op'] 
                    if v1 is None:
                        pass 
                    elif v1.isdigit():
                        w1_v = int(v1)
                    else:
                        w1_v = self.wires[v1]['sig']
                    
                    if v2 is None:
                        pass 
                    elif v2.isdigit():
                        w2_v = int(v2)
                    else:
                        w2_v = self.wires[v2]['sig']

                    if cmd == "NOT":
                        if w1_v > -1:
                            self.wires[wire]['sig'] = ~int(w1_v) & 65535
                    elif cmd == "AND":                        
                        if w1_v > -1 and w2_v > -1:
                            self.wires[wire]['sig'] = int(w1_v) & int(w2_v)
                    elif cmd == "OR":
                        if w1_v > -1 and w2_v > -1:
                            self.wires[wire]['sig'] = int(w1_v) | int(w2_v)
                    elif cmd == "LSHIFT":
                        if w1_v > -1 and v2.isdigit():
                            self.wires[wire]['sig'] = int(w1_v) << int(v2)
                    elif cmd == "RSHIFT":
                        if w1_v > -1 and v2.isdigit():
                            self.wires[wire]['sig'] = int(w1_v) >> int(v2)
                    elif cmd == "REPLACE":
                        if w1_v > -1:
                            self.wires[wire]['sig'] = int(w1_v)
                    
                    if self.wires[wire]['sig'] > -1:
                        w_cnt +=1
                    
                    # print("wires processed ", w_cnt, " from ", len(self.wires.keys()))
                else:
                    # val calculated nothing to do
                    # print(wire, "done", self.wires[wire]["sig"])
                    continue

            
            # in the end check if all the values were achieved otherwise run again
            checkpoint = False
            for wire in self.wires.keys():
                #print("wire ", self.wires[wire])
                if self.wires[wire]["sig"] < 0:
                    checkpoint = True
                    break
            
        
        print("finished all wire values ")
            
    def get_wire_value(self, wire_id):
        return self.wires[wire_id]['sig']


    def get_wire_values(self, wire_id="a"):
        self.run_instructions()
        w = self.get_wire_value(wire_id)
        print(wire_id, " value is ", w)