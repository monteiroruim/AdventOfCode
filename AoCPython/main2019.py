from AoC2019 import d4

print("exercice 4.1")
d4_input = "353096-843212"
a41 = d4.d4(d4_input)
a41.calc_num_passwords_1()
print("the answer is {}".format(a41.number_pwds))

print("exercice 4.2")
a42 = d4.d4(d4_input)
a42.calc_num_passwords()
print("the answer is {}".format(a42.number_pwds))