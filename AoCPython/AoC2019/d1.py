class d1:
    
    def __init__(self):
        '''
        constructor
        :param coordinate1 is the line position
        :param coordinate2 is the column position
        :startVal is the value in the coordinate 1:1
        '''
        self.aircraft_modules = [118474,89187,55404,99729,110519,105939,97881,134416,121399,85572,96223,121830,116952,51791,54990,87574,124293,
                            110738,63018,58979,121364,126737,124272,129029,81031,87281,142930,136317,108278,67501,50264,136054,122299,
                            84352,111745,65118,61906,58711,72634,143462,100637,83705,130900,93339,73279,138297,92996,139955,58905,140094,
                            134137,137049,58000,115166,141420,76790,90670,110806,130804,70101,56430,117847,89100,80854,108783,121459,87944,
                            105578,134521,136085,118503,73630,80192,59111,79084,85915,95139,148425,56153,117876,133583,143720,138704,
                            141052,69262,76687,95278,99868,62316,56673,79013,51022,87035,145645,148465,92768,83509,108044]


        self.total_fuel = 0


    def get_module_fuel(self, mass_val):
        return (int(mass_val/3)-2)


    def get_total_fuel_1(self):
        for mass in self.aircraft_modules:
            self.total_fuel=self.total_fuel+self.get_module_fuel(mass)
        
        return self.total_fuel
    

    def get_total_fuel_2(self):
        for mass in self.aircraft_modules:
            init_module = self.get_module_fuel(mass)
            module_active=True
            module_total=init_module
            while module_active:
                if (int(init_module/3)-2) > 0:
                    init_module = self.get_module_fuel(init_module)
                    module_total=module_total+init_module
                    module_active=True
                else:
                    module_active=False
                #print("module sum", module_total)
            
            self.total_fuel=self.total_fuel+module_total

        #print("total", self.total_fuel)