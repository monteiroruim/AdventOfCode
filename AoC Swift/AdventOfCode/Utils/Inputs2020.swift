//
//  ExerciseInputs.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 01.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation


class Inputs2020 {
    
    static let day09Debug = """
"""
    static let day09 = """
"""
    
    static let day08HandheldHaltingDebug = """
nop +0
acc +1
jmp +4
acc +3
jmp -3
acc -99
acc +1
jmp -4
acc +6
""".components(separatedBy: "\n")
    
    static let day08HandheldHalting = """
nop +612
acc -6
acc +41
acc -4
jmp +388
acc +3
acc +25
acc +11
nop +56
jmp +110
jmp +479
jmp +129
nop +436
jmp +339
acc -3
acc -17
acc -14
acc +37
jmp +24
jmp +324
jmp +233
jmp +1
acc +44
acc +17
nop +150
jmp +163
acc +0
acc +10
acc +49
jmp +170
acc +36
jmp +339
acc +28
acc -8
nop +194
jmp +84
acc +11
jmp +241
acc +0
jmp +1
acc +1
jmp +370
jmp +245
jmp +235
acc -6
acc +27
jmp +493
nop +401
acc +40
acc +7
jmp +562
acc +6
nop +472
acc -7
nop +508
jmp +44
nop +2
jmp -6
nop +542
acc +1
acc +34
acc +39
jmp +239
jmp +238
acc +30
acc -5
acc -11
jmp +357
jmp +65
acc +42
acc -14
acc +18
jmp -53
acc -14
jmp +493
acc +37
acc +23
nop +36
acc +0
jmp +95
jmp +119
acc -10
acc +16
jmp +3
nop +144
jmp -16
nop +27
jmp +219
acc +22
jmp +30
acc -16
acc +6
acc +18
jmp -51
acc -10
acc -18
acc -4
acc -16
jmp +508
nop +202
acc +6
jmp +261
acc +13
jmp -45
acc +0
jmp +1
acc +12
jmp +133
acc -12
acc -8
acc +43
nop +59
jmp +370
acc +40
jmp -78
acc -13
acc -16
acc +5
jmp +283
jmp +95
nop +133
jmp -109
acc +45
jmp +1
acc +44
nop +357
jmp +356
acc -1
jmp +348
jmp +216
nop +183
acc +10
jmp +350
acc +15
jmp +162
acc +42
jmp +1
jmp +1
acc +27
jmp -75
jmp +182
jmp +396
acc +8
acc +35
nop +128
acc -19
jmp +458
acc -7
jmp +45
acc +16
nop +43
nop +85
jmp +129
acc +26
acc +32
acc -13
jmp -52
acc +8
acc +35
jmp +1
nop +264
jmp -71
jmp +286
acc +9
jmp +16
acc +8
nop +258
nop +294
nop +352
jmp -56
acc +26
acc -1
jmp +48
jmp +7
acc +17
acc +28
jmp -155
acc +9
acc -14
jmp -115
acc +26
nop -68
acc -6
jmp -41
acc -16
acc +46
acc +33
jmp +295
acc +29
jmp +387
acc +40
acc +40
jmp -29
acc -8
acc +9
acc +0
acc -8
jmp +340
jmp +66
nop +1
jmp +261
acc +0
jmp -138
nop -29
acc -10
jmp +271
acc +2
acc +17
acc +9
jmp +192
acc +42
acc +2
jmp +174
jmp +393
acc -4
acc -14
acc +13
jmp +286
acc +8
jmp +318
acc +49
acc -12
jmp +42
acc +50
acc +33
acc +2
acc +25
jmp -24
nop +147
acc +19
jmp +324
acc +45
acc +20
acc +49
acc -16
jmp -72
jmp -200
acc -7
jmp +1
jmp -11
acc +4
acc +12
acc -18
nop -55
jmp +9
acc +6
acc +47
jmp +273
acc +6
acc +22
acc +17
jmp +101
jmp +230
acc +3
acc -3
acc -11
nop -170
jmp -182
jmp +20
jmp +79
nop -118
acc +19
nop -52
jmp -251
acc -2
acc +36
jmp -30
nop -231
acc -19
acc +16
acc +34
jmp +169
jmp -69
acc +49
acc +41
acc +41
acc +29
jmp +184
acc +35
jmp -116
jmp +320
acc +48
acc +16
acc +16
jmp +66
nop +2
jmp -167
acc +16
nop -202
acc +30
jmp +306
acc +42
nop -211
acc +21
acc -12
jmp +11
nop +122
acc -2
jmp +195
acc +19
jmp -196
jmp +327
acc -9
acc +49
acc +36
jmp -206
acc +11
acc +17
acc +1
jmp -139
acc +41
acc +0
jmp -132
acc +12
acc -14
acc +2
jmp +197
acc +24
acc +49
acc -12
acc +33
jmp +140
acc +17
acc +43
acc -9
jmp -105
acc -14
acc +29
acc +50
acc -5
jmp -188
acc +4
acc +27
jmp -184
nop -248
acc +39
acc +48
jmp -208
nop -198
jmp -210
acc -8
nop -192
jmp +44
jmp +241
jmp +87
nop -81
acc +39
jmp +265
acc +4
jmp -259
jmp +217
jmp +24
jmp +59
jmp -22
nop +70
nop +199
nop +36
acc +44
jmp +60
jmp +1
acc -2
jmp +17
acc -2
acc -17
jmp +1
acc -10
jmp +196
acc -11
acc -10
jmp +193
acc -17
jmp +149
acc +32
nop -19
jmp -87
jmp -311
acc +46
jmp -39
nop +189
nop -275
acc +20
nop -360
jmp -278
acc +24
acc +20
jmp +152
jmp -376
acc +4
acc -10
nop +228
nop -268
jmp -198
acc +28
acc -11
acc +45
jmp -196
acc +47
acc +1
acc -11
acc +33
jmp -62
acc +45
jmp -372
acc +47
acc -4
acc -14
acc -2
jmp -85
acc +36
jmp -181
jmp -132
nop -399
jmp +36
nop -369
acc +3
acc -19
acc -13
jmp +114
acc -9
acc +36
nop +186
jmp -228
acc +14
jmp -230
nop +188
acc +50
acc +10
jmp +1
jmp -416
acc -6
jmp +37
acc +43
nop -244
nop -180
jmp -359
acc -3
acc +42
acc -9
acc +1
jmp -375
acc +13
nop -49
acc -8
acc +13
jmp -325
acc +0
acc -17
jmp -328
acc -6
jmp -118
acc +13
jmp -129
acc +28
acc +14
acc +4
acc +41
jmp +161
acc -16
acc +25
acc -6
jmp +16
acc +3
nop -61
acc +2
acc +13
jmp -57
jmp -91
acc +19
nop -20
acc -7
acc +39
jmp +135
acc +0
acc +33
acc +30
jmp -465
nop -198
nop -396
acc +3
acc +26
jmp -167
jmp -282
acc -2
acc -6
nop +29
jmp +104
acc +23
acc +19
jmp -366
jmp -217
nop +99
acc -11
jmp -471
nop -483
acc -15
acc +13
acc -19
jmp +127
acc +45
acc +2
acc +10
acc +21
jmp -35
jmp +1
acc -12
acc +35
acc +47
jmp -229
acc +44
acc +16
nop -435
acc -18
jmp -142
acc +27
acc +37
acc -8
jmp -268
acc -17
acc +42
jmp -507
jmp -59
acc +29
acc -4
jmp -112
acc +29
nop -474
nop -164
jmp -476
acc +17
acc +46
jmp -431
jmp -130
acc +8
acc +46
acc +38
nop -42
jmp -515
jmp -129
jmp -416
acc +9
jmp -148
acc -9
acc -16
acc -13
jmp -534
nop -382
acc +39
nop -44
acc +19
jmp -97
acc +9
acc +10
acc +47
jmp -167
nop -490
nop -16
jmp +16
acc +45
acc +9
acc +39
acc -10
jmp +56
jmp -504
acc +17
acc -4
acc +30
jmp -467
nop -30
acc +6
acc +17
jmp -311
jmp -351
acc +18
acc +10
jmp -441
jmp -401
acc +47
acc -8
nop -319
jmp -112
nop -26
acc +15
nop -372
jmp -380
acc -6
jmp -54
acc +4
acc +25
jmp -335
acc -2
acc +41
nop -241
jmp -479
acc +39
acc +10
jmp -194
jmp -51
acc -1
acc +17
jmp -96
jmp -76
acc +22
acc +14
jmp -79
jmp -535
jmp -21
jmp -334
acc +4
acc +0
acc -10
acc +38
jmp -482
jmp +1
acc -17
acc +3
jmp -458
jmp -27
jmp +1
acc -16
jmp -479
acc -18
acc -1
acc -1
jmp -510
acc -17
jmp -194
nop -133
jmp -15
acc +17
acc +5
acc +38
acc +39
jmp +1
"""
    
    static let day07LuggageDebug2 = """
shiny gold bags contain 2 dark red bags.
dark red bags contain 2 dark orange bags.
dark orange bags contain 2 dark yellow bags.
dark yellow bags contain 2 dark green bags.
dark green bags contain 2 dark blue bags.
dark blue bags contain 2 dark violet bags.
dark violet bags contain no other bags.
""".components(separatedBy: "\n")
        
    static let day07LuggageDebug = """
light red bags contain 1 bright white bag, 2 muted yellow bags.
dark orange bags contain 3 bright white bags, 4 muted yellow bags.
bright white bags contain 1 shiny gold bag.
muted yellow bags contain 2 shiny gold bags, 9 faded blue bags.
shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.
dark olive bags contain 3 faded blue bags, 4 dotted black bags.
vibrant plum bags contain 5 faded blue bags, 6 dotted black bags.
faded blue bags contain no other bags.
dotted black bags contain no other bags.
""".components(separatedBy: "\n")
    
    static let day07Luggage = """
light beige bags contain 5 dark green bags, 5 light gray bags, 3 faded indigo bags, 2 vibrant aqua bags.
faded purple bags contain 4 shiny green bags, 2 mirrored olive bags.
drab tomato bags contain 4 shiny coral bags.
mirrored crimson bags contain 4 bright maroon bags.
faded magenta bags contain 2 clear bronze bags, 5 dim brown bags, 3 striped cyan bags.
vibrant beige bags contain 1 pale silver bag.
plaid lavender bags contain 5 striped teal bags, 2 vibrant tan bags, 3 clear bronze bags, 3 light black bags.
posh maroon bags contain no other bags.
dotted yellow bags contain 4 plaid turquoise bags, 2 plaid lavender bags, 1 dotted violet bag.
posh fuchsia bags contain 5 mirrored gold bags, 2 faded bronze bags, 2 faded coral bags, 1 vibrant maroon bag.
dotted chartreuse bags contain 1 pale magenta bag.
muted beige bags contain 2 drab cyan bags.
dark olive bags contain 4 dull gold bags.
posh yellow bags contain no other bags.
dotted turquoise bags contain 5 striped indigo bags, 2 pale cyan bags, 5 light violet bags, 2 plaid silver bags.
wavy black bags contain 1 light cyan bag, 3 pale tomato bags.
striped plum bags contain 5 wavy maroon bags, 2 dim violet bags, 5 shiny tan bags.
shiny olive bags contain 5 vibrant aqua bags.
dim indigo bags contain 3 dull indigo bags, 2 light crimson bags, 2 dark magenta bags, 2 vibrant tomato bags.
drab tan bags contain 4 vibrant lime bags, 1 faded turquoise bag.
muted black bags contain 4 dull crimson bags, 2 posh tan bags, 4 shiny blue bags.
plaid red bags contain 5 clear blue bags, 3 plaid white bags, 4 dark magenta bags, 1 dark purple bag.
pale black bags contain 2 faded beige bags, 1 striped black bag.
striped red bags contain 3 vibrant green bags, 4 plaid blue bags, 2 drab brown bags.
dotted fuchsia bags contain 1 striped orange bag, 5 dotted maroon bags, 4 posh turquoise bags, 2 drab white bags.
plaid green bags contain 3 posh magenta bags, 4 dark black bags, 3 clear chartreuse bags.
dark violet bags contain 2 clear teal bags, 5 muted cyan bags, 2 shiny coral bags, 5 faded teal bags.
striped gray bags contain 3 bright salmon bags, 5 mirrored brown bags.
dull aqua bags contain 5 mirrored cyan bags, 1 mirrored olive bag.
light indigo bags contain 4 dotted salmon bags, 5 faded lavender bags, 1 dark teal bag, 2 dull purple bags.
dark aqua bags contain 1 clear tan bag, 5 muted turquoise bags, 3 drab orange bags.
drab orange bags contain 5 mirrored gray bags, 5 muted red bags, 3 muted gray bags.
wavy beige bags contain 1 light beige bag, 5 wavy coral bags.
dark gray bags contain 4 shiny violet bags, 3 dull tomato bags.
dull indigo bags contain 4 wavy coral bags, 3 dim plum bags, 2 shiny cyan bags, 2 vibrant bronze bags.
drab gray bags contain 4 drab silver bags, 1 vibrant bronze bag, 3 faded red bags.
dotted gold bags contain 2 faded silver bags.
muted chartreuse bags contain 3 clear turquoise bags, 5 muted turquoise bags, 4 dark crimson bags.
dark orange bags contain 4 shiny coral bags, 5 mirrored fuchsia bags, 5 mirrored teal bags.
light olive bags contain 4 shiny coral bags, 1 pale purple bag, 2 posh yellow bags, 5 shiny gray bags.
dotted silver bags contain 3 dotted purple bags.
muted bronze bags contain 4 striped silver bags, 1 posh plum bag, 1 muted blue bag, 5 shiny violet bags.
striped magenta bags contain 4 dark purple bags, 2 dull tomato bags, 4 mirrored lavender bags.
vibrant violet bags contain 1 plaid purple bag, 2 mirrored olive bags, 3 dotted bronze bags, 2 posh turquoise bags.
muted cyan bags contain 2 dotted crimson bags, 1 muted red bag, 1 plaid lavender bag.
striped black bags contain 1 plaid white bag, 5 pale cyan bags, 4 posh plum bags.
wavy blue bags contain 3 plaid plum bags, 1 shiny bronze bag, 1 shiny magenta bag, 2 vibrant cyan bags.
bright gold bags contain 2 mirrored indigo bags, 3 faded cyan bags, 3 posh beige bags, 1 faded indigo bag.
dim magenta bags contain 1 dark black bag.
dotted magenta bags contain 1 posh tomato bag, 4 striped white bags, 2 posh fuchsia bags, 1 mirrored tan bag.
light lime bags contain 1 mirrored fuchsia bag, 1 dull cyan bag, 1 mirrored chartreuse bag, 2 dotted beige bags.
faded crimson bags contain 1 muted blue bag.
dim tomato bags contain 2 plaid black bags, 3 striped black bags.
wavy tan bags contain 3 wavy gray bags, 2 striped indigo bags.
plaid beige bags contain 2 bright yellow bags, 1 dark gray bag, 5 dotted gray bags.
bright coral bags contain 2 drab white bags, 3 bright maroon bags, 2 dotted tan bags, 4 shiny salmon bags.
plaid tomato bags contain 3 clear white bags, 2 clear coral bags, 1 mirrored blue bag.
striped chartreuse bags contain 4 pale green bags, 2 muted crimson bags.
dim salmon bags contain 5 posh magenta bags, 5 dark red bags, 4 dull teal bags, 4 plaid gray bags.
plaid aqua bags contain 5 dark black bags, 1 light chartreuse bag, 1 dotted maroon bag.
faded silver bags contain 2 plaid silver bags, 1 shiny teal bag, 3 clear purple bags.
drab red bags contain 2 mirrored brown bags.
faded brown bags contain 5 shiny plum bags.
vibrant indigo bags contain 2 vibrant bronze bags, 2 wavy orange bags.
pale salmon bags contain 5 dull cyan bags, 2 wavy orange bags.
drab olive bags contain 1 striped beige bag.
vibrant white bags contain 4 shiny gold bags.
striped teal bags contain 4 faded green bags, 3 mirrored brown bags.
posh beige bags contain 3 posh yellow bags, 1 dull yellow bag, 2 posh maroon bags.
pale violet bags contain 3 shiny teal bags, 5 drab purple bags, 5 light turquoise bags, 4 pale tan bags.
light turquoise bags contain 4 dim lavender bags.
muted yellow bags contain 4 dim crimson bags, 2 wavy gray bags.
mirrored maroon bags contain 5 wavy silver bags, 5 dull aqua bags, 1 faded black bag, 1 faded cyan bag.
drab lavender bags contain 4 drab tan bags, 4 pale violet bags, 2 wavy indigo bags.
light salmon bags contain 2 dim magenta bags, 5 dull orange bags.
drab turquoise bags contain 5 shiny gold bags.
vibrant magenta bags contain 5 wavy maroon bags, 4 dotted gray bags.
clear violet bags contain 1 bright red bag, 2 faded plum bags.
clear beige bags contain 5 faded purple bags.
light silver bags contain 4 vibrant gray bags, 2 wavy gray bags, 4 drab salmon bags.
dark coral bags contain 5 bright plum bags.
pale white bags contain 3 posh tomato bags, 1 clear purple bag, 2 posh crimson bags.
vibrant yellow bags contain 5 posh gold bags, 2 plaid turquoise bags, 5 muted blue bags.
drab yellow bags contain 3 bright salmon bags, 3 clear blue bags, 1 faded indigo bag.
pale red bags contain 5 drab olive bags.
muted lime bags contain 1 vibrant fuchsia bag, 1 shiny coral bag, 2 mirrored violet bags, 5 wavy gray bags.
faded chartreuse bags contain 2 muted tomato bags, 5 dotted gray bags, 1 faded cyan bag, 1 dotted plum bag.
dark beige bags contain 3 dotted violet bags, 5 bright silver bags, 4 posh magenta bags, 4 faded fuchsia bags.
pale olive bags contain 3 plaid red bags, 5 posh maroon bags.
vibrant brown bags contain 1 plaid white bag, 3 dotted gold bags, 2 faded chartreuse bags.
bright orange bags contain 2 shiny magenta bags.
light coral bags contain 3 faded black bags, 4 faded coral bags, 4 plaid teal bags, 1 dull aqua bag.
dull silver bags contain 2 drab salmon bags, 2 shiny violet bags, 1 dull aqua bag, 5 faded black bags.
striped cyan bags contain 1 faded purple bag.
dim beige bags contain 5 wavy violet bags.
dotted coral bags contain 4 dim salmon bags, 5 clear beige bags, 2 shiny bronze bags, 2 light tan bags.
faded aqua bags contain 3 bright magenta bags, 3 posh olive bags.
mirrored tan bags contain 5 plaid silver bags, 5 striped gray bags.
striped beige bags contain 4 dull yellow bags.
wavy coral bags contain no other bags.
dark indigo bags contain 1 drab olive bag, 2 faded cyan bags, 5 dim yellow bags.
dark white bags contain 1 vibrant gray bag, 3 mirrored plum bags, 5 clear lavender bags, 1 shiny purple bag.
muted maroon bags contain 1 dim blue bag, 1 pale silver bag.
dotted gray bags contain 1 mirrored teal bag, 2 shiny gold bags, 5 drab gold bags.
dull tan bags contain 4 bright silver bags, 4 pale lavender bags, 3 wavy gray bags.
dark chartreuse bags contain 2 wavy tan bags, 1 striped orange bag, 1 posh salmon bag.
wavy gray bags contain no other bags.
drab brown bags contain no other bags.
dotted red bags contain 2 shiny yellow bags, 1 muted yellow bag, 2 pale lime bags.
bright black bags contain 4 striped gray bags, 2 dull yellow bags.
clear tan bags contain 3 shiny gold bags, 1 dark magenta bag, 5 bright aqua bags, 1 clear maroon bag.
dim silver bags contain 2 pale green bags, 3 clear orange bags, 2 pale white bags, 1 posh yellow bag.
mirrored chartreuse bags contain 1 wavy gray bag, 5 shiny magenta bags, 2 plaid purple bags, 2 dotted beige bags.
striped indigo bags contain 5 pale bronze bags, 1 muted blue bag.
dull plum bags contain 2 plaid red bags, 5 bright plum bags.
striped tan bags contain 3 vibrant aqua bags, 2 muted blue bags.
dotted teal bags contain 3 vibrant tan bags, 3 bright plum bags.
wavy white bags contain 2 muted black bags, 2 muted tomato bags, 4 bright gold bags.
muted lavender bags contain 3 clear beige bags.
striped salmon bags contain 1 faded coral bag, 1 clear green bag.
vibrant tomato bags contain 3 shiny violet bags.
dim olive bags contain 2 faded tan bags, 3 mirrored maroon bags, 3 dark crimson bags, 5 muted cyan bags.
dotted lime bags contain 5 muted violet bags, 3 light beige bags, 2 drab brown bags.
striped purple bags contain 2 dull gray bags.
wavy tomato bags contain 1 posh crimson bag, 5 vibrant tan bags, 3 bright maroon bags.
bright lavender bags contain 2 mirrored lavender bags, 4 shiny cyan bags.
faded turquoise bags contain 3 dull gray bags, 5 dull yellow bags, 5 dotted bronze bags, 4 vibrant aqua bags.
vibrant olive bags contain 4 dull violet bags, 5 dark coral bags.
bright cyan bags contain 3 bright turquoise bags.
pale aqua bags contain 5 shiny green bags, 3 clear silver bags, 4 muted tan bags.
vibrant cyan bags contain 2 vibrant maroon bags, 5 plaid magenta bags, 1 light black bag, 5 bright maroon bags.
striped lime bags contain 4 faded red bags, 3 mirrored brown bags, 4 dim plum bags, 4 wavy silver bags.
pale gold bags contain 5 posh plum bags, 1 dull tomato bag, 3 dark teal bags, 4 shiny black bags.
drab black bags contain 5 pale brown bags.
wavy maroon bags contain 1 dull yellow bag, 4 dim crimson bags, 1 dim lavender bag, 2 drab brown bags.
plaid gold bags contain 2 dotted gray bags, 2 pale orange bags, 5 mirrored brown bags.
shiny gray bags contain 3 faded lavender bags, 3 drab yellow bags, 3 wavy green bags.
bright beige bags contain 2 drab turquoise bags.
muted red bags contain 4 wavy gray bags, 5 mirrored lime bags.
bright violet bags contain 5 striped cyan bags, 2 pale blue bags, 1 clear plum bag.
plaid bronze bags contain 5 muted green bags, 5 posh gray bags, 1 dull silver bag, 4 faded black bags.
shiny gold bags contain 4 wavy green bags, 2 mirrored teal bags, 4 dark tomato bags, 2 faded beige bags.
plaid cyan bags contain 5 bright green bags.
posh green bags contain 5 mirrored beige bags.
dull purple bags contain 5 dull blue bags.
pale fuchsia bags contain 4 mirrored cyan bags, 1 faded red bag, 5 wavy green bags.
wavy olive bags contain 5 dotted olive bags, 3 shiny tan bags, 4 dotted magenta bags, 2 clear violet bags.
faded tan bags contain 3 plaid teal bags, 5 muted tomato bags.
pale blue bags contain 4 faded plum bags, 5 wavy green bags, 3 shiny violet bags, 2 faded black bags.
vibrant blue bags contain 1 shiny yellow bag, 2 clear tan bags, 5 posh crimson bags.
mirrored beige bags contain 5 shiny magenta bags, 3 pale blue bags.
dark maroon bags contain 4 bright green bags, 5 faded bronze bags, 1 faded indigo bag, 3 dotted teal bags.
plaid violet bags contain 4 posh yellow bags, 3 faded cyan bags, 1 mirrored lime bag, 2 striped black bags.
wavy indigo bags contain 5 dotted aqua bags, 1 drab salmon bag, 5 bright cyan bags, 4 dotted purple bags.
dull violet bags contain 1 vibrant tomato bag, 4 plaid blue bags, 5 shiny plum bags, 2 dotted aqua bags.
dotted salmon bags contain 5 plaid gray bags.
drab salmon bags contain 4 faded yellow bags.
light maroon bags contain 5 bright cyan bags.
drab cyan bags contain 2 dark beige bags, 1 dotted purple bag, 5 dark coral bags.
faded salmon bags contain 4 clear bronze bags, 4 muted green bags, 1 faded plum bag, 4 bright silver bags.
clear turquoise bags contain 5 shiny silver bags, 5 striped maroon bags, 5 posh chartreuse bags.
clear silver bags contain 5 vibrant fuchsia bags, 5 vibrant lime bags, 5 faded red bags.
muted magenta bags contain 3 dotted teal bags, 3 wavy orange bags.
striped aqua bags contain 4 bright green bags, 2 mirrored maroon bags, 5 muted gold bags, 2 pale brown bags.
drab magenta bags contain 5 vibrant tomato bags, 1 wavy violet bag.
clear yellow bags contain 4 drab salmon bags.
striped gold bags contain 3 dull salmon bags.
posh black bags contain 2 dim black bags, 4 plaid crimson bags.
drab fuchsia bags contain 1 drab turquoise bag.
mirrored fuchsia bags contain 5 shiny cyan bags, 4 dim crimson bags, 2 drab brown bags.
pale lavender bags contain 1 shiny lavender bag, 4 mirrored fuchsia bags, 1 wavy silver bag, 1 bright black bag.
light teal bags contain 2 vibrant fuchsia bags, 4 mirrored indigo bags.
light cyan bags contain 5 mirrored cyan bags, 1 faded fuchsia bag.
wavy lavender bags contain 1 faded gray bag.
clear purple bags contain 4 light red bags, 3 shiny teal bags.
mirrored coral bags contain 2 bright tomato bags, 4 drab fuchsia bags, 4 pale salmon bags, 1 wavy teal bag.
muted crimson bags contain 2 faded lime bags, 2 wavy plum bags, 5 bright gold bags.
plaid silver bags contain 4 wavy coral bags, 3 shiny violet bags, 5 faded beige bags.
posh orange bags contain 4 dim blue bags, 4 mirrored lime bags, 1 muted chartreuse bag.
dotted olive bags contain 4 dim plum bags, 5 bright aqua bags.
vibrant black bags contain 3 dark purple bags.
dim turquoise bags contain 3 shiny coral bags, 4 dotted indigo bags, 4 muted yellow bags, 4 dull bronze bags.
light gray bags contain 1 plaid silver bag, 4 faded purple bags, 3 faded green bags.
muted white bags contain 2 faded yellow bags, 4 dark white bags, 3 drab green bags, 4 dim yellow bags.
pale gray bags contain 4 pale brown bags, 3 dotted indigo bags, 1 mirrored indigo bag, 1 bright silver bag.
dull brown bags contain 1 plaid silver bag, 2 pale bronze bags, 3 dark magenta bags, 5 posh yellow bags.
bright indigo bags contain 4 dull red bags, 5 dark yellow bags.
dotted purple bags contain 2 muted yellow bags.
bright salmon bags contain 2 vibrant orange bags, 4 vibrant bronze bags, 4 shiny coral bags, 3 drab brown bags.
shiny chartreuse bags contain 1 dotted red bag, 4 wavy lavender bags, 2 muted aqua bags.
light brown bags contain 3 dark teal bags, 3 faded lime bags, 5 bright coral bags, 5 plaid red bags.
dim orange bags contain 4 clear lime bags, 2 plaid teal bags, 4 plaid lavender bags.
wavy teal bags contain 3 drab chartreuse bags.
posh purple bags contain 4 striped salmon bags, 2 mirrored black bags.
dim cyan bags contain 5 mirrored fuchsia bags, 5 dotted bronze bags, 1 light violet bag.
clear fuchsia bags contain 3 dim yellow bags, 1 pale yellow bag.
muted fuchsia bags contain 2 mirrored beige bags, 4 dull black bags, 5 mirrored red bags.
striped bronze bags contain 3 muted violet bags, 4 dull brown bags, 4 drab silver bags, 5 dotted maroon bags.
bright silver bags contain 2 drab gray bags, 3 wavy coral bags, 4 posh yellow bags.
light tomato bags contain 1 muted green bag, 3 bright indigo bags, 1 wavy blue bag.
dark red bags contain 1 dim brown bag.
vibrant fuchsia bags contain 1 shiny gold bag.
vibrant crimson bags contain 4 dull olive bags, 1 striped orange bag.
clear lime bags contain 5 dull crimson bags.
clear lavender bags contain 2 dotted gold bags, 3 light crimson bags, 3 mirrored red bags, 2 dark purple bags.
dark silver bags contain 4 muted silver bags.
posh white bags contain 3 light maroon bags, 5 dotted brown bags, 5 light yellow bags.
dark gold bags contain 4 muted plum bags, 4 posh silver bags.
dotted cyan bags contain 4 shiny magenta bags, 3 drab red bags.
plaid chartreuse bags contain 3 posh fuchsia bags, 4 light white bags.
dim lime bags contain 2 dull green bags, 5 posh magenta bags.
shiny indigo bags contain 5 light violet bags, 3 plaid orange bags, 2 drab turquoise bags, 5 striped beige bags.
bright tan bags contain 3 dotted fuchsia bags, 1 dim yellow bag, 2 mirrored violet bags, 2 plaid silver bags.
mirrored green bags contain 2 plaid turquoise bags, 5 bright turquoise bags, 5 light lime bags, 5 plaid white bags.
light purple bags contain 2 striped silver bags.
shiny violet bags contain 4 dull yellow bags, 1 faded red bag, 3 pale lime bags, 4 drab brown bags.
pale coral bags contain 5 drab indigo bags.
faded olive bags contain 4 posh tan bags, 3 striped orange bags, 3 wavy gold bags.
wavy cyan bags contain 3 mirrored teal bags.
wavy magenta bags contain 5 bright coral bags, 2 dark black bags, 1 muted beige bag.
wavy green bags contain 2 light violet bags.
shiny purple bags contain 5 wavy orange bags, 3 striped turquoise bags.
wavy orange bags contain 2 bright turquoise bags, 3 mirrored lime bags, 5 light violet bags.
shiny crimson bags contain 5 plaid olive bags, 2 mirrored turquoise bags, 3 posh lavender bags, 4 muted bronze bags.
dark tomato bags contain 3 posh maroon bags, 5 dotted purple bags, 1 shiny violet bag, 2 drab silver bags.
clear green bags contain 1 light black bag.
clear indigo bags contain 5 vibrant crimson bags.
muted coral bags contain 2 mirrored black bags, 4 dull silver bags.
clear teal bags contain 1 posh tan bag, 3 faded plum bags, 3 wavy maroon bags, 1 mirrored lavender bag.
shiny tomato bags contain 1 clear tomato bag, 5 bright gray bags, 1 striped cyan bag, 5 vibrant lavender bags.
shiny silver bags contain 2 dim violet bags, 2 striped teal bags, 2 mirrored beige bags, 3 drab turquoise bags.
posh indigo bags contain 5 drab fuchsia bags.
dull lime bags contain 5 vibrant cyan bags, 5 vibrant chartreuse bags.
mirrored lavender bags contain 2 drab gold bags, 5 vibrant aqua bags, 1 plaid teal bag.
faded coral bags contain 2 clear tan bags, 4 faded green bags, 2 faded fuchsia bags, 3 drab brown bags.
mirrored purple bags contain 1 plaid black bag, 5 dim teal bags, 4 muted bronze bags.
bright lime bags contain 1 light lavender bag.
pale turquoise bags contain 2 striped silver bags, 2 muted tan bags, 4 vibrant lime bags, 4 faded lime bags.
posh cyan bags contain 4 bright salmon bags.
wavy bronze bags contain 1 drab olive bag, 5 plaid orange bags, 1 wavy silver bag, 2 faded bronze bags.
light tan bags contain 3 faded violet bags.
mirrored brown bags contain 2 pale lime bags, 2 dull gray bags, 5 dotted bronze bags.
posh lime bags contain 4 dotted beige bags.
drab maroon bags contain 5 wavy gray bags, 4 posh magenta bags, 2 dull gray bags.
light yellow bags contain 4 striped lime bags, 3 faded purple bags, 1 plaid silver bag, 2 muted violet bags.
vibrant silver bags contain 3 posh purple bags.
mirrored plum bags contain 1 muted salmon bag, 4 light salmon bags, 2 faded brown bags.
mirrored gray bags contain 1 wavy silver bag, 1 dotted maroon bag, 4 posh maroon bags, 3 muted blue bags.
light blue bags contain 5 striped magenta bags, 2 dim plum bags, 4 muted tomato bags.
dim violet bags contain 4 dotted maroon bags, 1 pale lime bag, 2 mirrored brown bags, 2 bright salmon bags.
dotted violet bags contain 2 dim maroon bags, 3 faded beige bags.
shiny red bags contain 1 wavy gray bag, 3 clear bronze bags.
dotted black bags contain 4 pale fuchsia bags.
mirrored gold bags contain 3 pale cyan bags, 1 dark green bag, 5 plaid white bags, 1 drab black bag.
shiny plum bags contain 1 posh crimson bag, 5 bright yellow bags, 1 dull indigo bag.
dotted brown bags contain 5 dotted black bags, 2 clear yellow bags, 1 mirrored violet bag, 4 shiny gold bags.
faded orange bags contain 3 posh indigo bags, 3 bright magenta bags, 2 light teal bags, 2 bright turquoise bags.
mirrored tomato bags contain 1 dim bronze bag, 1 bright salmon bag, 4 dark purple bags, 4 light olive bags.
dotted orange bags contain 3 faded brown bags.
dull red bags contain 1 plaid black bag.
dim purple bags contain 3 vibrant purple bags, 2 dim cyan bags, 3 clear tan bags, 5 wavy beige bags.
dull coral bags contain 5 drab chartreuse bags.
dull black bags contain 1 vibrant bronze bag.
pale crimson bags contain 4 striped brown bags.
faded green bags contain 2 shiny gold bags, 5 dim maroon bags.
shiny bronze bags contain 4 dull turquoise bags.
dotted tomato bags contain 3 clear teal bags, 2 wavy crimson bags, 4 clear tan bags.
pale purple bags contain 2 shiny aqua bags.
bright teal bags contain 2 drab salmon bags, 4 dim yellow bags, 1 drab maroon bag.
pale tomato bags contain 3 striped black bags, 2 mirrored fuchsia bags.
striped silver bags contain 1 wavy turquoise bag.
dim gold bags contain 5 dim crimson bags, 4 dim violet bags, 2 striped bronze bags.
light orange bags contain 2 mirrored turquoise bags, 5 bright crimson bags, 4 pale tan bags, 1 drab teal bag.
wavy salmon bags contain 3 plaid orange bags, 2 faded cyan bags, 3 clear purple bags, 5 dotted orange bags.
vibrant chartreuse bags contain 2 plaid red bags, 3 dull aqua bags, 1 mirrored brown bag.
striped orange bags contain 4 dim crimson bags, 2 wavy coral bags, 1 dim plum bag.
light black bags contain 2 clear bronze bags, 2 posh cyan bags, 1 vibrant fuchsia bag.
dark salmon bags contain 2 vibrant tan bags, 1 shiny chartreuse bag.
drab gold bags contain 4 dim crimson bags, 2 light violet bags, 1 vibrant orange bag.
bright bronze bags contain 3 clear green bags.
dim coral bags contain 3 dark red bags, 5 dim lavender bags.
dull orange bags contain 5 drab black bags, 1 dotted violet bag, 3 dim blue bags.
clear brown bags contain 2 dark red bags, 1 dull turquoise bag, 1 mirrored red bag, 5 wavy beige bags.
muted tan bags contain 3 dotted teal bags, 3 mirrored cyan bags, 5 faded fuchsia bags, 2 drab white bags.
faded lavender bags contain 1 muted silver bag, 1 mirrored brown bag, 3 dark tomato bags, 3 pale lime bags.
dim bronze bags contain 1 bright yellow bag.
wavy lime bags contain 4 bright aqua bags, 5 wavy silver bags.
dark black bags contain 4 dark green bags.
faded lime bags contain 1 faded lavender bag, 5 plaid gray bags, 3 posh turquoise bags, 5 faded bronze bags.
drab lime bags contain 1 light cyan bag, 4 dotted red bags.
dull olive bags contain 3 dim plum bags, 3 pale lime bags, 4 posh yellow bags, 5 shiny violet bags.
clear black bags contain 1 faded fuchsia bag, 3 posh aqua bags.
dark crimson bags contain 2 dotted beige bags.
faded cyan bags contain 5 clear blue bags.
pale tan bags contain 4 posh aqua bags, 5 dim yellow bags, 2 light chartreuse bags.
light red bags contain 3 faded fuchsia bags, 5 dotted purple bags, 2 mirrored indigo bags, 3 shiny violet bags.
muted olive bags contain 5 posh tan bags, 4 faded tan bags.
plaid yellow bags contain 4 faded coral bags.
clear tomato bags contain 3 plaid salmon bags, 2 faded lavender bags.
vibrant maroon bags contain 3 muted lime bags, 4 vibrant fuchsia bags, 4 drab yellow bags.
posh red bags contain 5 posh cyan bags, 2 faded black bags, 1 bright crimson bag, 5 wavy plum bags.
mirrored silver bags contain 5 dull aqua bags.
wavy yellow bags contain 3 faded white bags, 1 dotted fuchsia bag.
light plum bags contain 1 vibrant bronze bag, 4 vibrant green bags, 1 plaid turquoise bag, 4 posh cyan bags.
shiny lime bags contain 1 posh tomato bag, 4 mirrored cyan bags, 2 plaid white bags, 3 shiny aqua bags.
light gold bags contain 1 drab silver bag, 3 clear brown bags, 2 wavy fuchsia bags.
dotted indigo bags contain 2 plaid teal bags, 1 dull yellow bag.
bright fuchsia bags contain 3 faded teal bags, 2 faded silver bags, 3 dim red bags, 1 muted lime bag.
mirrored black bags contain 5 muted violet bags.
dark magenta bags contain 5 dim crimson bags.
shiny yellow bags contain 3 clear tan bags.
muted orange bags contain 3 striped bronze bags.
dull bronze bags contain 1 dotted gray bag, 2 clear bronze bags, 5 light turquoise bags.
mirrored blue bags contain 3 shiny coral bags.
vibrant turquoise bags contain 2 pale blue bags, 4 shiny beige bags.
pale green bags contain 1 posh crimson bag, 2 drab gold bags, 3 drab brown bags.
striped yellow bags contain 5 mirrored red bags, 4 plaid salmon bags, 4 muted salmon bags, 5 faded tan bags.
faded tomato bags contain 5 clear blue bags.
faded teal bags contain 2 posh teal bags, 3 light violet bags, 5 dotted olive bags, 3 shiny teal bags.
clear blue bags contain 3 dull yellow bags, 3 light violet bags, 2 wavy coral bags, 4 shiny cyan bags.
dotted blue bags contain 5 muted coral bags, 4 muted salmon bags.
shiny lavender bags contain 2 dotted crimson bags, 4 light lime bags, 1 posh cyan bag.
mirrored magenta bags contain 3 mirrored fuchsia bags, 3 clear teal bags, 4 muted fuchsia bags.
faded yellow bags contain 1 dim crimson bag, 3 dull cyan bags.
muted teal bags contain 3 dull red bags.
light lavender bags contain 4 striped orange bags, 2 mirrored beige bags.
posh chartreuse bags contain 2 dark purple bags.
pale beige bags contain 4 pale silver bags, 2 striped crimson bags.
pale lime bags contain no other bags.
faded blue bags contain 1 mirrored red bag, 3 drab cyan bags, 3 dull yellow bags, 5 plaid plum bags.
dull maroon bags contain 5 light blue bags, 3 dull crimson bags, 3 clear yellow bags.
dim plum bags contain no other bags.
drab beige bags contain 5 light black bags, 1 striped teal bag, 4 mirrored violet bags.
pale orange bags contain 4 clear chartreuse bags.
dotted beige bags contain 4 dark yellow bags, 3 light black bags, 5 bright aqua bags.
plaid salmon bags contain 3 posh silver bags, 2 wavy violet bags, 3 striped tan bags.
clear gray bags contain 4 wavy purple bags.
drab coral bags contain 2 faded silver bags, 3 light fuchsia bags, 2 dull indigo bags, 3 drab cyan bags.
dark yellow bags contain 2 mirrored fuchsia bags.
posh turquoise bags contain 2 dim lavender bags, 1 muted yellow bag, 4 bright plum bags.
bright tomato bags contain 5 striped orange bags, 3 bright turquoise bags, 3 dull yellow bags.
drab silver bags contain 2 light turquoise bags, 3 mirrored indigo bags, 4 vibrant orange bags.
clear cyan bags contain 4 muted cyan bags, 2 faded silver bags, 3 faded yellow bags, 4 faded crimson bags.
mirrored orange bags contain 3 dark green bags, 5 drab salmon bags, 4 posh gray bags.
muted gray bags contain 2 mirrored lime bags.
pale brown bags contain 4 dull gray bags.
wavy silver bags contain 5 faded red bags, 5 muted silver bags.
dull blue bags contain 1 dotted olive bag, 4 muted violet bags.
dull magenta bags contain 4 muted silver bags, 4 posh salmon bags, 4 plaid tomato bags.
dark cyan bags contain 5 shiny purple bags, 3 vibrant coral bags, 1 posh green bag, 2 dull cyan bags.
shiny turquoise bags contain 3 pale white bags, 5 dotted black bags.
dark green bags contain 4 dim maroon bags.
posh magenta bags contain 2 pale brown bags.
dull salmon bags contain 5 posh magenta bags, 5 dotted indigo bags, 4 drab orange bags, 5 mirrored gray bags.
dull gray bags contain 5 wavy coral bags, 5 vibrant tan bags, 5 mirrored olive bags.
dull turquoise bags contain 3 clear black bags, 5 striped indigo bags, 3 shiny white bags, 2 faded fuchsia bags.
striped violet bags contain 2 faded white bags.
muted brown bags contain 2 dim cyan bags, 4 drab black bags, 5 clear bronze bags, 1 shiny green bag.
drab plum bags contain 2 dark teal bags, 5 plaid lavender bags, 4 mirrored blue bags.
striped green bags contain 1 mirrored olive bag, 3 clear green bags, 3 dim yellow bags, 3 muted red bags.
bright white bags contain 5 shiny coral bags, 5 faded fuchsia bags.
vibrant tan bags contain no other bags.
faded white bags contain 4 pale crimson bags, 1 plaid green bag, 5 faded bronze bags.
clear orange bags contain 3 bright cyan bags, 4 dotted green bags, 3 faded purple bags, 3 faded black bags.
drab chartreuse bags contain 5 wavy gray bags, 4 muted turquoise bags.
mirrored aqua bags contain 2 bright crimson bags, 4 mirrored magenta bags, 3 clear teal bags.
wavy crimson bags contain 5 posh yellow bags, 3 clear blue bags, 1 striped lime bag, 2 faded cyan bags.
shiny black bags contain 4 dim cyan bags, 3 striped beige bags, 3 posh beige bags, 4 bright gold bags.
wavy brown bags contain 2 wavy coral bags, 3 shiny yellow bags.
pale plum bags contain 3 drab olive bags, 1 light turquoise bag.
drab green bags contain 1 mirrored orange bag, 5 dark turquoise bags, 5 posh chartreuse bags, 2 pale magenta bags.
drab teal bags contain 5 faded silver bags, 4 striped brown bags, 4 drab purple bags.
dull gold bags contain 1 dark orange bag, 4 faded lime bags.
posh gray bags contain 1 posh cyan bag, 2 plaid crimson bags, 1 plaid olive bag, 2 bright yellow bags.
dim red bags contain 3 posh chartreuse bags, 4 drab white bags, 2 bright green bags, 4 drab yellow bags.
dull chartreuse bags contain 1 drab fuchsia bag, 2 dull crimson bags, 4 light coral bags.
plaid magenta bags contain 1 mirrored silver bag.
drab crimson bags contain 3 faded tan bags.
faded bronze bags contain 4 dim plum bags, 4 faded fuchsia bags, 4 bright aqua bags, 2 vibrant orange bags.
plaid gray bags contain 3 light fuchsia bags, 1 dotted turquoise bag.
vibrant bronze bags contain 1 wavy green bag, 2 muted yellow bags.
clear maroon bags contain 3 dim plum bags, 4 light red bags, 5 wavy silver bags.
drab blue bags contain 1 plaid gray bag, 5 mirrored gray bags, 5 shiny magenta bags.
posh bronze bags contain 3 muted crimson bags, 5 wavy gray bags.
dim black bags contain 1 bright green bag, 3 dim maroon bags, 4 mirrored cyan bags, 4 faded black bags.
vibrant green bags contain 4 vibrant blue bags, 4 wavy gold bags, 5 vibrant fuchsia bags, 3 muted yellow bags.
dim teal bags contain 5 faded fuchsia bags, 3 striped lavender bags, 2 pale lime bags, 4 clear maroon bags.
posh silver bags contain 2 shiny magenta bags.
plaid blue bags contain 2 pale brown bags, 4 drab brown bags, 2 drab plum bags, 1 wavy maroon bag.
dim fuchsia bags contain 3 dark purple bags, 4 shiny red bags, 1 clear chartreuse bag, 2 pale gold bags.
muted turquoise bags contain 4 striped maroon bags, 1 dim lavender bag, 2 clear beige bags, 3 wavy maroon bags.
shiny beige bags contain 4 shiny red bags, 1 vibrant bronze bag, 5 plaid chartreuse bags, 3 mirrored teal bags.
muted blue bags contain 3 pale lime bags, 4 dim crimson bags.
faded black bags contain 4 striped beige bags, 4 muted blue bags.
muted plum bags contain 5 drab white bags, 2 dull cyan bags, 1 light gray bag.
dark tan bags contain 2 light aqua bags.
clear white bags contain 5 dotted plum bags.
dotted aqua bags contain 4 posh turquoise bags, 5 bright aqua bags.
posh gold bags contain 5 pale crimson bags, 4 light fuchsia bags, 4 plaid turquoise bags.
bright turquoise bags contain 3 mirrored brown bags, 2 dotted black bags, 3 dull indigo bags, 4 plaid white bags.
light white bags contain 5 mirrored brown bags, 2 dim magenta bags.
posh crimson bags contain 1 bright green bag, 3 posh yellow bags, 4 posh turquoise bags, 4 vibrant aqua bags.
muted silver bags contain 1 dotted purple bag, 2 posh yellow bags, 5 mirrored indigo bags, 4 shiny violet bags.
pale indigo bags contain 2 mirrored aqua bags, 1 vibrant tomato bag, 5 striped violet bags, 2 shiny white bags.
vibrant aqua bags contain 5 pale bronze bags, 5 posh yellow bags, 2 dull cyan bags, 2 bright silver bags.
posh brown bags contain 2 bright green bags, 4 mirrored fuchsia bags, 4 dotted salmon bags.
shiny orange bags contain 2 faded lavender bags, 3 dull yellow bags.
shiny fuchsia bags contain 2 striped teal bags.
dark lavender bags contain 4 mirrored teal bags, 5 plaid gray bags.
vibrant teal bags contain 3 drab orange bags, 1 plaid red bag, 4 clear cyan bags.
dotted lavender bags contain 5 pale gray bags.
plaid lime bags contain 5 bright maroon bags, 2 dim tomato bags, 2 mirrored teal bags.
dim white bags contain 3 plaid turquoise bags, 2 faded red bags, 5 striped orange bags.
shiny coral bags contain 2 posh turquoise bags.
posh coral bags contain 4 bright salmon bags, 4 dim coral bags, 1 pale fuchsia bag.
drab aqua bags contain 1 vibrant maroon bag, 4 muted green bags, 5 muted red bags.
dim crimson bags contain no other bags.
vibrant purple bags contain 5 dark teal bags, 3 muted crimson bags.
dull fuchsia bags contain 5 dull aqua bags, 3 clear silver bags.
dotted green bags contain 3 dull tomato bags, 3 drab black bags, 5 dim red bags.
muted green bags contain 4 light cyan bags, 2 light red bags, 3 posh turquoise bags, 3 dark orange bags.
wavy aqua bags contain 4 faded white bags, 5 dim brown bags, 2 plaid salmon bags.
light magenta bags contain 4 dotted black bags, 3 posh blue bags, 2 bright coral bags.
light aqua bags contain 1 light yellow bag, 1 plaid gray bag, 1 vibrant cyan bag, 4 dotted aqua bags.
dark purple bags contain 2 plaid silver bags, 2 muted gray bags, 1 clear maroon bag.
wavy violet bags contain 4 plaid white bags, 5 dull red bags.
faded plum bags contain 5 posh beige bags, 2 light turquoise bags, 5 vibrant orange bags.
dull beige bags contain 2 dark blue bags, 2 shiny green bags.
clear crimson bags contain 1 vibrant salmon bag.
drab violet bags contain 4 faded purple bags, 4 plaid turquoise bags.
dull white bags contain 4 striped brown bags, 5 wavy black bags.
dark teal bags contain 3 faded fuchsia bags, 2 dotted maroon bags, 4 plaid orange bags.
dark blue bags contain 3 shiny bronze bags, 4 bright yellow bags, 1 vibrant bronze bag, 5 dull blue bags.
vibrant salmon bags contain 4 drab aqua bags.
plaid coral bags contain 2 drab salmon bags.
vibrant gray bags contain 3 dark purple bags, 3 vibrant green bags, 2 clear teal bags.
clear gold bags contain 3 mirrored green bags, 4 plaid gray bags, 1 bright gray bag.
posh salmon bags contain 2 shiny bronze bags, 3 faded coral bags, 3 mirrored chartreuse bags, 3 vibrant green bags.
wavy red bags contain 1 posh brown bag.
faded red bags contain 5 dim lavender bags, 4 bright plum bags, 4 striped orange bags.
striped lavender bags contain 4 dull black bags, 4 dark crimson bags, 1 posh turquoise bag, 4 light beige bags.
dull tomato bags contain 2 wavy silver bags, 3 muted yellow bags, 3 wavy maroon bags, 2 dotted black bags.
shiny salmon bags contain 1 wavy turquoise bag, 4 dull green bags, 5 dull aqua bags.
pale yellow bags contain 1 dull gray bag.
clear olive bags contain 1 posh crimson bag, 4 pale crimson bags.
clear coral bags contain 4 dark orange bags, 4 dim crimson bags.
dark bronze bags contain 4 mirrored silver bags, 3 light plum bags.
bright aqua bags contain 1 vibrant tan bag, 3 clear blue bags, 2 shiny violet bags.
striped blue bags contain 5 muted tomato bags, 5 muted magenta bags, 5 drab white bags, 3 pale crimson bags.
dim lavender bags contain 2 posh yellow bags.
dim green bags contain 2 mirrored chartreuse bags, 5 plaid orange bags.
plaid maroon bags contain 1 dark magenta bag, 1 posh beige bag, 5 drab plum bags, 5 bright aqua bags.
pale maroon bags contain 1 clear bronze bag, 1 plaid blue bag.
clear salmon bags contain 1 dark coral bag.
shiny magenta bags contain 3 vibrant aqua bags, 3 dim maroon bags.
mirrored yellow bags contain 4 wavy black bags, 4 pale gray bags, 4 mirrored magenta bags.
shiny green bags contain 3 striped lime bags, 2 posh yellow bags.
dim aqua bags contain 4 dotted aqua bags.
mirrored olive bags contain 1 muted blue bag, 5 vibrant tan bags, 5 posh yellow bags.
mirrored violet bags contain 1 plaid orange bag, 4 drab salmon bags.
pale chartreuse bags contain 2 muted tomato bags, 3 faded indigo bags.
striped maroon bags contain 4 shiny lime bags.
muted indigo bags contain 4 dim magenta bags, 3 muted orange bags, 2 dim beige bags, 4 vibrant purple bags.
dim maroon bags contain 2 pale bronze bags, 4 bright aqua bags.
pale teal bags contain 5 dark gray bags, 2 dark tomato bags, 1 dull red bag.
posh aqua bags contain 3 mirrored lavender bags.
vibrant lime bags contain 2 wavy silver bags.
dark turquoise bags contain 2 wavy black bags.
vibrant gold bags contain 2 striped brown bags, 2 faded indigo bags.
faded maroon bags contain 4 mirrored tan bags, 3 posh beige bags, 5 posh orange bags.
faded fuchsia bags contain 1 bright salmon bag.
light fuchsia bags contain 2 dull black bags.
striped coral bags contain 1 dull green bag, 2 muted beige bags, 2 bright coral bags, 5 wavy orange bags.
bright brown bags contain 4 plaid gold bags.
plaid olive bags contain 2 dim coral bags.
dull yellow bags contain 3 drab brown bags.
posh tomato bags contain 3 dotted purple bags.
clear magenta bags contain 1 mirrored brown bag, 5 dotted plum bags, 1 light coral bag, 2 drab maroon bags.
faded indigo bags contain 1 drab gold bag.
plaid white bags contain 5 mirrored fuchsia bags.
bright green bags contain 1 posh beige bag, 5 dark green bags, 4 dull aqua bags.
bright gray bags contain 3 light lavender bags.
posh violet bags contain 2 vibrant tan bags, 5 pale magenta bags, 3 posh white bags, 5 mirrored gray bags.
dull teal bags contain 1 dull brown bag, 2 drab gray bags, 2 shiny cyan bags, 1 mirrored lavender bag.
shiny cyan bags contain 1 bright plum bag, 1 shiny violet bag.
posh plum bags contain 4 drab brown bags, 4 mirrored olive bags, 4 dim maroon bags, 4 striped orange bags.
plaid fuchsia bags contain 5 drab blue bags.
dull green bags contain 1 mirrored red bag, 1 bright turquoise bag, 2 dark beige bags.
bright chartreuse bags contain 5 dim white bags, 2 faded red bags.
faded beige bags contain 5 posh turquoise bags, 5 vibrant tan bags, 2 posh yellow bags, 4 mirrored indigo bags.
dim chartreuse bags contain 1 posh magenta bag, 2 dotted crimson bags, 5 clear black bags, 4 striped olive bags.
drab indigo bags contain 5 striped orange bags, 1 pale chartreuse bag, 2 mirrored indigo bags, 4 clear purple bags.
light bronze bags contain 4 muted red bags.
shiny teal bags contain 3 faded beige bags, 2 striped beige bags, 2 mirrored olive bags, 5 plaid white bags.
shiny white bags contain 2 wavy silver bags, 3 plaid turquoise bags, 1 dim plum bag, 4 posh plum bags.
pale silver bags contain 2 pale cyan bags, 5 muted teal bags, 5 plaid turquoise bags, 2 clear coral bags.
dim yellow bags contain 2 vibrant tomato bags, 3 bright salmon bags, 4 dull gray bags.
mirrored indigo bags contain 5 posh yellow bags, 5 faded red bags.
clear bronze bags contain 1 posh turquoise bag, 3 faded black bags, 3 shiny coral bags.
mirrored turquoise bags contain 2 mirrored teal bags, 4 striped black bags, 4 dull teal bags, 4 clear black bags.
mirrored red bags contain 3 clear purple bags, 5 light red bags, 5 mirrored beige bags.
bright olive bags contain 3 vibrant plum bags.
drab white bags contain 4 dim lavender bags.
clear red bags contain 5 dark gray bags, 1 shiny green bag, 2 striped brown bags, 3 plaid olive bags.
vibrant red bags contain 2 dull bronze bags, 2 dotted magenta bags, 5 dark red bags, 1 drab magenta bag.
striped crimson bags contain 4 dull silver bags, 4 dark gray bags, 4 light red bags, 2 posh chartreuse bags.
dotted tan bags contain 4 shiny lime bags.
plaid orange bags contain 1 wavy maroon bag, 2 drab brown bags, 5 dull black bags.
clear plum bags contain 2 muted yellow bags, 5 faded turquoise bags, 1 faded beige bag, 1 dull aqua bag.
mirrored bronze bags contain 5 posh magenta bags.
mirrored cyan bags contain 4 striped orange bags, 3 wavy gray bags, 1 mirrored olive bag, 2 dim lavender bags.
striped white bags contain 4 striped aqua bags.
bright red bags contain 4 dotted gray bags, 4 dark green bags, 4 shiny aqua bags, 4 shiny indigo bags.
dim blue bags contain 1 dull black bag, 4 dotted turquoise bags.
dotted bronze bags contain 5 mirrored indigo bags, 4 wavy coral bags.
muted gold bags contain 4 wavy plum bags.
clear aqua bags contain 2 clear teal bags, 4 mirrored crimson bags, 1 dull silver bag, 3 bright crimson bags.
dim brown bags contain 3 clear green bags, 5 bright cyan bags.
bright plum bags contain 3 striped orange bags, 2 pale lime bags.
bright blue bags contain 1 shiny violet bag, 4 wavy gold bags.
bright maroon bags contain 1 striped indigo bag, 3 striped beige bags, 1 shiny teal bag.
pale cyan bags contain 1 dull gray bag, 2 mirrored lime bags.
wavy chartreuse bags contain 5 dark red bags, 5 plaid fuchsia bags, 2 dim salmon bags.
dull cyan bags contain 2 dim lavender bags, 3 dull yellow bags, 5 dim crimson bags, 5 dull gray bags.
shiny brown bags contain 3 wavy aqua bags, 2 faded lime bags.
dim tan bags contain 5 pale orange bags, 2 mirrored blue bags.
drab purple bags contain 1 vibrant bronze bag, 4 pale magenta bags.
wavy fuchsia bags contain 3 bright aqua bags, 2 dim lavender bags, 4 pale lime bags.
mirrored teal bags contain 4 dull yellow bags, 2 faded black bags, 3 pale blue bags, 5 wavy coral bags.
plaid brown bags contain 4 posh chartreuse bags, 2 dark beige bags.
plaid tan bags contain 3 pale turquoise bags, 3 dark teal bags.
posh tan bags contain 2 faded yellow bags, 3 dim tomato bags, 1 dotted olive bag, 1 light violet bag.
plaid plum bags contain 5 muted yellow bags, 2 dim crimson bags.
plaid purple bags contain 2 posh magenta bags.
wavy gold bags contain 2 shiny teal bags, 2 mirrored lime bags.
striped tomato bags contain 5 shiny maroon bags, 3 mirrored lime bags.
vibrant lavender bags contain 1 bright turquoise bag.
muted violet bags contain 2 dull tomato bags, 4 mirrored lavender bags.
light crimson bags contain 4 drab violet bags.
bright crimson bags contain 3 drab silver bags.
muted purple bags contain 3 dim aqua bags.
posh lavender bags contain 4 mirrored magenta bags.
posh olive bags contain 2 bright salmon bags, 2 faded violet bags, 2 wavy indigo bags, 2 vibrant yellow bags.
muted aqua bags contain 4 bright red bags, 3 vibrant crimson bags, 3 dotted red bags.
shiny aqua bags contain 2 mirrored lavender bags.
bright yellow bags contain 2 muted gray bags, 4 plaid turquoise bags, 1 dull yellow bag, 5 wavy green bags.
light chartreuse bags contain 5 vibrant bronze bags, 5 posh magenta bags, 2 dotted salmon bags, 3 plaid red bags.
striped fuchsia bags contain 4 dull plum bags, 5 mirrored silver bags.
dull lavender bags contain 4 mirrored lavender bags, 2 plaid crimson bags, 4 dotted turquoise bags, 2 drab purple bags.
mirrored lime bags contain 2 pale lime bags, 4 light turquoise bags, 5 bright plum bags.
wavy turquoise bags contain 1 pale bronze bag.
pale magenta bags contain 2 dull teal bags, 2 muted red bags.
dotted plum bags contain 5 light red bags.
drab bronze bags contain 5 muted blue bags, 1 faded teal bag, 3 faded yellow bags.
plaid teal bags contain 4 wavy maroon bags, 5 pale brown bags.
plaid indigo bags contain 5 light olive bags, 4 clear salmon bags, 1 wavy lime bag, 4 drab black bags.
shiny blue bags contain 3 bright turquoise bags, 3 mirrored red bags, 1 pale brown bag, 2 dark violet bags.
striped turquoise bags contain 4 pale tomato bags, 1 light turquoise bag.
mirrored white bags contain 4 dim chartreuse bags.
dark fuchsia bags contain 2 dotted lavender bags, 5 pale gray bags, 5 light crimson bags, 5 shiny lavender bags.
posh blue bags contain 5 dark orange bags.
shiny tan bags contain 5 bright magenta bags, 2 clear beige bags, 1 pale lime bag.
dark lime bags contain 1 shiny magenta bag, 2 muted cyan bags.
bright magenta bags contain 3 clear blue bags, 3 wavy indigo bags.
dotted crimson bags contain 2 wavy turquoise bags.
dotted maroon bags contain 5 dark green bags, 1 striped lime bag, 1 dotted black bag, 5 striped beige bags.
dark brown bags contain 3 pale white bags.
vibrant coral bags contain 5 plaid olive bags, 5 dim maroon bags.
posh teal bags contain 5 shiny white bags.
plaid crimson bags contain 1 dark coral bag, 2 dotted beige bags, 1 dotted gray bag.
mirrored salmon bags contain 1 plaid lavender bag, 2 striped orange bags, 4 clear purple bags.
vibrant orange bags contain no other bags.
vibrant plum bags contain 1 pale red bag, 2 drab plum bags.
dim gray bags contain 5 dull salmon bags.
shiny maroon bags contain 3 dim plum bags, 4 pale black bags, 3 dark red bags, 4 light maroon bags.
muted tomato bags contain 1 pale bronze bag, 3 dim crimson bags, 3 striped beige bags, 3 muted yellow bags.
dotted white bags contain 5 striped red bags.
wavy plum bags contain 2 dull indigo bags, 3 plaid turquoise bags, 1 dull silver bag, 5 clear tan bags.
light violet bags contain 3 dim crimson bags, 2 drab brown bags.
muted salmon bags contain 2 clear yellow bags, 3 faded plum bags.
plaid turquoise bags contain 4 faded yellow bags.
pale bronze bags contain 2 dim plum bags, 1 posh maroon bag, 4 dim lavender bags.
clear chartreuse bags contain 1 clear salmon bag, 4 faded purple bags, 5 mirrored tan bags.
bright purple bags contain 5 clear salmon bags, 5 shiny red bags, 5 dotted aqua bags, 1 wavy plum bag.
faded gold bags contain 2 faded indigo bags.
striped brown bags contain 1 posh magenta bag, 2 dull olive bags, 3 dotted purple bags, 1 dark beige bag.
faded gray bags contain 3 shiny green bags.
wavy purple bags contain 2 dark beige bags, 2 dotted bronze bags.
striped olive bags contain 1 clear tan bag, 2 dim salmon bags, 2 dotted gold bags.
dull crimson bags contain 2 drab red bags.
dark plum bags contain 1 dark blue bag, 2 light yellow bags, 2 striped silver bags.
faded violet bags contain 4 dotted gray bags, 5 muted blue bags.
plaid black bags contain 2 posh aqua bags, 5 plaid orange bags.
light green bags contain 4 muted silver bags, 2 muted tomato bags, 3 mirrored teal bags.
""".components(separatedBy: "\n")
    
    static let day06CustomDeclarationsFormDebug = """
abc

a
b
c

ab
ac

a
a
a
a

b
""".components(separatedBy: "\n\n")
    
    static let day06CustomDeclarationsForm = """
lfnghcsvpyrdjtxozimb
mdtbnorpfalcijxvhsy
elmwjkfbihydxcpqtovsrun
tlhmsdjingyxcbfrvpo

a
a
xqh

mxdeqcinvfg
vbncrgzxqefka

oejsdfwm
fojsmewd
ewxfsouimdj
eodafjwsm
edjwsmfo

d
d
j

mgxywknlt
khgwmr
wkpezgboavm
mjgkwni
mwkcg

mqzjtgskhadecwy
nhkjeqgdtfsa

rc
cru
hcr

vuaeqdcnty
nltovzycbeidu

phcqe
chep
hpce

smjuow
jwktu
ujw

ljphnwtmugi
giltnpuwm
mgtulpkiwn
uxltinpgwm
jmglintwpu

slbguajo
lqwardbuo
zlqmdobau
ucalqob
lobua

uwtcp
umtlwc

lrcpgjwqfaybxtisoznuhe
wjpnrsxiultyabgzhcqfe

clmfrxgbqikzpsoduvjy
uoxibjmkygrsdqczplfnv

oncmzsf
onzmds
snzmo

zlmegxcnavjb
bmloajdecvwzxgn
pjgzecxvsmbhnla
fngpcvhaexzlbjm

ulhkjzxadgvc
uejbgctld

xuindfqzvpg
ugdofws

qrpvexjlywfmgbintuzk
wrtnibqvuflkeypxg
kretgquypbinwxfvl

tmrdpzxvily
itorywvlxjcd
rltdvygbxic
xyliotvrdc
xrvtdilygc

uihswfvanoyzl
owgnzcshuvaqlfiy
whrtnuoyimzlsvqfac
jiekwxbznhfvuplo

jgbtesurivfxclapnqdmkzhyw
dcnjhsqgkzyitwfplvearubxm

umovhtgaekjixwfcdnq
fcoamwkvjeqxhdbgitn
datcxweqzhirmjfnkogv
vwahorqcxfilmkgtndej
myhkadptsgcxfojinqewv

oys
syo
oys
yso
oys

fatvyeruxnilcmpd
ydacelgfmrxtvin
tgdirmynaxclqwe
jstnbxmdlcezhraiy

fkbnpgyhs
ktnhbya
ybhan
wqconhbey

zicrfu
dblyczk
eshjmczvn
cdzgofpx
rawzc

hcuypzdfalvt
dfplcsyvazrqh
lfcdvzrhyabtqup
lycegwaofdkmzpnihv
ayvzdhscplf

rvowpcnbjlfhe
hsgbdivpcjlxo

wbiplofhkmgvr
wvmrohkbfeglpi
bvklotpghrfiwm
wltkighfbrmvpo
bgvkflitwhmpor

dwmorjebnchvuaz
hyikgfenl
nykhxegq

pnsactlj
knytclorg

w
wj
w

gushnlqjctfvwiyz
shtqjuvzcgniy
cgdusyjpntzivqh
ivuzjgcnqhwtsy
vcusgtqinyzhj

fjnacgiw
ngijcfw
gcwnifjo
wvhsncikgtfj

tecvxgzsjridpa
azvtdgprjesixc
mxspejvzrdcaigkt
vristcjaexpzdg
jvipeagxdtczsr

v
f
w
w

wrsxdmlay
yxalwfs
xlatysmwe
bgqyohvpzswnlxujcak
silxayw

zxelswo
slwzpxo

aizvyoqg
ealnxdyczgpsrj
hkmwbutf

cohalxbk
suiydp

qebdumfwsjagk
cxaokgmr

r
x
a

xhey
exhy
hxey

zchi
izhc

dh
dsh
hd

lfjcmoauvzxqitdspbw
febzhrmowptvsqiyaudjkgc
ijausfvcdznmpqowtb
vcsfzqbjoipuwadmt

up
rkpy
nzjdbg
twkl

tuepkzc
opzst

rgszfijlxneuvqcmktpa
azcjfnkuvlpegmrsq
fgjzkvusqnmlcarep
kvrcpumgsfqalezjn

tvqiwkmdf
qfdtvowsk
tvkifsrqdw
vgdxeubfkjhqzlpwt
dvkytawfqm

yhiogvbkxlzjwsafd
fylwkxhotbasivdjzg
cdjfgnkshmwyxvaliozb
xusvawyhzklgjoifbd
vkisfrjowaxhglydubtz

kqws
xqysrkw
lcjsqkmw
qwsk
koqsw

wc
cjw
wc
cw
wc

awrshieplc
ixelpycsrvw
qebsmzklpwiuocg

cxf
xf
najxvf
xfh

umgylpoz
fxwcyet

yt
t

gbeskji
ejbsqki

grmdbezfou
ufzbredgom

wmtvcfhk
cyleh
prseclyhz

cyrwzamnoxhue
hxacmyenru
ndyrashxgmecu
eilychmuraxnfbtv

fbgwal
ablhjg
agxlb

cvw
vcoz
nvmrc

prvbngaqh
qbhgpvarn
palgyevfrqnhb
vgqnbarhp
rbhavqpgn

fztoevmhwgnb
nbhfweomvg
zfmghoevwbn
vhmsfgwcbeonq
negfvwobhm

qbx
dev
hyzl
wr

ltnibrq
qrbnil
rlbinq
qinrbl
irnqbl

thfng
gfhkbd
hmucga
rhdg

fqwalrhvpyxieu
plehrstgivfx
xbcvtrpefldih
efpxrlhvdi

kculvzfnesawmty
vkztnuycwfamlse
ecvnzlumykwatsf
zatkulemcyfsvnw
tafczlusnywekmv

a
a
a
a

cktun
lnrdyfk

rexndcwvkibpflzjqymu
exivdprnjzyblfmkwc
czbknjlrfdivxypmwe
fjvgyixpedkmrwzncbl
hricxbjypenlzfdwvkom

vqebrauop
ebopavuc
upabhveo
vobeaup

iaxlnehuycwkrmzqsbp
bynlcreqpswzmxikhau

nb
ikqoh
ho
qjh

oaixhtmeqc
envpiuhkqdmjx
xhforyeqwim
hcaezwimxq

ctubrpd
dstub

vchgnkea
hkegyxivc
fpychegtvk

apxkiotyjzsqufvbld
daviftqlxopsbyjku
zblyqpajvkdsixuotf
lafqdsyjuckbtoixvp

pmlwfdcbik
xzjebqshotrnygu

cepzjtkamvnfuloqrig
vkoiepjfnztuglqmarc
pnjrlqgmkzotiuevfca
tluscvmjrzkgaeipnfqo

k
k
r

ae
ea
ae
ea
ae

ypvtzi
mtu
tjs
fjust
ufmtj

zilgoaqmr
aqopzmuvxlwrjg
ozrmnadbqgl

rbfm
r
rep
vfmr

ajrsgqiodfmwuezkltv
tqsfiwvgzmeurdkajlo
sqgywzoakturjlimfdev

wplbfyivhasrujdgzqcmxnk
tklsezcwrihvj

vshfrae
bhnocstidq
xlhsfmza
swlxah
mpksvhy

uelktdbswyjpaxqmnr
ruvwjsnyadhmzepb

jepzvwaqublirdftgcmx
lwncbxgqkvdjpztiuamf
vxmfwtlaibpjgzucdq
pfidxgumvtacwblqzj
dsgivqfnptwzmbaxucjl

gotqzew
jdfn
dub
v

nzj
jg
g
vp
n

clbgtr
tgrlbc
rtbclg
rtbylgac

uyit
iuqtpc
ituj
tui

jlsipo
hpijl
solxjip
izplej
xlpitsj

zd
grntma
w
iz

lkxgcpywohifnu
hyglocfnkpqwux

fjz
hj

fxpjdrglkntmzce
qznmtgfpljcrhd

w
hauesfy

goixwvdy
dxivyow
dowvyix
idxowvy
dvowxyi

bw
y
swg
uyw
aijx

xhkdzbts
pedonw
gqld

neslgchypjqavwr
aclkpygqtnwiosh

vboyhcijednm
neyvjcd
yvdjnec
ednvjcy

pezkudgxf
zpfxgkbedu
exkzgfdpu

oulheigbsfjn
ltnagbieju

vmyhslndzaroiqpgxutfk
dpilskvjutayrghzon
dctniozulkhpsvgrya
srhtzkyupavdngoli

aeybn
slcoixqtkgh
bw
rvfzp
uynjmpd

zexkwslndgyi
encftykmx
rhbenmkoyjx
xymnrke
kyxjbnumer

egdq
efkxg
lmnscieutozapj
wye

nk
ny
wn
nk

wnmubxsrvqzcyhtpjf
sjymafxtzhcnriubwv

msub
ubvyhkm
ulmocbq
blfcuepqm

gtsfubrozwdiapm
oqkuvhncxbzip

vfbklexjnhziwsayqtrpm
ntrzifljyqvesamhpk
hnvmkyprultqsifazoejc
ejcvmtnipfalyrhkzqs
qtiavmhrlneydpjgkszf

yxst
hgtwy

ymf
yv
zpdyb

amdhqbzjkxilowtuvgnrfpsy
fugmwydqvsihkntlxjeazbo
rsvxyzqjoadibglfthunmkw

qzbsk
bqzsk
zsbqhk
zkbsdq
qdbkzs

dwlij
jldiwn
jiwnl
ljwrbi
jiwl

nmbhlqkaovrgiudte
dbnotamqvikeglhzrx
ohgnmkrztblaidvqef
tbqvahorjgniewldmk
qrtvyobigemkdlhan

par
rpx

rq
r
r
r
r

nuxaoymrctdsikpeghzqwjb
lrnpzwbyiksdcjeumxga
efzlgxyvdubrsmjwpnakci

ftm
t

zjydrsx
syrxjdz
sjrxyzd

rxczvljiahfwmbok
olznqgdawfjtchibvmrx

ydlwknjzhugeamq
jzvylqmgdewhaukn
zyluqhnewjdamgk
lnuygmwdaehkqzj
jindyaeqzulwghmk

ujcbsanxhmltdvzeg
uznjaedcmlgstbhxv

ejxp
dypjn
lan
bwgvkrm

v
s
s
s
s

rdswzekavfj
jubothxgani

jazgdw
gazjdw
gajzdw
wdjzga

mnecwfslyp
yfntmsl
mcnfghls
xlinzojsvm

ocgxrsmheynbvuiw
handgupyeslixmwcbvr

yfzhmrpdkustegwoalbq
lyftdmopzrewsgbu
rwuglfsbkdtcnpqozme
etzuwbsoyprfdglm
dmwtljgrszpfeobiux

ealrftgbzy
blgearjyz
yngdbxclrzmea
jayfrezbglh
leargyszbf

clkedspwxzqhfojb
nsxhezwcjpkdfoqb
czowphbeskfjqxdl

pkzoadrt
dozrtapk
dtorzpka
atdpzrko

vrjyxhnqfg
yjhrnvqag

owgadqkfusicxrztl
qicupjdzgkolftw

o
q

csbaloz
cozblas
soczalb
lczabso
mtozcbsla

faljzbneuxympogctdi
cailgjmzqexdptbvfynu
wjpknbfhelcimtxrdyzg
gmyebdfipnxljczvt

j
j
j
j

getbmjnwazok
czenqpftw
nlxzweqtf
drwuzetnyl

ywmi
sgqdt
lnhzfxpbruovja
cqe
gyk

vp
dxesf
krp
ar
gz

xeo
q

myfw
qnelw
jrodw

ndajkhfmzxslvopb
ajsckbhdpqfnlgzmvx

imldxsptvaqyhcgbjn
ghnyicdvpqtljasxbm
lqjesvdhtbaxpmcginy
andpytcblvsixmghjq
tdvyxcnimahlsjqgbp

vsopuwdxhtabgej
gjahsudbxtwpeov
vsawxbgedzotphju
detawvgbouxhpsj

xriwbfaocqgztydvnelkspj
xkjfpcaqibswtdelyrgzovn
zpdexnfwalqhyjsokgbvcirt
zevfqwxcrjplgoskyitadnb
jcsvkgtwezobdnxyfqprial

uvigr
i
i
i

zyatdpgjrle
ezsyrdhxptav
kapdyuzreotm
qeryptdagz

z
z
z
z
z

sizxwqmegyflndk
fnweyjdbckugxtmpv

vjtkzol
hwjtzmqdykosv
jtzokev
xztkvojc

o
utxgqfenh
d
yvkj
kswvm

uefcqyzgalm
qafcezlmguy
cumafzlgeqy

lmfzyt
mltf
tlgfm

ne
eu
e
zen
e

tepckxywbnuqahilvr
cwqpuveanixogmbtlyk

mgyu
usyz
nyu
uy

hvnilwjcgbekmt
mljgckftviwhneq

rdaspohl
lfxjad
amdl
dla

ncjmux
hxzemjuoqnc

slhdpwkc
plhkwsc
wslphnkc

kx
kx

klbmqja
cbpikxjoaswyhg
lakbmuj
kbja

do
dl
qd
d

uwbktzrfax
xfvtkl

pvylfnsder
dnfprelvys
srlpdefnoyv
fvnesrpldy
rdfyneplsv

cietjkmyu
gkqjcrubel
gvjouc
ajuco
nsfjpdcwuh

zeacqhdkltxi
mtldxqcha
adqcxlhwt
whatcdxql

gsrhkdwnyt
wvngykhtd
otvwdnhgk
dkmtnhwg

gdq
asgqd
gkuqd
cgdaq

amoriyvlens
nfrdvltkyes

bgemhciuqtnpw
jqwtgbpcnhmui
zyogtixnwmhcqbp
gqtwinhbcmepu

jn
nj

gkqz
gvjyzmk
kagwzf

qimgwjex
qcxjemi
xjmqige
jqxgmei
emjxqi

bftzjip
fkjvzbcy
kzjthybdm
nogjbrezl

lukfvrc
lkrfucv
drbfuklvc
uflckrv

tekijdqozns
djsiekoqtn
noektqjdis
hndojsiqekt
usndjteqiokg

cw
c
cs
wc
cn

lxfgopvmh
ckpatzifnwxsjum
bfemqdyrpx

xosicnwrb
wsocbr
brwcasoy

esiz
ise
ies

dcungxvhipzorlbwsjqkt
pvgzlihbocskdnuwqxjr
jwqvrboixdchpsklzugn

jsizhem
zjsbhi
tjhzu

tgldmihkjb
hbekplin
borvflqchzauxi

eosqa
zpqgusowa
okqslrae
qofskay
olaqst

dbulmwerfxjoiha
jdiwhoumflbxra
rxbdihmofuwalj

gqzwfumsipboyjnl
forhywgnulpsbmiz

ql
qml
owq

dpbxiqjy
bxyqjpdi
yisjxpqdb

hxcrzpjvmnkgeuo
hryatdbx
rxlhytfwds

ljdozibqytwnfhvkxp
fqxiwhcyzbptkjlvnod
iptkxndvjzlyqwmhofb
efgvoxydhpjqiztwlbkrnus
vfzqpjblnidytkxaowh

onewvclt
vhcteos
vecnto

fpoisndugqmb
fqkgntpwjbmdus
elfqmcnbudgshzp
gnqpdmbfsvu
snrqdupbvgfmj

euvtmyohfqkscjdn
fydvukotsmpnjhqec
fhqumnvydstkoejc

zcoupardbfvns
siufbpodcnlva

dwkfe
nfdz
ibjodf
xdyhvltgpu
dzjnmrcasq

k
k
k
bk
ckj

tavfsckigh
hquzcnbdorlwm
ycgh

qplvetmdc
qdmvetcpl
pqmdcvtel
lpetvmdqc

lhcq
qcuk

whmnsqpkjov
wtjgu
tlcjdw

egicls
cioegs
cesgi

lxaifjhyrqgsem
mafexiryqdsjghl
xemjlkgfqyraish

zwrdcmavo
zvrcadfmo
madfozrcv

slfagzbjwotdni
mdspebtajxfiwknzlc
dqsitfarvljnbzhw
auilefztdjonwbs
tsiebdwjlnfaz

svgnwpr
nsaiguwl
xmplcdgsn
eotjkyshbqnzgf

bl
ly
iafxle

wnckbplriv
ixdbelhpgmqfscvwzj
lpwivbc
byptliwvuac
vbicwoklpyu

eskwamyvgxzqbtprculijf
eipbrxystfkgucjazwqmvl
wvplyjkrbcguzqsfteimxa
vhtrlousjbpmfzanqkwgcxyei

p
m

ntfspeyqrj
pqyernsftj
tnrspejfqy

gx
x
x
x

gizducfvmtohe
genmuitdvzkhxf
tbpyaruimeshzgwldqv
kidmjnuovehzgt
mxthzudigve

kudjgcbhna
lcajungkd
chdankjug
cekjgpanud

zqlucvfkmnpoighxb
ohcpgetlvzufinkqmbx
cunpqvgkziflbxhom
cgklbnvfxouqmpzih
kjimlchzgxpqvyuofbn

uwmz
nz
zbofx
zw

r
or
av
j
j

tvbqc
qedctbv
tqzvbc

t
t
ts
t
t

qhkbwa
awubqtzx
fqbyja
mbaiqhrt

wzcuyqanpdtsghr
zpocrshdwynaqtxvge

gpq
qeh
cq

jfltaouwri
ygbxsqdz
skd

jmlh
hlmj
hjlm
jmlh
umihknslj

ute
ltdzqf

ygkx
mywxcrd
apyx

xy
y
dy

mivusqxpzyljehgkotrf
ajlizqnpegckfohdvsxrwb

pl
lp
pl
lp

xmnaupwtcvozrfekbdshlq
dlafzmnhvpeskwoqucb
uzydhfovwmapneqlgkbcs
cjapswblfmnzqokeuvhid
dzlaovqnmsuwkhcyfpeb

wpb
bp
bp
bp
bp

pusm
umpshr
musp

xdz
z
f
ecjo
nkxz

tjmvdf
st
trn

hkfgarys
rghfasy

ljyixtumsfngvdwoqzpakecrbh
kfpuvicgrsnoetabmywjzqxlhd

az
z

rgkf
khrgn
nrgk
gkrfoc
werzgkpa

vkg
k
k
ku
ik

blruxyvehtsn
thdl
mtldh
lht
thil

rnzqadiplhbegj
qlezpgnabdrji
lnrzaqjpdigeb
rbjlnpiegqazd
jprzlegqdbnia

kgo
okg

rjm
kiml
cuxstqpwod
kghb

yckovthbrigazfxq
atriygxofzkcqh

vudbtxjpgaqfzhlkmncswyi
lgfjahksybqmncoeuwvixtrd

dmlyrgkwfjovqasxit
ylawsjxrftdegmkqvi
stqgmxfrjvlkhaydwie
mypcdrjnkgtsxvqawlfzi

ethrvfnyasdkb
eanwdyfcsbhr
xayerdsbhlf
ejdrshvywbaf

hqyfnrxjzsd
buly
yukpm
likmy

zlpditkvsawocunjqyhmrx
rdtjsunpqymlhxkvcwzoai
oaprkqhumtvlcwxdnzsyij
uxmdclkpjqrotahysizvnw
olwhpitmraqdnkxuvjsycz

srnhuf
hrsxfwynuo
gnzsfbutcrh
krnhusf

l
lsb
ujqtvol

cptnhxgdkivyjlsbrwmuf
nkbshfmrxgjdoclwivy
fxibalcmhydvkjnwgsr

txye
cjvqsulagn
kihdbf
ohpmzwr
rbtw

tgm
mgt

nhucrjmq

rubajlyszwn
nlbsjzwryau
zrwuynsjbla

flvdypkxabzm
lipzbtrmqof
ljmghurbifpzns

bsv
wsux
vs
s
sv

vfqsehx
xseqvhf
svxefqh

fipwjdl
jpilwfd
whflvdipjx

oclrqnubyhpmdks
wmkchdsqujbpxlnyo
onulmdsbyhkqp
mlubkpyhnqods
tfmesqblonudihypk

gcwf
a
v
q
o

xpqlzcfvtjgr
fxwprjglmasiqev
xljpgbrfqvo
fbvqrcgxpdljt

nxpktofqglvrsjbi
wvkotsgijlbnrufdxq

rpfew
iflep

tdy
teyvdjo
tdy

ix
gzkwchaqd
oysure

hxvkjmneycuspbwroqaligf
qkhpisjmxblnwezrgoauycfvt
emcqhiufkjbrlwyngapsovx
aixrbgcfynwelsoqkpmhjuv

ckxhmridjbfalqo
yzunwpsdlgev

ls
lzk
sl

kdpzmau
gzamukp
kpfua
pkau

usmywivnpgt
biqxymnosaklrehzj

orwcjpkbiexz
bpzikgwn
winpbkz

wobslxnhfyjtg
vqdecolzarnm

rgfloc
yufcor

tgwnebxyzkchqvoulmprdijasf
zmpdjlekigtswronhubqcvfa

fyrbd
yfbr
frby
fbkghytr

stexkgyiqpaodnm
opecuqrdnytkxaig
oxykdtnaegpiq
xtgaydoepqikn
oyktnixegqpbad

irgbyxhwm
iwgykrbx
yibgrwx

dxejzvrocb
tbxhmqscrid
cjrodlgbxz
zcbxwpjrd

l
lg
g
lg
nfi

ab
aw

vlbi
zegtwnc

dgbj
dgjybl
ardgupbsqjv

xoquygizahnwpkvds
duaoyzvgqxhkiwspn
gpvyukzaiqdnwoxsh
qpwnyzihovukasxgd

fcepzibvulyxhsjqdanwmtrg
bijrdfxcqhplwnymsezatuv
uxbcwnrmisvqhljpzdaetfy
umwzscitfjhxyrelpvdabnq
usahyzdmtqfibxcjvlepwnr

tpk
gzetqkypuhj
pknct
mfticpk
akiwtfsp

qedhju
lvdqtzehyj

vyfe
vey
yve
yve
yev

dseopbmfcuk
msfekpuodcb

jm
jm
mj
jm

jfgevdqxm
mqftev
fmeqv
etfmqv

grhalzpfsjweuyt
zteylfsaugpj
jtuzpeyflgsa
zlajntyufgkspe
fjyapletgzsu

ixhz
n

mqekbhiu
ikgbhmeq

xscglkt
ctglkxr
kxlctg

siygouxkzhetdrqcfp
eiftxuyhpkczrqdsgo
qgfryxepotiucskhdz
pfruziqyxgedkthcso
pezofhisdcxygurqkt

kp
kqyxp

hzbtkxlyipegra
lkrgehiyapzxtb
zhliaprgbkexty
axgyhlpekbiztr

mh
al
hien
zxkprdvo

xfjokhuyszwt
ujotxwsfkzyh
tfhwozsujykx

bqudfgvjeiy
djefqvibug
yvxuiedqjgbf
xuefjqgdvib
ibveujdqgnf

liyqzxwogcdhvjsr
nvcigxswpoedq

zjdgxfqwhcbm
qxhjgdwmbzcvf
cxgfmzjwbdqh
qjzwphxibcmfdg

tdflsxicwmpar
iawprsxtmcfdl
rxpafwlihsdtcm
amtwplscxrfdi

sgjmp
sojg
gsj
sjgu

pjtayfvqgubsdzh
rxwbhcekljnm

fhsmgpyblcitz
zmibgvhylwf
vigmfbzylh
iyfvglwhmzb

bprqyialnmkveohuxs
iykvuxbpshemloarqn
ivnoqlxrpyabheukms
xvqnmyhbkueslipora

ogdijpwtxuchrv
ovjhdwxptiugcr
jxutokrfwpighcvd

oizhtyglwbnjfuverqps
syaiuqhzeltbovrwjpgn
eohzgwjbtrqulsivnpy

uptch
igt

up
uhy
u
oua
hu

owtkc
oktwc
wkcto
wcokt

qosvjmkcixhdb
upaweznmgjt

pcnabt
bapct
dcbaqzuvyl
jcab

siw
iws
wsi
siw
zskiw

b
by

vdljnuawqg
daluqjvwgn

vqctdhulbpj
citavlqhjkdpe
glhsjpryofnzwvcqdt

xo
xo
xo
ox

l
vkjflgh
ld

oftdbe
jutioleh
ebcrtgo

dcwx
zgcxtb
dcqt
opfucrjikea

kjogaebchpmxzudy
yvxmabpdgznjoe

dtfrbceshaupizxqwl
wlefqdxbarzitscpuh
lrafisdhktxpzcbwuqe
tleibrqsazhufdpcxw

mwjahec
wcjme
kjrwcme
cemjw

jfgonrqkezumxdsbvaci
vgsindtuyzjbomrkqf
osfbklvjiumwznhdgp

nwmgfludzhoyb
jwmgonfzhdkiuab
huvgwsfrbdcenmotzqp
zdhgxofwbijmnu

wahstyxvugdmolp
tdalphmxsuoygwv
glpudovmtshawxy
hwstlopuyxmagvd
lgayovuwdnxptshjm

a
a
a
rca

szlidbpwxq
slbzpqdwx
qzwxhrpybls

ewhjlxfcmuidsgnbrkyoq
enmiavrkwzlobjsuyq
pisbwokteznlqjuymr

brnec
nwcrei
bnecor
ncerb
rnkedc

pqw
kbct
hviudfjyars
wbe
b

xtsbynudvwjkfalre
auwkntbfeyvxsrdlj
nyewflsxkjuartdbv
adexltvsbymrwnkujf

yima
miay
amiy
czimay

yagqmw
mwqgya
gqwyam

acqibtfwlnyvjumrdgspoxz
dxzbqownsgylajucitmrpfv
ztpcrulxjomvwbdgyfinas
scbwynpftarmgjduxliovz
mpgtuyzhxwcoibdrsanflvj

bdftwqgsaimhxvn
stmaqbxhgwvfdni
abmfshgnxvqitdw
thabinfgmvdqsxwy
dtwvbasxnhiqfgm

siomckdrlhnytjaqpzwu
cqxytvoanbulrekzwfpd
uxadwqkgptrzlycon

stwohnvrq
kfnpxvcy

ijlkvrdacmuhotxwbsqpegyn
gopemwhirtcbynxaskvulqj
aweqlciybkguopsjtmxrhvn
pwelrvhicybstoqkujgaxmn

ckpdbfs
kcdfqv
foecjkqsvbh
muzckif

zsblxdetgovunfiqwhjpkmracy
wvkxysnjdraclzgemouphbt

qmtx
xqt

dmieulgon
jfmyra
fsjma
xmsq
tvcm

xklcpvzje
lpjrvaez
zpjlev
fvpjlez

bodrkvzcmhyxulswnijt
ynilmcwzrvohtsubkdx

tewspzja
wjtsplzfega
atzsewjp

tu
but
atdnsu

y
u

qbtawmldjsy
mjqdsylbatw
tyalbmqjswd
ljsdtwbqyma

msgytaj
vygscje
qjciogk
nhpflxzrduw

vcmrtws
srwyc
wursckd
cpwrs
wsrc

ielm
pilfr
mhxlcaf
gvzosdytl

ij
avi
ylio
kaim
ijamw

cgxwjydavlhbpior
adckqejbhysinlo
ajwczfloydthbmvi
cubojhwagryild

jyqagilxfsk
yfasltokjgqx

impglqcwn
ngcaydziwp
ipbgnzwcu

lj
j
jfrb

xncgrjkpsmwailbdeouzqht
rayuhpxqsezkdlowicfnmjgbt
ijzwpaqtdxcuhegsmlkvborn
upndtklhgeoibmzcxrswaqj

ohsckdiej
dochisejk
dcsiojkeh

xcbnwtzqu
oeywhzn
jgfskirml

dsrvqfctojm
facqi
yflgqcw
cqnlfz
qefkcy

xvwadfktl
fltkxwa
wptxjalf
mtfaxlw
awtflx

vzxqjbrwlpysguonctmf
orynmphcqbfuzwtaxjs
mrunfcqjxoytszbpw
podxzyserwjbqutnfcm
sxqdfercbnopmyujtwz

anzbwplo
ingwuxc
dwrketnsv

goz
go
goa

msgopxyt
tsopygmx
gmxyustpko
xpmtsoyg
xptgmosy

ohj
ojf
jo

gvm
c
nrhjkwda

ryqudzpvg
vzugpqr

wya
wa
bajqno
gxa
da

eobwrtihcqfp
rhbkdep

spnlubhavkw
obiqgzyxdfercj

jtfq
q

jyx
wuz

bhqnegu
uehqngo
ehvqgu
edquhg
ucgyqdhe

cigbdtul
agicltduv
cgytuidl
utgcdilm
ulgejtcwfxdi

efk
fd

yekuojwtxp
odky
ngz
tpwyd

vo
og
o
o
ofj

wavejohibzrk
wijeafkrvzob
ierabjvkzwoq

bxtkfhcyigulzdp
ihjfyukgltb
nafkrhwibgyulqvm

wljfgnvr
aowxfliqpr

swkxmvhcriylgt
cgitkxhlvmrwy

ilnzkweohypu
axfcdrtsmjqbv

xolcuzgfvitedbkyr
gkldfetvpuxyorzi
fxituzlqvokersgjhyd
btkzyxiedrlfvgou
koryuemagtixfdlzv

hsubfgecvrjna
nctvf

pyeaxfmr
eyxprfam

zr
uez
zou
zqdxnsakmvifj
hz

jhbwgfrpvdx
mcnrpehvufgtb
pvzubqhfgar
ofipybhktlqrvgs

bsfu
hu

xk
kx
uk
k
k

qymaugnc
ajigmczroyxb

dxjisapbrcqnltwv
anzrjtiqxslbce
qnxgjalrtiscmyb

rkmxv
hmrkvx

nha
pqjeh
h
ahv
vah

ipl
svirqdjpmx
pjimx
whpekfzgtbi

qlshkevani
eshaknilvq

xpi
pxio
xpjoi
pnxi
piox

kxub
dkmxu
nka
cku
quxzmk

exthvjmbrl
ebsamihlxrvt
utfbrexmkljhvn
hbxmelrvtj
mlerbhxtv

ykzvcm
vfackzmy
zvmkyc

cdnqv
vcqdn
dcsqn
dcnzq

odv
jdokvasx
dqvo
dwplnvo
qsodv

ud
du
du

sfoihm
oisf
siohf
sifo
qdjkifalso

eabz
bpza
bz
ezb
bzuyvg

d
x
d
d
d

muf
m

ohtfclrqkabuvynewidxgjp
lchojyerxwianpbtfkdvqu

h
h
vh
h

uthpecmangsirovj
itzrvywgmaushc
cumrhqtasvgnfi
mvgtorachqiebsu

icrlaxzefw
ceibjhywlvzdrsao
xelqaiczmufwr
ialnczmewr

v
frwckiy

qne
zsgn

ysaxl
xqwlasey
xsyalb

ntevywd
hxungtl

snzgpbyhtlamxroec
wczfumyrjhidgsqbkavot

sapbxcfrthquln
kqafnsuhob

eaxhmlnuwco
qigzs
gkfjy
jrvdg

bztomjpxycqnkse
qcotlpesajmfk
oetdksqpcmj

pwtjdilcyx
liejpwtcdyx
ticlpwyjxd
iwldjcpytx

aoznvbfrxy
zbfvyxroan
fybavroznx
fbavnyzrox
xobyfvrnza

ioxynh
xinyho

io
uyiwon
oxi
ivo
cio

y
ny

l
lc
gl
cl
l

akxs
asxk
akxs

vglhiwm
hkv
rducpj

iszjbtaouvcdkgfylxhqnrm
cagdmhlziutfxqrkjynovsb
kmcdrvgxynzoafusjlebqtih

kqduelpmh
uplhedkmq
dupqelkh
eflyuhwqgdkp
hqplekdu

gwkfxo
fowxgk
foxkwg
xkfwog
fwkgxo

xpegdzcsoyjt
zpcsgetjydxo
stoxjgfzecvdpy
typecgxjzosd

digfewr
psxv

pntydfukzoecihxv
vtfzihungkcdxoey

ktaqydchpr
kcalptydhx
ydkprcaht

qep
pqew
qvpe
qepx

l
o
o
n

zubsojhtqep
bujqpsytoieh
upeqthsobyj

regblhcjn
djgecrtblnh
jhebcnlrg
brehclngj

lprbihju
jhzoplsnk

hgnlwjfqczu
cjyuntigwzqeh
qhwlgunfzcajv

adjmogquh
wpsodnth

brueif
teiuqrfb
ufrbei
fbieru

zeaufk
ukfeza

qk
cqkf
kq
kq
qk

dfw
ndwft
wfd

sdevru
fdsr
nbtmord

vlhxnguq
qvlgun

nkcoszpaivjqybwt
qjdzgrumbsiopkveaylcx
szypwickvjfoqbha

xbtzcjeimsnwf
vtkicgmnhbx
xnhabvqicmtdpr

uxt
utx
utx

yurfmzncxwbil
vyi
yovi
iya
ksyi

vbkmdhjzf
vbhkjzmf
mfolkbhjzv

bcl
blc
clb

groy
n
mq
wiebc

bpn
pnb
pbn
bpnw
nbzp

blgdwivs
gvilsmwbd
bwgdklisnv
busdviwlg
mwlibsgvudc

stafhuqw
aufhqs
hsqauf
xrkfmepbsnqac

ajlhmnzqfbiskyxvuoc
svfalqujboincmxzkhy
sxvlznqfajhyboimukc
vljuykzxnsiabqchfmo
fbszjynvolhamucikqx

tjhcwv
wc

jobkfqrchsxeilu
jmfiaowhpkulqrx

janucsmrw
lnjco
qgctnjz
vgjnfc
dcionzxj

ouhskqaiydtjz
oisamqzehwlyutx
uqytfipahsvzco
uapehtyqziso
yqatsuizefhmow

klsdvrhmfiqyptuebxwc
usdxgerciwlvnmpyfob
vbwxyedsrmlpiacfu

mzcf
mwc
chm

zuipejovcklydarwxqsft
cdevzkwmrjfpoqxtuylsia
frwldqezastuocvixpjyk
xkluzcosjtfvdeapwriqy

yk
yk
ky
kgy
ykv

vtrikmwcoju
qtphlzbjwovrg

pujnbx
nbupjx
ubxpjn

nikcbsdhge
hibkgcnle
nboehtpigck
likhecnbg

cuhjlgofs
khsocg
sbfoghzv
ydsngtwop

swfudijxtklq
xqvnajufkihwtdsl
ixjkwdsqtful

mvajfubtpgxwocs
pvsbofxmjwaguc
asbgcfmowxujpv
oseuibcgxfvmawjp
pmbcageuojfxswv

dvwqskngflbpx
ibtgczowdfljmhuaye
svlgnwfrpqbd

ftxykloisajqwzun
qytozbimwxuafeknj
lazjyixqmotnuwk
voxhyjzknuticqwa

tfszajmeokvupiy
tmqcvyjsuf
vtyufsmgnj

kwzrisqu
zuskiqr

v
h
h
h
w

g
g
g
g
mg

wmoigknfuqlerxcpd
xmcrguoeqfnpkwild
egmlufncqdvxropiwk
wagquoxrcfptekdinml
lxgfmeirdquowkcpn
""".components(separatedBy: "\n\n")
    
    static let day05BoardingPass = """
    BFFBFBFLRL
    BFBFBBBLRR
    BFBFBFBLRR
    BFBFFFFRLR
    BBFFBBFRRR
    FBBBFFFRLL
    FFBFBFFLLL
    BBFBFFFRLL
    FBBBFFBLRR
    FFFFBFFRRL
    BFBFBFBRLL
    FFBFFBBLLL
    BFFBBFFRLR
    FBBFFFFLRR
    FBFBFFBRRR
    FFBFFBBRRR
    FBBBFFFRRL
    FFBBBBFRRL
    BFFBBBBLLL
    BFBBFBBLLR
    FBBFBFFLLR
    FBBFBFFLRR
    BFFFFBFLLL
    FBBBBBBRRR
    FBFFBBFLLR
    BBFBFFBRLR
    FFFFFBBLLR
    FBBFBBBRLL
    FFFFBBFRRR
    FFFFBFBLRL
    FFFBFBFLLR
    FFBFBBBLRR
    BFFBBBFRLR
    FFFBFBBLLL
    FBFBBBFLRR
    BBFFFBFLLL
    FFFFFBBLRR
    FFBFBFFRLL
    BFFFBBFRLR
    BFBBBFBLLR
    FFFBBFFLRL
    BFBBBFBLLL
    FBFBBFBRLR
    BBFFBFFRRR
    BFFFFBBLRR
    FBBBBBFLRL
    FBFBBBBRRR
    FBFBBFFLLL
    BFBBBFBRLL
    FFBBFBBLRR
    FFBFBBBRRR
    FFFFFBFLRL
    BFFBBBFLRR
    BFBBFBFLLR
    FFBFBBBLRL
    FBBBBFBLLL
    BFBBBFFLRR
    FBBFFBBLRR
    BFFBBFBLRR
    FBBBBBFLLL
    FFFFBBBRLR
    FBFBBBFLLR
    BFBFFBFRLR
    BFFBFFBRRR
    FBBFFFFLRL
    BFBFBBFLRL
    BBFBFFFRLR
    FBFFFFBLRR
    BFFFBFFRLL
    FBFFBFBLLR
    FFFBFFFRLR
    FFFBFFFRLL
    BFFBFBBLLL
    FFBBFBBLRL
    BFBBBBFLRL
    BFBBBBFLRR
    BFBFFFFRRL
    BFBBBFBRLR
    BBFFBBBLLR
    FBBFBBFRLR
    FBFBFBFLLR
    BFBFFBBRRR
    FFFFBBFLLR
    FBFFBFFLLL
    BFFFFFBRLR
    FBFBBBFLRL
    BFFFBBFLLR
    FBFBFBBRRR
    FBFFBFBLRL
    BBFFFBBLLL
    FBFFFBFRRL
    BBFFFFBRLR
    BBFFBFBRRL
    BFFBBBBRLR
    FBFFFBBLRL
    FBBFBBFLLR
    FFBBBBBLLL
    FBBBBBFLLR
    FFBFFBFRLR
    BFFBBFBLRL
    FFBBBBFRLR
    BFFBFBBRRL
    FBFBBBFLLL
    BBFBFFBRRR
    FBFBBFFLLR
    BFFFFFBRLL
    FBBBBFBLLR
    FFBBBFBLRR
    FBBBBFBRLR
    FBBBBBBRRL
    FBBFFFBRRL
    FBFBFFFLRR
    FBBFFFBRLR
    BFFBFBFRRL
    FFBFBBFRLL
    FBFBFFFRRR
    BFFFFBFRRR
    FFFFFBFRRL
    BBFFBFFLRL
    FBBBBBBLLR
    BFFFBFFRRR
    FFFFFBFRLL
    FBBFBFBLLL
    FFFFBBFLRR
    BFBBFFFRLR
    FFBFFBBLRR
    FBFFBFBLRR
    FFBBBFBLRL
    FFFBBFBRLR
    BFBFFBBLLR
    FFFBBFBLLL
    BBFFFBBLRL
    FBFBFFFRLR
    BBFFBFFRLR
    FFFBFBFRLR
    FFBBBBFLLR
    BBFFBFFLRR
    FFFFFBFRLR
    BFBFBBFRRR
    BBFFFBFRRL
    BFFBFBFLLR
    FFFBBBBLLL
    BFFFBBFLLL
    BBFFFBBRRL
    BFFFFBFRLL
    BFBFBBBLLR
    BBFBFFBRRL
    FBFFBBFLLL
    FBFBFFFRRL
    FBBFBBBLRR
    BFBBFFBRLL
    FBFBBBBRLR
    FFFBBFFLRR
    FBBFFBFRRL
    BFFBBBBLRR
    FFFFBBFRLR
    FBFBBBFRRR
    BFFBFFFRLL
    BFFFFFFRRL
    FBFFFFBRLR
    BFFFFBBRRL
    FBBBBBFRLR
    FBBBBFBLRR
    FFFBBFBRLL
    FBBFBBFRRL
    FFFBBBBRRL
    FBBFFBBRRL
    BFFBBFFLLR
    FFFBFFBRRL
    FBFFBFFLLR
    FFFFFFBRLL
    FFBBFBBRLR
    FFBBFBFLRR
    FFFBFFBRRR
    FFBFFBBLLR
    BFBFBFBLLR
    FFBBBBFRRR
    BFBBBFBLRL
    BFFFBBFRRL
    FBFBBBFRLL
    BBFFFFBRRR
    FBBFBFBRLR
    BFBBBFFRRL
    FBBBBFBRRL
    FBBBFFBLRL
    FBFFFBBRRL
    BFBBFFBRRL
    FBFBBFFLRL
    FBFBBBBLRL
    FFBBBFBRRL
    FBBBBBBLRL
    FFFFBBFRLL
    FBFBBFBRLL
    BFBFBBFLLR
    FBFFFBBRLR
    BFBFBBBRRR
    FBBBBBBLRR
    BFFBFFBRRL
    FFBBBBBRLR
    BFFFBBFLRL
    FBFBBBBRLL
    FFFFFBFRRR
    BFBBBBFRLR
    FFBFFBFRRL
    FBBBBBBRLR
    FBFFFBBLRR
    FFFBFFBRLR
    BFBFFBFLLR
    FFFFFBBRRL
    FBBBBBFRRL
    FFFFBBBRRR
    BFBBFFFRLL
    BBFFBFBLLR
    FFFFBFFLRR
    FBFFFBFLLL
    FBBFFBFRLR
    BBFBFFBLLR
    BBFBFFFLRL
    BFFFBBBRLR
    BFFBFFBLRL
    BFBFBFFLRL
    FBBFFBBRLR
    FBFBFBBRLL
    FFBFFFFLLL
    FFFFBFBLLL
    FBBFFBBLLR
    FFFFBBBLRR
    FFFFFBBRRR
    BBFFFFFRLL
    FBFBBFBRRR
    FBBFFFFRRR
    FFFFBFBRLR
    BFFFFBBLLR
    FFFBBBFRLL
    BFFBBBBRRR
    FBFFBBFRLL
    BFBBFBFLRL
    FBFBFBBLLL
    FFBFFFFRRL
    FBFBBBFRRL
    FBBBBBBRLL
    BFFFBFBRRR
    BFBFBFBRRR
    FBFFFBBRLL
    BFFFFBBLLL
    FFFBFFFRRL
    FBBBBFFRRL
    BFFFFFFLRR
    BFBFBFFLRR
    BFFFFBBRLL
    FBBFFFFRRL
    BFBBFBBRRR
    FFFBFFBLLR
    BFFBFFFRLR
    FFBFFFBLLR
    BFBFBFBLLL
    BFFBFFFLRR
    FFBBFFBLRR
    FBBFFBFRLL
    FFBFBFBRRL
    FBFFFFFLLR
    FBFFBBFRLR
    FBFBBBFRLR
    FFBBFFFLRR
    FBBFFFFLLL
    FFFBFFFLRL
    BFFBBFBLLR
    BFFFFFBLLL
    BBFBFFBLLL
    BFFBFBBLRR
    BBFFFFBRLL
    FBFFBFFLRL
    FBBFFFFLLR
    FFFBBFFRLR
    FFFBBFBLRL
    BFFBBBBLLR
    BFBBBFBRRL
    FFBBBFFLRR
    FBBFFBBRLL
    FFFBFBBRRR
    BFFBFFFLRL
    BFFFBFFLLR
    FFFBFBFLLL
    FFBFBFFRRL
    FFFBFFFRRR
    BFBFFFFLRL
    BFFFFFBRRL
    FFFBFBBLRL
    FBFFBFFRRL
    FFFFBFFLLR
    FFBBBBFRLL
    FBBBBFFLRR
    FFFFBFFLLL
    BFBBBBFRRL
    FBFBBFFLRR
    FFBBFBFRLL
    FFFBFBBRLL
    BFFFFFFLRL
    BBFFFFBLRL
    BFFFFFFRLR
    FBFFFBFRLR
    FBFFFFFLRL
    BFBFBFFRLL
    FFBBFBFLRL
    FFFBBBFLLR
    FBBFFFBRRR
    FFFFFBFLRR
    FBFFFBBLLR
    FFFFBFBLRR
    FBBFBBBLLR
    FBBBFFBLLL
    BBFFBFFRRL
    BFBBFBBLLL
    FBFFBFFRRR
    FBFFFFBRLL
    FFBBBFBRRR
    FBBFFBBLLL
    BBFFBBBRLL
    FBFFFBFLRR
    FBBBFFBRLR
    FFBBBBBLLR
    FBFFFFBLRL
    BFFFBFBRLL
    FFFFFBBLRL
    BFBBFFBLLL
    BBFFBBFLRR
    BBFFBFFLLL
    FBFBFFBRRL
    BFFBBFFRRL
    BFFBBFBRRR
    FFBBBFBRLL
    FBBFBFBRRL
    FBFBBFBLLL
    BFFFBBBLLL
    FFFBBBFLRL
    BFBBFFFLRL
    FFFBFFBLLL
    FFBBFBBRRR
    FBBBBFFLLL
    BBFBFFFRRR
    FFBFFBFLRR
    BFFBBFBLLL
    BFFFBFBLLR
    FFBBFBFRRR
    BBFFFBBLRR
    FFFFBFFRLL
    BFBBBFFRLL
    BFBFBFFRRL
    BFBFFBBLRR
    FBBFFFFRLL
    FFFBFBBLLR
    BBFFBBBLRR
    FFBFBFBRLR
    BBFFBBFLRL
    BBFFFBBLLR
    BFFFBBFLRR
    FBBBBFFRLL
    FBBFFFBLRR
    BFBFBFBRLR
    FBFBBFFRLR
    FFFFBFFLRL
    FBBBFBBLLR
    FBFFFFFRLR
    FBBFBBFLRR
    BFBFBFFRLR
    FFBFFBFLLR
    FFFFBBBRLL
    FBBBFBBRLL
    FFFBFBFLRL
    BFBBFFFLLR
    BFFBFFBLRR
    BFFFBFFRLR
    FBBFFBFLLL
    FBFBBBBRRL
    FBBBBBFRLL
    FBFFBBBRLR
    FFBFFFBRRL
    FFBFFBFLLL
    BFBFBBFRLR
    BFFFBFFLRL
    FFBBBBBRRL
    FBBFFBBLRL
    FBFFFBBRRR
    FBBFBFFLRL
    BFFBFBFLRR
    FFBBBFFRRR
    BFBFFBBRLR
    FBFBFBFRRL
    FFBFBBBLLL
    FBBFFFBLLL
    FFFBBFBRRL
    FFFFBBBRRL
    FBBBFBFLLR
    FBBBBBFRRR
    FBFBBBBLLL
    FFFBFBBLRR
    FFBBFBBLLL
    FBBFBBFLLL
    FBFFFFBRRR
    FBBBFFFLRR
    FFFBFBBRLR
    FBFFFFFRRR
    BFBBFBFLLL
    BFFFBBFRRR
    BFFFBFBLRR
    FBFFBFBRLR
    BFBFFFBRLR
    BFBBBBBLRL
    BBFFBFBRRR
    FFBFFFFRLL
    FFFFFBFLLR
    FBBBFBFRRR
    BFBFFFBRRR
    FBFBFFBLRL
    FBFFBFBLLL
    FBBFFFBLRL
    BFFBFBBRLL
    FFFBFFBLRR
    BFBBFBFLRR
    FBBFBBFRLL
    FFBFBFFLLR
    FFBBFBFRLR
    FBFBFBBLRR
    FFFBFBBRRL
    FBFBFFFLLR
    BFFBBFFLRR
    FFBFFBBLRL
    FFFFBFBRLL
    BFBBBFFRRR
    BFBFFFFRRR
    FBFBBFBRRL
    BFBBFFFLRR
    BFBBFFBLRR
    BFBFFFFLRR
    FBFBFFFLLL
    FFFBBBBRRR
    FBBBBFFLRL
    FBFBFFBLLL
    BBFBFFBLRL
    FFBFFBBRRL
    BBFFFFBRRL
    FBFFBBBLRR
    FBFBFFFRLL
    BFBBBFFLLL
    FBBBFFBRRL
    BBFFBFFLLR
    FBFFFFFRRL
    BFFBFFBRLR
    BFBFBBFLRR
    FFBFFFBLRL
    FFBFBBBLLR
    FFFBBBBLLR
    FFBBFBFRRL
    FFBFFFFRLR
    FFBFFFBRRR
    FBBFFBFLRR
    BBFBFFFLRR
    FFBFBFBLLL
    BFBBFFFRRR
    FBBBFFFLLR
    FBFFBFFLRR
    BBFFFFBLLR
    FBFFFBFLRL
    FFFBBFBLRR
    FBBBBFBLRL
    FFFFFFBRRR
    BFBBFBFRLR
    FFFBFBFRRL
    FFBBFFFLRL
    FFFFBBBLLL
    FBBFBFFRRR
    BFFBFBFLLL
    BFFFFFFRLL
    BFBBBBBRLR
    FBBBFBFLRR
    BFBBBFFLLR
    BFBBBBBRRL
    FFBBBFFLLL
    BFBFBFFLLR
    FBFBFBFRLR
    FBBFBBFRRR
    BFFBBFFRRR
    FFFFFFBRLR
    FBBFBFBLRL
    FFBFFBFRRR
    FFBFFFBLLL
    FBBFBBBRLR
    BFBFBBBRLR
    BBFBFFBLRR
    FBFFBFBRRL
    FBFBFBBLRL
    FFBBBFBRLR
    BFBFFBBRRL
    FFBBFFBRRL
    FBFFFFFRLL
    BFBBBBFRLL
    BBFFFFBLRR
    FBBBFBFRRL
    FBFBFFBRLR
    FFFFBFBRRR
    FBFFBBFLRR
    BFFFBFBRLR
    BFBBFBFRLL
    FBBBFFFRRR
    FFBFBBFRRL
    FBBBFFFLLL
    FBBFBFBLLR
    FFFFBFFRRR
    FFFFBBFLLL
    BFFBFBFRLL
    FFBFBFBLLR
    BFFBFFFRRR
    BBFBFFFLLL
    FBFFFFFLLL
    FFFBBBBRLL
    FFBBFBBLLR
    FBFFFFBLLL
    BFBBBBFLLR
    FFFBBFBRRR
    BBFBFBFLLL
    BFBBFFFRRL
    BFBFFBBLRL
    FBFBBFFRRL
    FFFBBBBRLR
    FBFFFFBLLR
    FFFBBBFLLL
    BFBBFFBRLR
    FFBFBBFLLR
    BBFBFFBRLL
    FBFBBFBLLR
    BFBFFFBLRL
    FFFFBBFLRL
    BBFFFBFRLL
    FBBBFFBRLL
    BFFFBFFRRL
    BFBFBBFRRL
    FBFBFBBRLR
    FFFFFBBRLL
    BFBFFFBRRL
    BFFFFBBRLR
    FBFFBBBRLL
    FFBFFBBRLR
    BFFBFBBRRR
    BBFFFBFLRL
    FBFFFBFLLR
    FBBFFFFRLR
    BFFFBFBLRL
    FFBFBBFLLL
    BFFFFFBLLR
    FFBBFBBRRL
    FBFBBBBLLR
    BFFBBFBRLL
    BBFFBBFLLL
    FFBFFBBRLL
    FFBBBFBLLR
    BBFBFBFLRL
    BFFFBBBLRL
    FBBFBBBLRL
    FBBFBFFRRL
    BFBFFBBRLL
    FFBBBBBLRL
    FFBBBBFLLL
    BFBBBFBLRR
    FFFBFBFRRR
    BFBBBBBLLR
    FFBBFFBLLL
    BFBBBBFLLL
    FBBBFBFRLR
    FFBFFFFLLR
    BBFFBBBRRL
    BFFBBFFRLL
    BFFBBBBLRL
    BFBFBFFRRR
    FFBFBBFRLR
    BBFFBBFRLR
    BFFFBBBLLR
    BFBFFBFRRL
    FFFFFBFLLL
    FBFFBBBRRL
    BFBFBBFLLL
    BFFFFFBLRL
    FBBBFBBLLL
    FFBBFFBRRR
    FFFBBFFLLR
    BFBFFBFLRL
    FFBFFFBRLR
    FBFFFBFRLL
    BFFFFFFLLR
    BFFBBBFRRR
    FFBFBFFRLR
    BBFFBFBRLL
    FFFBFBFRLL
    BBFFFBFRLR
    BFFBFFBLLL
    FFBFBBFRRR
    BFBFFBFRLL
    FBBBBFFRLR
    FFBFBFBRLL
    BFFBFBBLLR
    FBFFBFFRLL
    FFBFBBBRRL
    FBFBBFBLRR
    FBBFFBFRRR
    FFBFBFFRRR
    BBFFFFFLRL
    FBBBFFBLLR
    FBFBFBFRLL
    BBFFFFFRLR
    FBBBBFBRRR
    BBFFFFFRRR
    FFFBFFFLLR
    BFBFBBBLRL
    FBFBBBBLRR
    BBFFFBFLLR
    BFBBFBBLRL
    BFFBFBFRLR
    BFFBBFBRRL
    BFFBFFBRLL
    FFBFFFBRLL
    FFBBFFFRLL
    FBFBFFFLRL
    FBBFBBBLLL
    BFFBFFFLLL
    FBFFFFFLRR
    BFBFBBBRLL
    FBFFBBBLLL
    FFFBBFFRLL
    FFBFFFFRRR
    FFBBBBFLRL
    FFBFFBFRLL
    FFBBFFFRRR
    BFBBBBBLLL
    FFFBBFFLLL
    BFBBBFFRLR
    FBFFBBBLRL
    BFBBFFBLRL
    FBBFBFFLLL
    FFFBFFFLLL
    FBBBFBBRRL
    FFFBFBFLRR
    BFBBFFBLLR
    FFBFBFBRRR
    BFBFBBBLLL
    FBFBFBBRRL
    BFFFBBBRLL
    FBFBFFBRLL
    FBFFBBFRRL
    BFFFBBBRRR
    FFFFBFFRLR
    BFBBFBFRRR
    BFBBBBBRLL
    FBBBFBBRLR
    FFBFFFBLRR
    BBFFFFFLLL
    FFBFBFFLRL
    BFBFFBFRRR
    BBFFBBFRLL
    FFBBBFBLLL
    BFFFFFBLRR
    FBBBBBBLLL
    BFFBFFFLLR
    FFBFBFFLRR
    BFBBBBBLRR
    FBBFBFBRLL
    BFBBBBFRRR
    BBFFFFBLLL
    BFFBFFBLLR
    FBFBFBBLLR
    BFFFFFBRRR
    FBBFBFFRLR
    FBFFBBFLRL
    FBFFBBBLLR
    FFBBFFBRLR
    FFBFFFFLRL
    FBBBFBBRRR
    FFBFBBBRLL
    BFBFFFBLLR
    BFBFFBFLLL
    FFFBBFFRRL
    FBBFFBBRRR
    FFFFBBBLLR
    BFBFFFBRLL
    BFBFFFFLLL
    BFFBFFFRRL
    FBBFFBFLLR
    FBFFBBBRRR
    FFFFBFBRRL
    BFFFFBFLLR
    FFFBFFFLRR
    BFBBFBFRRL
    FFFFBFBLLR
    FBBFBFBLRR
    FFFBBBFRRR
    FFFBBBBLRL
    FBFFFFBRRL
    BFBBFFBRRR
    FFBFFFFLRR
    FFBBFFFRLR
    BFBFFFBLRR
    FFBBFBFLLR
    FFBBFFFLLL
    BFFFBFBRRL
    FFBBBFFRLR
    FBFBFBFRRR
    FFFFFBBLLL
    BBFFBBFLLR
    FBFBFBFLRR
    BBFFFFFRRL
    BFBBFBBLRR
    FBBBBBFLRR
    BFFBBFFLRL
    BBFBFFFRRL
    FBFFBFFRLR
    FBFBFFBLRR
    FBBBFBFLRL
    FFFBBBBLRR
    BBFFFBBRRR
    FFBBBBFLRR
    BBFFBBBRRR
    FBFBFBFLRL
    BBFFBBBLRL
    BFBBFBBRLR
    FBBBFBFLLL
    BFFBFBBLRL
    BFFFFFFRRR
    BFFBBBFLLL
    FFBFBBFLRR
    FFFBFFBRLL
    FBBFFFBLLR
    FFBBBFFLRL
    BFBFBFBLRL
    BFBFFFBLLL
    FFBBBFFRRL
    BBFFBBBRLR
    BFBFFFFLLR
    BFFFBBBRRL
    BBFFBFBRLR
    BFFFBFBLLL
    BFFFBFFLLL
    BFBFFBFLRR
    BFFBBFBRLR
    BBFFBBFRRL
    BFBBFBBRLL
    FFBBBBBRRR
    BFBBBFBRRR
    FBFFBBFRRR
    BBFFBFBLLL
    BFFFFBBRRR
    FBBFBBBRRL
    BFFBBBFLLR
    BFBFBFBRRL
    FFBBFFFRRL
    BFFBBFFLLL
    FBBBBFFRRR
    BBFFFBFLRR
    BBFFFFFLRR
    FBFFFBBLLL
    FBBBFFFRLR
    FBBBFFFLRL
    BFFBBBFLRL
    FFBFBBBRLR
    FFBFFBFLRL
    FBFBFBFLLL
    FBBBBFFLLR
    BFFFFFFLLL
    FFFBBBFLRR
    FBBBFBBLRL
    FBBBBFBRLL
    BFBBBFFLRL
    BBFFBFFRLL
    BBFFFFFLLR
    FBBFBFBRRR
    FBFBBFFRRR
    BFFBBBFRLL
    BFFFFBFRLR
    FFBFBFBLRL
    FFFFBBFRRL
    FFFFFFBRRL
    FFFBFFBLRL
    BFFBBBBRLL
    FBFBBFBLRL
    BBFFFBBRLL
    FBFFBFBRLL
    FFBBBBBRLL
    FFBFBBFLRL
    FFFFFBBRLR
    FFBBFBFLLL
    FFFFFFBLRR
    BBFFFBFRRR
    FBBFFFBRLL
    FFFFBBBLRL
    BFFFFBFLRR
    BBFBFBFLLR
    BFFFFBFRRL
    BFBBFFFLLL
    FBFFBFBRRR
    BFFFBBFRLL
    BFFFFBBLRL
    FFFBBBFRRL
    FBFFFBFRRR
    FFBBBFFRLL
    BFBFFBBLLL
    BFBFBBBRRL
    BFFFFBFLRL
    FBBFBBBRRR
    FBBFBBFLRL
    FBBBFBBLRR
    FBBBFFBRRR
    BBFFBFBLRR
    FFBBBFFLLR
    BFBFBFFLLL
    FFBBFFBLLR
    FBFBBFFRLL
    FBBFFBFLRL
    FFBFBFBLRR
    FFFBBFBLLR
    FFBBFFBLRL
    BFBBBBBRRR
    BFBFBBFRLL
    FFBBFFFLLR
    FFBBFFBRLL
    FFFBBBFRLR
    BFFFBFFLRR
    BFFBFBBRLR
    BBFFBBBLLL
    FBFBFFBLLR
    FFFBBFFRRR
    BBFBFFFLLR
    FBBFBFFRLL
    FFBBFBBRLL
    FBBBFBFRLL
    BFBBFBBRRL
    BFBFFFFRLL
    BFFFBBBLRR
    FFBBBBBLRR
    BBFFFBBRLR
    BFFBBBFRRL
    BBFFBFBLRL
    BFFBBBBRRL
    """.components(separatedBy: "\n").compactMap{ String($0) }
    
    static let day05BoardingPassDebug = """
    FBFBBFFRLR
    BFFFBBFRRR
    FFFBBBFRRR
    BBFFBBFRLL
    """.components(separatedBy: "\n").compactMap{ String($0) }
    
    static let day04ValidPassports = """
    pid:087499704 hgt:74in ecl:grn iyr:2012 eyr:2030 byr:1980 hcl:#623a2f

    eyr:2029 ecl:blu cid:129 byr:1989 iyr:2014 pid:896056539 hcl:#a97842 hgt:165cm

    hcl:#888785 hgt:164cm byr:2001 iyr:2015 cid:88 pid:545766238 ecl:hzl eyr:2022

    iyr:2010 hgt:158cm hcl:#b6652a ecl:blu byr:1944 eyr:2021 pid:093154719
    """.components(separatedBy: "\n\n").compactMap{ String($0) }
    
    static let day04PassportListDebug = """
    ecl:gry pid:860033327 eyr:2020 hcl:#fffffd byr:1937 iyr:2017 cid:147 hgt:183cm

    iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884 hcl:#cfa07d byr:1929

    hcl:#ae17e1 iyr:2013 eyr:2024 ecl:brn pid:760753108 byr:1931 hgt:179cm

    hcl:#cfa07d eyr:2025 pid:166559648 iyr:2011 ecl:brn hgt:59in
    """.components(separatedBy: "\n\n").compactMap{ String($0) }
    
    static let day04PassportList = """
    byr:1937 eyr:2030 pid:154364481 hgt:158cm iyr:2015 ecl:brn hcl:#c0946f cid:155

    cid:279 eyr:2029 pid:675014709 ecl:amb byr:1985 hgt:179in hcl:z iyr:2025

    iyr:2011 hgt:181cm hcl:#341e13 pid:282499883 byr:1953 eyr:2023 ecl:brn

    eyr:2040 iyr:1984 pid:2371396209 byr:1951 cid:283 hgt:164cm hcl:#623a2f

    iyr:2014 byr:1966 hgt:153cm pid:900693718 eyr:2020 ecl:gry hcl:#866857

    eyr:2020 hgt:162cm byr:1939 pid:900852891 iyr:2020 ecl:oth hcl:#b6652a

    iyr:1956 hcl:2385ac hgt:167in ecl:#9b82e8 eyr:2003 cid:214 byr:2012 pid:483285062

    cid:146 byr:1938 hcl:#c0946f pid:136823471 hgt:180cm iyr:2011 eyr:2020 ecl:gry

    cid:100 hgt:187cm byr:1973 ecl:blu iyr:2020 hcl:#888785 eyr:2030 pid:386799181

    ecl:#dbba4f hcl:z iyr:2028 pid:193cm byr:2029 eyr:1962 hgt:113

    cid:269 byr:1928 pid:604152679 iyr:2017 eyr:2027 hcl:#c0946f hgt:189cm ecl:blu

    pid:653548437 hcl:z cid:166 iyr:2011 eyr:1967 hgt:162 ecl:xry byr:2019

    byr:1979 ecl:hzl iyr:2018 hcl:#7d3b0c eyr:2026 pid:981366150 hgt:151cm

    pid:055334062 cid:272 eyr:2025 ecl:grn iyr:2016 hgt:159cm hcl:#a97842 byr:1989

    eyr:2033 hgt:170cm ecl:brn pid:#299cf2 hcl:#602927 byr:2004 iyr:2023

    iyr:2020 cid:273 pid:038972962 hcl:#c0946f hgt:152cm eyr:2021 ecl:blu byr:1986

    pid:015622106 hgt:154cm iyr:2012 byr:1922 eyr:2028 hcl:#9dc667 ecl:blu

    iyr:2017 eyr:2025 hgt:179cm cid:324 pid:579870519 byr:1934

    hcl:#6b5442 eyr:2021 pid:104071480 ecl:brn hgt:162cm cid:89 byr:1949 iyr:2017

    pid:388871409 cid:163 hgt:190cm ecl:amb eyr:2022 iyr:2019 byr:1963 hcl:#fffffd

    cid:190 byr:1968 iyr:2018 hgt:155cm hcl:#6b5442 ecl:grn pid:891458997 eyr:2030

    hcl:z cid:103 iyr:2026 hgt:171 byr:1979 pid:076174078 eyr:2031 ecl:#fc4638

    hcl:#f8063e pid:684921958 ecl:gry eyr:2020 iyr:2011 byr:1958 hgt:189cm cid:131

    ecl:gry cid:90 iyr:2010 hgt:165cm pid:683095019 byr:1953 hcl:#341e13 eyr:2030

    pid:000303662 ecl:amb iyr:2014 hcl:#733820 byr:1964 hgt:184cm cid:149 eyr:2027

    hcl:#341e13 hgt:150cm byr:1999 eyr:2022 pid:950260967 cid:72 ecl:grn iyr:2012

    cid:159 byr:1987 hcl:#623a2f pid:144877169 eyr:2021 ecl:brn hgt:164cm

    pid:759578668 cid:235 ecl:amb hgt:154cm eyr:2023 byr:1941 hcl:#fffffd iyr:2023

    pid:18101245 hcl:z hgt:172in iyr:1947 byr:1956 ecl:grn eyr:1964

    eyr:1980 pid:#8d62b1 ecl:#3e8868 cid:235 iyr:1978 hcl:#efcc98 byr:2025 hgt:181in

    hgt:64cm hcl:3bc533 iyr:2019 byr:2015 pid:158cm eyr:2027 ecl:#1abbd7

    eyr:2020 iyr:2011 pid:739854643 byr:1941 hgt:179cm hcl:#602927 ecl:gry cid:330

    hcl:#a97842 iyr:2011 hgt:167cm pid:527353688 byr:1927 cid:256 eyr:2026 ecl:grn

    iyr:2011 pid:350783151 hgt:168cm byr:1961 ecl:amb hcl:#341e13 cid:181

    eyr:2025 hgt:160cm ecl:brn hcl:#cfa07d pid:136929481 iyr:2017

    ecl:oth byr:1994 iyr:2020 hgt:162cm pid:578918570 eyr:2027 hcl:#fffffd cid:325

    hgt:63in byr:1925 ecl:amb iyr:2014 cid:224 hcl:#341e13 pid:208286938

    ecl:#76434f hgt:97 hcl:z eyr:1968 pid:#871dc8 iyr:1955 byr:2007

    byr:2011 eyr:1962 hcl:9ac7b8 pid:6836105558 ecl:#d7084f iyr:2023 hgt:76cm

    eyr:2016 iyr:2030 hgt:107 pid:948192703 byr:2013 hcl:b80af7 ecl:#d47439

    eyr:2027 iyr:2017 pid:#27d2a6 byr:1921 ecl:brn hcl:#c0946f hgt:59in

    byr:1982 hcl:#ceb3a1 ecl:brn eyr:2020 hgt:63in iyr:2017

    ecl:brn hgt:152cm byr:1962 iyr:2013 pid:381950515 hcl:#2afabd eyr:2020

    hgt:158cm ecl:gry pid:252068098 cid:281 eyr:2023 byr:1950 iyr:2016 hcl:#ceb3a1

    byr:1922 hgt:187cm cid:74 hcl:#a97842 ecl:amb pid:045338811 eyr:2025 iyr:2019

    hgt:176cm eyr:2022 iyr:2019 byr:1938 ecl:blu pid:610286298 hcl:#a97842

    iyr:2028 byr:2025 eyr:2039 pid:72530856 ecl:#a819ad hgt:69 hcl:z

    iyr:2018 eyr:2030 hcl:#8b1e1f ecl:hzl byr:1971 pid:189005628

    pid:531154383 eyr:2020 hcl:#733820 ecl:oth hgt:72in iyr:2016 byr:1983

    hgt:178cm hcl:#623a2f pid:562756202 eyr:2020 byr:1929 ecl:oth iyr:2013

    iyr:2013 byr:1983 pid:510998389 ecl:gry cid:99 hcl:#a97842

    ecl:gry eyr:2026 cid:202 hgt:191cm byr:1981 pid:414853225 hcl:#7d3b0c

    hcl:#866857 byr:1951 eyr:2020 hgt:169cm pid:844496997 iyr:2016 ecl:brn

    pid:083641628 iyr:2019 eyr:2030 byr:1938 ecl:hzl hcl:#b6652a hgt:68in

    hcl:#18171d byr:1981 pid:425911593 cid:309 eyr:2026 ecl:brn hgt:168cm

    hcl:c84fda pid:#80d5e6 byr:1925 hgt:162cm iyr:2026 eyr:2036 ecl:#62c166

    pid:461660733 eyr:2028 hgt:167cm ecl:hzl hcl:#cfa07d iyr:2010 cid:183

    eyr:1930 byr:2021 iyr:2016 pid:163cm hcl:79428f cid:136 ecl:amb

    hcl:#efcc98 hgt:176cm eyr:2022 ecl:brn iyr:2013 pid:541033681 byr:1952

    hgt:59cm ecl:#d9b0bc pid:#3ab4b4 hcl:7aa29f eyr:2034 byr:2011 cid:266 iyr:2004

    byr:1991 hcl:#cfa07d cid:259 hgt:67cm eyr:2024 pid:631601343 ecl:brn iyr:2011

    byr:2020 ecl:gry iyr:1944 pid:421649652 hgt:107 hcl:6d8593 eyr:2026

    ecl:blu byr:1953 hgt:66in hcl:#888785 eyr:2021 pid:174284708

    ecl:#8f2c20 pid:27713962 iyr:2010 cid:149 byr:1952 hcl:#866857 eyr:2030 hgt:186cm

    eyr:2023 byr:1989 ecl:blu hcl:#18171d pid:480641 iyr:2020 hgt:74in

    hcl:#efcc98 eyr:2023 hgt:157cm byr:1968 iyr:2013 ecl:amb pid:436599087

    eyr:2021 hgt:175cm hcl:#efcc98 ecl:hzl pid:701245439 byr:1943 iyr:2015

    hgt:164cm pid:310546869 eyr:2021 hcl:#b6652a ecl:oth iyr:2011 cid:181 byr:2001

    byr:2016 hcl:94f4b9 eyr:1922 hgt:155cm ecl:hzl iyr:2009 pid:83440078

    iyr:2014 hgt:60in eyr:2031 hcl:#c0946f byr:1948 ecl:grt pid:117909137

    byr:1965 hgt:186cm iyr:2010 cid:117 hcl:#602927 pid:806868279 eyr:2029 ecl:grn

    ecl:amb hgt:187cm hcl:#c0946f byr:1935 cid:139 iyr:2019 eyr:2023

    pid:925865182 byr:1952 hgt:158cm hcl:#619e03 ecl:gry eyr:2026 iyr:2016

    iyr:2012 hgt:73in cid:199 byr:1959 ecl:hzl hcl:#fcd2f7 pid:268810283

    eyr:2025 pid:317239854 ecl:brn byr:1955 hcl:#fffffd cid:220 hgt:175cm iyr:2015

    ecl:blu byr:1939 hcl:#3332c0 iyr:2019 pid:832588457 eyr:2030 hgt:192cm

    hgt:64cm cid:326 ecl:oth byr:2025 eyr:2025 hcl:z iyr:2012 pid:0394683801

    ecl:amb byr:1966 pid:734257450 hgt:65in hcl:#fffffd iyr:2018 eyr:2025 cid:287

    cid:249 eyr:2034 ecl:#7b7bf5 byr:2009 pid:171cm hcl:709fe4

    hcl:d7c488 ecl:#b9bbb2 pid:55277333 cid:90 byr:2022 iyr:1978 hgt:69cm eyr:1981

    hcl:z byr:1949 pid:057966198 eyr:1941 iyr:2025

    hgt:168cm ecl:hzl hcl:#866857 iyr:2011 pid:052204052 eyr:2030 byr:1970

    pid:318707043 eyr:2029 ecl:hzl hcl:#888785 byr:1932 iyr:2010 hgt:166cm

    hcl:z iyr:2010 ecl:oth byr:2006 cid:120 pid:#15d5ef eyr:2039 hgt:73cm

    hcl:96c534 hgt:193in eyr:2036 byr:2008 ecl:#090691 cid:109 pid:603339169 iyr:2027

    iyr:2029 ecl:utc pid:5845500732 hcl:2a32b8 byr:2009 eyr:2040 cid:305 hgt:71cm

    byr:1994 iyr:2015 eyr:2026 hcl:#623a2f pid:678627790 hgt:176cm ecl:blu

    byr:2005 hcl:z ecl:zzz pid:#47729a eyr:2039 hgt:62cm iyr:1983

    hcl:#cfa07d ecl:blu iyr:2014 eyr:2025 pid:824483836 hgt:174cm byr:1933

    hgt:70in iyr:2010 cid:53 eyr:2023 pid:093704222 ecl:amb hcl:#a97842 byr:1945

    ecl:brn hcl:#602927 byr:1986 eyr:2029 pid:422160398 cid:134 hgt:156cm iyr:2020

    iyr:2014 hgt:187cm byr:1921 eyr:2022 ecl:amb

    pid:765750572 eyr:2021 ecl:hzl iyr:1997 hgt:66

    iyr:2016 ecl:blu cid:335 hgt:175cm pid:297297703 hcl:#b6652a eyr:2030

    hgt:64in hcl:#866857 pid:159cm byr:1972 cid:321 eyr:2021 ecl:brn iyr:2017

    pid:884038003 iyr:2016 hgt:188cm ecl:grn byr:1928 eyr:2027 hcl:#341e13

    pid:020315021 hgt:60in ecl:amb iyr:2018 hcl:#602927 eyr:2028 byr:1935

    byr:1946 eyr:2021 hcl:#efcc98 iyr:2015 cid:52 hgt:177cm pid:841348804

    ecl:gry eyr:2027 byr:1959 pid:482204272 hcl:#888785 iyr:2013

    hcl:#623a2f eyr:2027 iyr:2011 hgt:189cm pid:767923916 ecl:hzl byr:1987

    hgt:152in hcl:#efcc98 ecl:hzl eyr:2030 byr:1971 iyr:1978 pid:499148724 cid:194

    pid:#87513f hcl:e2a5de byr:2015 iyr:2016 hgt:155cm eyr:2024 ecl:gry cid:123

    byr:1977 iyr:2028 hcl:#888785 pid:69801913 eyr:2026 hgt:165in ecl:brn

    byr:1938 hcl:#efcc98 hgt:154cm pid:621714851 eyr:1972 ecl:gry iyr:2014 cid:161

    hcl:#a97842 hgt:184cm ecl:oth pid:009682326 cid:233 eyr:2023 iyr:2019 byr:1982

    hcl:#ceb3a1 pid:700761574 eyr:2020 byr:1940 iyr:2017 ecl:gry hgt:76in

    iyr:2017 cid:73 ecl:hzl hcl:#efcc98 pid:363441284 hgt:177cm byr:1924 eyr:2028

    hcl:#a97842 eyr:2023 byr:1989 pid:589573553 ecl:oth iyr:2017 hgt:162cm

    ecl:oth byr:2001 hgt:167cm hcl:#18171d eyr:2028 iyr:2015 pid:253666913

    byr:1943 ecl:amb hcl:#888785 pid:163cm iyr:2025 hgt:76 eyr:2026

    byr:1963 eyr:2030 hgt:158in iyr:2023 pid:399153486 hcl:#733820

    pid:43290252 hgt:167cm cid:302 iyr:2016 hcl:f81436 byr:1992 ecl:gry eyr:1922

    pid:487300118 hgt:167cm hcl:#888785 iyr:2018 ecl:oth cid:286 byr:1971 eyr:2021

    eyr:2036 hgt:94 byr:2013 cid:162 hcl:37408d pid:527721797 ecl:dne iyr:2022

    hcl:5e67df byr:1973 pid:48217944 hgt:65in eyr:2023 iyr:2001 ecl:gry

    hcl:717ef8 eyr:1996 pid:154cm ecl:#e2c90e iyr:2028 byr:2009 hgt:184cm

    iyr:2015 pid:549968053 hcl:#efcc98 hgt:151cm eyr:2025 byr:1993 ecl:gry

    hgt:165cm ecl:gry iyr:2020 byr:1927 hcl:#602927 pid:278946330 eyr:2027

    eyr:2031 ecl:#b01aae pid:151cm cid:188 iyr:2025 hgt:60cm byr:2015

    eyr:2028 pid:928740840 byr:1931 hgt:191cm iyr:2014 cid:305 hcl:#6b5442 ecl:oth

    hcl:#7d3b0c cid:283 byr:1923 ecl:amb pid:781290431 iyr:2019 eyr:2021 hgt:191cm

    byr:2027 pid:51702036 iyr:2028 hgt:165in ecl:gry hcl:z eyr:2036

    byr:1971 ecl:blu iyr:2012 pid:986042111 eyr:2021 hcl:#888785 hgt:68in

    hgt:183cm byr:2030 iyr:2013 cid:209 pid:989002507 ecl:hzl eyr:2028 hcl:59c2ce

    ecl:gry iyr:2020 pid:895856989 hcl:#888785 hgt:185cm byr:1964 eyr:2025

    ecl:gry hgt:183cm cid:97 hcl:#93be9b eyr:2021 byr:1995 pid:668647173

    hcl:#733820 eyr:2027 byr:1977 pid:242773849 hgt:184cm iyr:2017 cid:76 ecl:brn

    hgt:167 hcl:z byr:2012 eyr:2027 pid:590438786 ecl:hzl cid:101 iyr:1994

    iyr:2015 hcl:#888785 eyr:2024 ecl:blu pid:279218875 cid:178 byr:1944 hgt:74in

    ecl:oth cid:334 pid:169599381 hcl:#7d3b0c eyr:2028 hgt:172cm iyr:2010

    eyr:2033 byr:1973 cid:333 iyr:2019 hcl:z ecl:utc hgt:178cm pid:#e7abc0

    eyr:2026 ecl:blu cid:264 byr:1998 hgt:177cm hcl:#602927 pid:770052780 iyr:2019

    ecl:blu iyr:2016 cid:232 eyr:2023 pid:643597545 hgt:167cm byr:1986 hcl:#cfa07d

    pid:017818204 iyr:2017 eyr:2028 hgt:168cm hcl:#602927 byr:1931 ecl:oth

    byr:1984 ecl:grn hgt:191cm hcl:#efcc98 pid:408382086 iyr:2010 eyr:2025

    hgt:158cm ecl:#25e195 byr:1929 pid:0367744553 eyr:1957 iyr:2017 hcl:z

    hgt:168cm byr:1977 pid:006609828 eyr:2024 iyr:2015 ecl:amb hcl:#b6652a

    pid:635167847 iyr:2010 hcl:#18171d hgt:163cm ecl:grn eyr:2026

    pid:423029177 byr:1995 iyr:2014 ecl:hzl hgt:185cm hcl:#c0946f eyr:2024 cid:230

    pid:#3e3109 ecl:#a8a0aa iyr:2020 hcl:#733820 eyr:2021 byr:2010 hgt:179in

    iyr:2017 byr:1938 eyr:2022 hcl:#733820 ecl:amb hgt:157cm pid:162425330

    hgt:160cm cid:339 byr:1938 hcl:#341e13 eyr:2025 iyr:2015 pid:562755634

    cid:283 byr:1954 ecl:blu hcl:#ceb3a1 hgt:169cm iyr:2013 pid:616439723

    pid:830940520 eyr:2022 byr:1981 hgt:193cm hcl:#18171d iyr:2013 cid:117

    hcl:#866857 iyr:2019 ecl:hzl byr:1962 hgt:72in eyr:2020

    byr:2015 pid:4530685490 ecl:#c7604e hcl:z hgt:151 eyr:1972 iyr:1948

    pid:0800674852 hcl:z ecl:#2a275e hgt:61cm iyr:1950 eyr:1938

    iyr:2028 eyr:1998 pid:#c604ca hgt:122 hcl:z ecl:dne cid:160 byr:2018

    hcl:z cid:67 iyr:2029 byr:1973 ecl:amb eyr:2030 hgt:66

    ecl:hzl pid:483557353 eyr:2021 hgt:172cm iyr:2011 hcl:#888785 byr:1963

    eyr:2030 ecl:brn hcl:#fffffd byr:1969 hgt:161cm pid:632930895 iyr:2017

    iyr:2015 byr:2000 pid:525557240 hgt:156cm eyr:2029 ecl:brn hcl:#64bf85

    byr:2007 iyr:2012 eyr:2029 ecl:#7c1d6f pid:612320497 hgt:165in

    eyr:2026 ecl:grn cid:93 hcl:#888785 hgt:134 pid:745552484 iyr:2019 byr:1999

    byr:2001 pid:984678649 hgt:173cm ecl:oth iyr:2012 cid:345 hcl:#fffffd eyr:2028

    hcl:#341e13 pid:308853935 byr:1972 hgt:160cm iyr:2012 eyr:2026 ecl:amb cid:97

    hcl:z hgt:151 ecl:grn pid:132866718 iyr:2021 byr:1932 eyr:2024

    eyr:2027 byr:1923 ecl:oth hgt:174cm hcl:#733820 pid:099185839 iyr:2017

    iyr:2017 ecl:gry byr:1941 hgt:74in pid:540930352 hcl:#888785 eyr:2023

    hgt:161cm cid:277 hcl:#866857 byr:1928 eyr:2030 ecl:blu iyr:2020 pid:358953579

    hgt:155cm eyr:1930 iyr:2015 ecl:utc pid:163cm byr:2008 hcl:#733820 cid:156

    byr:1946 hgt:164cm cid:234 iyr:2015 pid:168804387 eyr:2025 ecl:hzl hcl:#a97842

    hgt:184cm hcl:#7d3b0c byr:1996 cid:193 iyr:2011 ecl:amb eyr:2030 pid:940497049

    hcl:#733820 iyr:2016 hgt:168 eyr:2020 cid:118 pid:9871436 ecl:gry

    pid:416683862 hgt:162in hcl:#602927 byr:2027 eyr:2027 ecl:gmt

    ecl:#771e11 iyr:2024 cid:81 pid:741843390 hcl:#866857 byr:2012 eyr:1964 hgt:157in

    pid:720946735 byr:2002 hcl:#18171d iyr:2026 hgt:70cm ecl:brn eyr:2025

    byr:1987 hcl:#623a2f hgt:165cm pid:087526326 ecl:grn iyr:2017 eyr:2021

    byr:2014 hgt:193cm iyr:2018 hcl:z eyr:2027 pid:792398819

    cid:233 hcl:z ecl:#18002d hgt:174cm iyr:2027 eyr:1944

    pid:142615460 ecl:blu eyr:2021 hcl:#c88693 iyr:2017 cid:182 hgt:152cm byr:1966

    hcl:z hgt:65cm eyr:1944 ecl:dne byr:2029 pid:1066768764 iyr:2015 cid:149

    hcl:z pid:25144284 hgt:152in byr:2009 cid:276 eyr:2037 iyr:2010 ecl:gmt

    cid:88 hcl:ed6b8a ecl:xry hgt:178in pid:36832491 byr:2020 iyr:2012 eyr:1993

    byr:1972 iyr:2009 pid:324213657 hgt:160 hcl:z cid:259 eyr:2021 ecl:grn

    hcl:#7d3b0c pid:164496070 eyr:2024 ecl:brn hgt:165cm

    pid:955035528 byr:1967 eyr:2021 iyr:2015 hcl:#fffffd hgt:156cm cid:237 ecl:blu

    hcl:z eyr:2038 iyr:1973 ecl:grt hgt:193in pid:41385449 byr:2011 cid:119

    byr:1934 pid:713339056 hgt:157cm cid:250 iyr:2016 ecl:blu hcl:#866857 eyr:2026

    hgt:186cm byr:2012 eyr:2022 iyr:2013 hcl:#733820 pid:226693031 ecl:hzl

    cid:118 pid:56750275 hcl:#cfa07d iyr:2028 eyr:2033 byr:1933 hgt:166cm

    byr:1973 ecl:hzl hgt:167 hcl:z iyr:2015 pid:70648423

    byr:1929 iyr:2012 pid:083005744 ecl:brn hgt:162cm eyr:2024 hcl:#cfa07d

    hcl:#623a2f hgt:174cm eyr:2026 iyr:2020 ecl:grn byr:1981

    cid:236 byr:1979 iyr:2013 ecl:amb eyr:2030 hcl:#6b5442 pid:768869830

    hcl:#341e13 byr:1998 iyr:2020 pid:857980686 ecl:hzl hgt:175cm eyr:2028

    hgt:169in cid:305 eyr:2023 ecl:gry pid:833031763 hcl:#ceb3a1 iyr:2015 byr:1974

    pid:370671195 hgt:162cm iyr:2018 ecl:oth byr:2001 hcl:#7d3b0c eyr:2021

    eyr:2026 ecl:brn cid:288 hcl:#866857 iyr:2010 byr:1922 pid:309109383

    byr:1949 iyr:2015 pid:832774982 eyr:2029 hgt:182cm hcl:#b7144c ecl:amb

    eyr:2029 iyr:2020 hcl:#c0946f pid:953788134 byr:1954 hgt:167cm

    pid:981508704 eyr:2023 iyr:2013 hgt:66in cid:68 hcl:#fffffd byr:1996 ecl:oth

    iyr:2011 byr:1932 cid:232 eyr:2030 hcl:#c0946f hgt:169cm pid:994763987 ecl:hzl

    ecl:gmt eyr:2031 hcl:z byr:2006 cid:86 hgt:59cm iyr:1998 pid:#349a7f

    hcl:#7d3b0c iyr:2013 pid:549500594 eyr:2024 byr:1971 ecl:oth hgt:153cm

    iyr:2015 byr:1940 pid:798926275 eyr:2027 hcl:#cfa07d hgt:158cm ecl:amb

    ecl:brn pid:077141823 eyr:1945 iyr:2023 hcl:#602927 byr:1956 hgt:152

    iyr:2022 byr:2007 hcl:f87f81 pid:8404831740 eyr:2033 hgt:170cm ecl:gmt

    iyr:1958 ecl:dne hcl:840fbe cid:55 eyr:2032 pid:19403738 hgt:170cm byr:2029

    ecl:brn pid:864743117 eyr:2025 hgt:188cm byr:1934 hcl:#623a2f iyr:2011

    iyr:2010 pid:877675472 hcl:#7d3b0c eyr:2027 byr:1954 hgt:182cm ecl:oth

    iyr:2015 hcl:#a97842 pid:719192774 ecl:brn byr:1993 hgt:186cm

    eyr:2021 hgt:176cm pid:395161956 hcl:#602927 ecl:grn iyr:2020 byr:1972

    hcl:#fffffd hgt:167cm byr:1945 ecl:grn iyr:2017 eyr:2026

    hcl:#6b5442 ecl:gry cid:208 hgt:155cm iyr:2010 byr:1933 pid:040244553 eyr:2029

    iyr:1960 cid:281 ecl:#8f7c45 hcl:z pid:11609858 eyr:1955 hgt:150in byr:1985

    hgt:150cm byr:2002 hcl:#fffffd pid:337375886 iyr:2011 ecl:amb eyr:2037

    iyr:2014 ecl:oth hgt:155cm hcl:#866857 eyr:2025 pid:614859979 cid:338 byr:1952

    hcl:#623a2f hgt:156cm iyr:2010 ecl:amb byr:1997 cid:285 pid:225568504 eyr:2020

    iyr:2021 hcl:#ceb3a1 ecl:#d6db5a pid:185cm eyr:2020 cid:130 byr:2009

    byr:1956 cid:245 iyr:1954 ecl:dne hcl:#341e13 eyr:2040 hgt:71cm pid:838134394

    eyr:2027 byr:1994 ecl:amb iyr:2014 hgt:168cm cid:278 hcl:#602927 pid:758176176

    hcl:#941519 ecl:gry eyr:2030 byr:1921 pid:9477831046 iyr:2018 hgt:189cm

    cid:339 hcl:#6b5442 byr:1972 ecl:oth iyr:2014 hgt:183cm eyr:2020

    cid:165 eyr:1926 hcl:#6b5442 iyr:1956 hgt:65cm byr:2029 pid:9240052093 ecl:xry

    ecl:grn eyr:2027 hcl:#fffffd byr:1975 iyr:2011 hgt:177cm pid:825090410 cid:121

    byr:1934 hcl:#733820 pid:133141914 eyr:2027 hgt:66in ecl:amb iyr:2010 cid:262

    iyr:1951 ecl:#bb9733 hcl:89fcbf byr:2018 pid:#13265f hgt:85 eyr:1977

    hcl:#324bed ecl:hzl hgt:155cm iyr:2013 byr:1942 eyr:2021 pid:758516520

    ecl:gry pid:#567782 iyr:2015 hcl:276a6d eyr:2028 hgt:60cm byr:2005

    hcl:#18171d hgt:191cm eyr:2030 ecl:grn pid:748729106 byr:1922 iyr:2017

    byr:1984 hcl:#733820 eyr:2020 iyr:2013 hgt:64in pid:444446114 ecl:hzl

    byr:2006 ecl:dne iyr:2029 hcl:z eyr:2023 hgt:68cm pid:131910019

    iyr:1976 hcl:45191a eyr:2017 hgt:68cm ecl:oth pid:153cm byr:1968

    ecl:gry byr:1959 eyr:2023 pid:781945569 iyr:2015 hcl:#ceb3a1 hgt:167cm

    hgt:151cm byr:1959 hcl:#7d3b0c cid:76 pid:069205247 ecl:gry eyr:2029 iyr:2013

    pid:055193304 hcl:#fffffd hgt:67in ecl:grn iyr:2011

    eyr:2026 byr:1975 pid:681437369 hgt:173cm hcl:#a97842 iyr:2017 ecl:brn

    pid:298214774 hgt:158cm ecl:hzl hcl:#866857 byr:1993 iyr:2013 eyr:2028

    hcl:#b6652a eyr:2023 pid:879418046 hgt:193cm iyr:2014 ecl:brn

    hgt:164cm eyr:2028 hcl:fbd462 ecl:gry iyr:2011 byr:1938 pid:029003659

    byr:1999 hgt:171cm eyr:2024 cid:195 pid:041799326 ecl:gry iyr:2012 hcl:#a97842

    byr:1963 pid:7471206322 iyr:2015 ecl:brn hcl:#623a2f hgt:72cm cid:63

    byr:1961 ecl:hzl hcl:#efcc98 pid:617022365 eyr:2020 hgt:155cm iyr:2018

    pid:385763432 byr:1977 cid:228 hcl:#733820 eyr:2020 hgt:163cm ecl:grt iyr:2015

    byr:1979 hgt:186in eyr:2037 ecl:dne iyr:2025 hcl:d93e3e pid:187cm

    iyr:2018 cid:158 eyr:2020 byr:1929 pid:334374178 hgt:181cm hcl:z ecl:grn

    cid:135 ecl:oth hcl:#623a2f iyr:2017 eyr:2024 byr:1940 hgt:66in

    cid:92 eyr:2026 hcl:#888785 pid:827526879 byr:1990 hgt:186cm ecl:amb iyr:2014

    pid:575519103 iyr:2016 byr:1964 hcl:#7d3b0c cid:252 hgt:172cm

    hcl:#c0946f ecl:grn hgt:75in eyr:2021 pid:426544544

    cid:171 byr:2004 hcl:z hgt:191cm eyr:2028 pid:#292b3b ecl:brn

    iyr:2016 ecl:hzl byr:2007 hgt:167cm hcl:#653b4c cid:124 eyr:2022 pid:#27024c

    hgt:177cm byr:2025 hcl:z cid:303 iyr:2016 eyr:2000 ecl:dne pid:345555418

    eyr:2040 hcl:70fbf6 cid:318 byr:2027 iyr:2022 ecl:#3a037c pid:644624005 hgt:62cm

    ecl:brn iyr:2016 hgt:150cm pid:680594195 cid:324 hcl:#602927 byr:1944

    hcl:z eyr:2022 byr:2020 cid:112 ecl:dne iyr:2029 pid:#3a3560 hgt:153in

    cid:86 ecl:gry byr:1972 hcl:#866857 pid:758976621 hgt:188cm

    pid:#850e8b eyr:2025 hgt:163in ecl:#71e9e2 hcl:#623a2f

    ecl:amb byr:1958 hgt:193cm pid:343803154 iyr:2010 eyr:2029 cid:86 hcl:#602927

    hgt:178cm byr:1987 ecl:blu hcl:#866857 iyr:2017 pid:222443921 eyr:2027

    byr:1964 iyr:2001 hgt:180cm eyr:1945 hcl:#fffffd pid:305189916 ecl:#ac3c49 cid:142

    byr:1979 hgt:166cm ecl:brn cid:202 hcl:#5311ca eyr:2028 pid:874418818 iyr:2014

    hgt:161cm byr:1987 ecl:grn hcl:#6b5442 pid:986096798 cid:74 eyr:2027 iyr:2019

    byr:1964 iyr:1979 eyr:2022 ecl:#77ada3 hcl:#733820 cid:56

    hgt:185cm iyr:2010 pid:214991920 eyr:2023 cid:236 hcl:#866857 ecl:brn byr:1965

    pid:885169578 iyr:2010 byr:1948 ecl:hzl hcl:#18171d eyr:2025 hgt:175cm

    ecl:oth pid:34655368 hgt:186 byr:1968 hcl:2653c9 eyr:2030 iyr:2024

    eyr:2022 iyr:2015 ecl:gry hgt:65in byr:1994 pid:766704860

    hcl:#c0946f cid:104 iyr:2015 pid:739274357 ecl:#ef45c8 byr:1960 hgt:61in eyr:2026

    pid:849044092 eyr:2020 hgt:186cm iyr:2014byr:1991 hcl:#866857

    hgt:159cm iyr:1950 eyr:2021 pid:325442644 hcl:#888785 ecl:gry byr:1986

    eyr:2023 hgt:188cm iyr:2014 pid:945115479 byr:1979 ecl:blu hcl:#b6652a

    eyr:2024 cid:274 pid:390115952 byr:1934 hgt:161cm iyr:2017 hcl:#b95b0d

    ecl:#a16ec8 pid:187cm hcl:z iyr:2029 hgt:170 byr:2008
    """.components(separatedBy: "\n\n").compactMap{ String($0) }
    
    static let day03TobogganTrajectory = """
    ........#....#..##..#...#.....#
    ...............#....##........#
    .#....##...##..#...............
    .#.......#......#.##..##...#...
    .....#.#....#..##...#.....#....
    ...#.#..##...###......#..#..#.#
    .....#..##........#.##......#..
    ..##.....###.........##........
    ..............##..#.#.#.#......
    .#....##..#.##.#....#..#.#..#..
    .#.#....#.##.#...#....#.....#..
    ..#...#.#.....#....#.......##..
    .#.#..##.....#...........#.....
    .#.##...#.....#......#.##......
    ..#..#..........#.....#..###.#.
    ##....##....#.#...........#..#.
    .....#.#.......#.#.#..#.##....#
    ...##.#....#..#.....#.........#
    .....#........#.##...#.........
    .....#................#.#...#..
    ...#....##.....##....#.......#.
    ....##.#.....#.#.......#.......
    #...............#..#...........
    .......###.#.......#.##....#.#.
    ..#........###........#......#.
    .#.......#...##.....####....##.
    ..##.#....#.....#..#....#......
    ..#...#..#.#..##...#.....#.....
    .#.......###.......#....#......
    ...#...#.......#........#...#.#
    ..#....#...#.......#.#..##.....
    ##............#.#..#..........#
    .......###...##..#.....#....#..
    ##..######.#..#.......###....##
    ###..#...#.##......##....#...#.
    ..............##.###..........#
    .....#........##.#.###....#....
    ..#...#.....##.#......#.#..#.#.
    #....#.............#.#.........
    .........##.#........#...#.....
    ..........#..##.#.#.....#..##..
    ........##......#..#..#...#.#..
    .##.......#..#.#...#.####..#...
    ##...#........#.###...##....#..
    ....###.####...#..#..#......###
    #....#....#.#.....##.........#.
    #.......#....#....##...........
    ##...##.#.......#....#...#....#
    ....#....#........##..#.#..#.#.
    ..##.....##...#..........#...#.
    .#.#.#...#.....##..#........#..
    #....#.....#..........#....#...
    ...##.#.......#.#.........#....
    ##.##.........##.....##.....##.
    ##.#..##..#...##........##.....
    .........##.......#....#...#...
    .#.....#........####.#.#.....#.
    ...........##..#.###...........
    ..#....##....#...#.............
    #.#............#.......#.......
    .##........#...#..##.....#.#...
    #.##..............##..##.......
    ##.........#......#......#..#..
    ##.#....#...#....##....#..#.##.
    ......#...#..#.#...#.#....#.##.
    ##.......#.....#.........#.....
    ...##...#................#.#...
    ....#.####...#.#.....##....##.#
    #...#..#.#.##................##
    .........##.....##...#..#......
    ......####....#.##.#.....#.....
    ...#..#.#....#.#.#..#..........
    .....#........##...#.##....#.#.
    ..##......#...................#
    .....#..#...............#..#...
    ....#........#..#.#...##...#.##
    ..#.#.......#.##.........#...#.
    ...##......#.#.................
    .#....#...#.............##.#...
    ........#.##...#..#...###.....#
    #....#.#........##....#......##
    .###.......#..#..........#..#..
    #....#..#....#........#...#...#
    ##.#.###.##.#...##.#......#.#.#
    #..#..#..##........#..###.#...#
    ....#..#..#.....#...##....#...#
    .......##.......#..#.##...##..#
    .##....#..###................##
    #...#.##.##...#.##......##.....
    ...##.....##..##...#..#........
    ...............##.....##.......
    .#..#.#..#....#.....#..#...#...
    .#....#..#........#.#...#.....#
    ##.....####..#......#..........
    ........#.........#.........#..
    #...####....#.##...#....#...##.
    .#....####..#...##..#......####
    ...........##.##..#.##...##....
    ..#..#.......#.##....#.#...#.##
    #...........#..#...............
    .......#.##..#.....##......#...
    ....##.#.##.....#...........#.#
    .............#.##..#...#......#
    #......#...........#........#..
    #.#..#.............#...#.......
    #.........##...#....#...##.....
    ##...#..#..#..#....#...........
    .#.....#........#.....#.##..#.#
    ...#..............##.####.#..#.
    ##.....#..#.#..#..##...........
    ...#...#.......#...............
    ..#..................###..#..##
    ....###..........#.#..#...#.#.#
    ..#..#..#.#..........#.#......#
    ....#....#.#...#.###...##..#...
    ....#.......#...#....##........
    .#.....#.......###....#........
    ....#..#..#.....#......#.......
    ......#...#..#....#.#.......#..
    .##.#..#...#.#.#...........#...
    ..#....##.#....#.#....#...#.#.#
    ...##..#.......#....#.#.....##.
    ##.#......#.#.......##...#.....
    ......#...#.##..............#..
    .##.........#......##.#..#....#
    #.......#.....#...##...#..#...#
    ..#..##.......#......#......##.
    #..##...###.#.#...........#....
    ##......#.....####..#..#....#.#
    .......##...##.#...#...........
    ....#..#.##.#.....#.#....#.#...
    ....#.....#.....####...#..#.##.
    .##..#..#..###...#....#.##.#.#.
    ..#.#.##..........##...........
    #.##.#.#....#.##....#..#...##.#
    #...#....#...###....#.......#..
    .......#..#............#.......
    ................##.#.#.....#..#
    ..........................#....
    .##....##...#.#....####..#....#
    ......#...#....#...#.##..###.#.
    .........#............#.......#
    .#.#..#........#..#.........#..
    #..#...#......#.#....#..#.#....
    ...........#.................#.
    .#.#..#...##..###......##....##
    .#.#.##......####.........##...
    ..#....#.#..#................#.
    ##.......#....#.........##.#.#.
    ##..#.###...........#..#.#..#.#
    ...#............##.#....#......
    ...#................##.#..#....
    ....#..##.#...#.#.....#.......#
    ......#......#.#........#..##..
    ...##...#.....#.##.......#.....
    ##...#...#.............#..#....
    ..#...##.....#..........#..#.##
    #.##...#..................#.###
    .........#..........#.###...#.#
    #..#.....#.#.#....#......#...#.
    .............#.##..###.....#.##
    ..#..#.....#..#.............#..
    .#.....##.#.#..#.........#.....
    ..#.......#....#.....##.#......
    .#.........#..#....##...#.##...
    .##..##................###....#
    .#..##..............#...#......
    .#..............#.##....##.....
    .#......#..#..##..#...###.....#
    ................##...#.#..#...#
    ##.#.......#...................
    ....#.#.......#..#.##..........
    ....###............##...#......
    .......#....#.#.....##.#.....#.
    ....#...............#.#........
    ..#.##....#.#.#......##..#.....
    .##......#...#.#..#..#.......#.
    ....#...#........#.#..##.......
    .##...###.#....#..........##..#
    ..#.......##..#.....###......#.
    ...#.#..##.#.#...........#.....
    ##........#.#..##.........#..#.
    .....###.......#..#.#.....##.#.
    ..#...##.#..............#......
    ......#...#...............##.#.
    ##...#..#....#...#.####.##.....
    ...#............#.##...........
    ...#........##.#.##.......#....
    ...#..#..##....#...#......#..#.
    #.....#..#......#.#.....##.#.#.
    .....#.##......#...#..#..###..#
    ...........##..##.#.#..........
    ...#........##........##..##.#.
    ......###...#.....#..###.#..#..
    #.....#.#....#...##....##.....#
    .##....#......#.....#.#..##.##.
    ##....###.......#...##.......##
    ...##......#....###............
    ..#...#...#.#..#..........##.#.
    #.#.###...#..#.....#....#.###..
    ..##.....#.#.#.......#.........
    ...####..#....#..#.........#...
    .##...........#.##.#...#.#.##..
    ...#.#....#.##......#........#.
    ##....##....#..#...#..#.#......
    #......#..#...#...#.#.#.#.####.
    ....##.#.#.....#.###........#..
    ....##..#.#.#.#....#....#.#..#.
    ..#.###..#............##..#.#..
    ...#...#..#...#.#.#.....#.....#
    ..........#.....#..#.......##.#
    ..............##...........#...
    .......#.....#...#.....#.....#.
    .#.###.....##......##....#...#.
    .....#.........#.#....#........
    ..#.#....#.##...#.##....##...#.
    ...#......#.#.....#.......###..
    #.##....##.....#.#.#...#......#
    #..#...#..........#.........##.
    ....#.#.#.#.....#...###........
    #.#..#...#......#...#.##...####
    .#...#......#....##...#........
    ..#.........#............#...#.
    ##......#..#...#....#.##....#..
    .#...##..#..##.#.#.#........#.#
    .##.........###...#......#..###
    ...##.....##..#.#.........#....
    ...........##........#...#.....
    ..##..#...#..#..#.....#......#.
    ..#..#.#....#.....#..#.##...#..
    #....#........##..........#.###
    ......#...#...#....#...##.#....
    ...#......#.#.....##......##...
    #....#..##............#....#.#.
    ...#...##.#..........##........
    ......#.###......#...#.#.......
    ..................#.##..#..#..#
    ....#.....#...#.....#...#....#.
    .#....##.#..#..#.....###.##...#
    #.......#..#....##.##.#.....##.
    ..##........##...#.....#....##.
    #.........#...........##.#.....
    .#....#.#...##..###..........#.
    ....##..##....####...#......#..
    ##.##..#..#....#....####...#...
    ..#...............#.##.........
    ...#.#....#..#....#......#.....
    .#..#...#........#...#.....##..
    #.....###.......#.....#........
    ...#.##..#.......#....#........
    ....##..###.##...#.#....#.#....
    #.####...#.......#.....#.#....#
    #.......#......#.......#.#.#...
    ##....#......#..#...#..#..####.
    .##.....#........#..#...#......
    #.#.#....#....#...#.##..##.....
    ....#..#.........###.##.##.....
    ...##...##.###..#..##.....#.###
    ..###.......................#..
    ......##..#.#.........#......#.
    .###......##....#.....#.......#
    .....#..#..##........#......##.
    ..##.....#....#.#.............#
    ..##.........##.#..#.........##
    ......#......#.#......#........
    .#...#..#......##...#..#....#..
    ...............###............#
    #.####.#....#...#...........#.#
    ............................#.#
    .#..#...#.#.#.###..##.....##...
    ....##...#.................##..
    ......##....#...............##.
    .#......#.##.#..#.....##...##..
    .............#........#......#.
    #..........#.#....#####.#...#.#
    .#.#...##..#.#...#.#..#.#..#...
    #.##.......##......#.#.#....#..
    ##.....##.#.#.##..........##..#
    ....##..#.#.......#....#.##....
    ..#.#.#...#.....#.......#......
    .#....#..#...........###.......
    #.#...#.....#......#...#.....#.
    #........#.#..........#...#.#..
    ...#...#....#.........#........
    .....................#..##.....
    ...#......##........#.##.#.#.##
    .............###...#.#...#..#..
    .#..##........##....#...###..##
    .#..#.#...............#.....##.
    ...........##.#....#..##.#....#
    .##.#.#..#.#..#...#.#.#..#.#.##
    .......#.#..#..#..#..#...#.....
    .#......##............#.#..#...
    ..#...#..##..#..#...##......#..
    ...##......##....#............#
    .......#.....##...##.#...#..#..
    ......#.......#..##.........#..
    ..#...#.#.....#.#.......#.#...#
    .#......##.##.#.#.#.##..#....##
    #.....#.........#.#....#....##.
    .......#.........#....#..#.#.##
    .....##....#..#.#.#...#.....##.
    #####.#.......######......#....
    ..##.#.......#.#..............#
    ..#.##....#.....#...#.#...##...
    .....#...#..#....#.#..#........
    .#....#.#..#.#.#.##..#.......#.
    ....#..#..#..........##...#....
    .......#.#......#........#.....
    ##.#.#.###....##.#..#..#....#..
    #.##......#..#.......#.#...#...
    ..##...#.......#.......#...#...
    ........##.........#.#....#.#..
    ..#...#..##.#.#.#...#....#.....
    .###......#........#....#...#..
    .#.......##......###..##.......
    #....#.#....#.##.........####..
    ......#..........#..##.....#...
    .............#......#..##.#....
    ...................#....#...#..
    .#..........#...#.#..##...#....
    .....#...#..........##.##......
    #...#..#.##........#...#.......
    """.components(separatedBy: "\n").compactMap{ String($0) }
    
    static let day03TobogganTrajectoryDebug2 = """
    ..##.......
    #...#...#..
    .#....#..#.
    ..#.#...#.#
    .#...##..#.
    ..#.##.....
    .#.#.#....#
    .#........#
    #.##...#...
    #...##....#
    .#..#...#.#
    """.components(separatedBy: "\n").compactMap{ String($0) }
    
    static let day03TobogganTrajectoryDebug = """
    ..##.........##.........##.........##.........##.........##.......
    #...#...#..#...#...#..#...#...#..#...#...#..#...#...#..#...#...#..
    .#....#..#..#....#..#..#....#..#..#....#..#..#....#..#..#....#..#.
    ..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#
    .#...##..#..#...##..#..#...##..#..#...##..#..#...##..#..#...##..#.
    ..#.##.......#.##.......#.##.......#.##.......#.##.......#.##.....
    .#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#
    .#........#.#........#.#........#.#........#.#........#.#........#
    #.##...#...#.##...#...#.##...#...#.##...#...#.##...#...#.##...#...
    #...##....##...##....##...##....##...##....##...##....##...##....#
    .#..#...#.#.#..#...#.#.#..#...#.#.#..#...#.#.#..#...#.#.#..#...#.#
    """.components(separatedBy: "\n").compactMap{ String($0) }
    
    static let day02PasswordListDebug = """
    1-3 a: abpde
    1-3 b: cdefg
    2-9 c: ccccccccc
    1-4 a: aboae
    """
    
    static let day02PasswordList = """
    9-12 q: qqqxhnhdmqqqqjz
    12-16 z: zzzzzznwlzzjzdzf
    4-7 s: sssgssw
    13-14 p: pppqzpppppppfpppp
    2-9 m: jknmmmmmmdmmmrm
    4-5 b: bbbrb
    2-10 c: hcpzpjclzc
    7-11 f: ffpffffgfrff
    4-5 j: qrrhjt
    13-14 m: wfwvfxmchplldvm
    8-9 l: lllllllll
    5-9 v: knvvwptdvmchnkd
    1-7 s: sssssqsss
    6-14 j: jjjjjbjjjjjjjp
    6-8 c: cccccqzf
    9-18 h: hhhhchhdhghhhhhhhhch
    2-3 s: bssswhs
    3-4 c: bhtg
    10-13 b: bbbbbbbbbbbbmb
    15-16 l: lllllllmlllllllll
    3-4 m: dwmmcmn
    2-5 h: vqnbh
    10-13 n: nnnnnnnnnnnnln
    12-13 g: vxgggggggggggggg
    4-5 h: hfhxlhh
    6-16 k: xztrkkzkkkkhpksg
    7-12 f: fpcffnfffdfwf
    2-4 h: hwhk
    7-8 p: pkpdppsgkt
    2-4 r: rgvp
    10-11 w: wwwwwwwwwwn
    1-14 w: wwwwqwwwwwznwtzm
    1-2 j: jjnjrsjjhjnv
    19-20 c: cccccccccccccccccctt
    1-7 h: hrhwhhxfh
    2-3 p: whgpp
    4-9 l: jqllllsllf
    9-15 f: zffffffrtffffrpzxf
    8-9 t: tdtttttgtt
    19-20 l: sxspchxnngfcflghrmkl
    8-10 c: xjxcccccbc
    14-17 g: gggggggggggggmggp
    17-19 w: wwwwwwwwwwwhwlwwgwv
    2-4 v: vjvv
    1-10 d: dffqltgzzdjdmhlddlfd
    12-19 v: vzlvjvqvvlvvvwcrdvk
    6-11 t: tttftttttttttg
    5-9 g: dggwngggrg
    2-9 w: ptbhsgwnrt
    2-12 t: stjpthvlcnxt
    4-6 d: wrhdbdddpdcd
    8-10 n: wxnnnnnnncpnd
    8-9 w: njdxwzdxw
    11-17 q: rcjrfcqqxdkgqfqgf
    7-11 t: tjvgkgttlstlstvrn
    2-9 z: zjvbcdszczzp
    5-13 g: kkhxgrqngnwjgfdvd
    1-5 f: fffff
    5-8 t: tttktttttt
    6-7 p: tgksxzb
    5-6 c: qcgccc
    4-8 x: hghpslxx
    2-7 t: tvrwtmb
    7-15 p: zpnqpjpzpgcpppppqrtp
    10-18 z: zzzzzzzzzzzzzzzzzb
    5-10 t: kdmmtrckrtnhtvcfng
    5-10 f: fzffffwfpfwftgflwp
    12-16 c: fqkzccmnzhncbpch
    2-11 t: ttdtctzttwttgktmt
    10-11 l: mlplhlntmlkllllllhl
    2-3 j: jjjqtcdc
    2-3 b: kbcb
    13-14 q: qlqzqqbcqhqqqq
    12-14 b: bbbbbdkbbbbmbxbbn
    8-18 p: wpzprzkkptvtpppnftp
    6-12 k: fgkldkhkkcwkrck
    5-6 j: srjjjjjjj
    2-3 c: jhtc
    3-4 q: qgdq
    3-8 h: jphphhhh
    5-6 w: wwwwvwn
    5-10 r: jrrskrrgfgvtkrr
    2-5 w: bmxlkkbtcdwc
    2-7 t: ltlmxttdqsnh
    17-20 z: zzzzzzzzzzzzzzjzzvzt
    15-16 x: fxxxjxrrtdxdxxlz
    4-8 q: fqtqzqkbq
    15-16 w: wpzfvjnqpfrdlsgj
    3-18 r: mprntrrzkfpkhxfzcg
    19-20 j: jjrjjjjjjjjjjjjjjjph
    3-5 s: ssfsw
    3-17 h: nkczlnhhbmdqmklvw
    2-7 x: slxkcxlqtwxjwjf
    4-7 f: bwfgkffzfw
    1-6 q: ssqqqnq
    15-17 g: vjgpghvmcpghgxztl
    11-14 f: sfffffbffgffffsffl
    12-16 c: cccccccccmczccccc
    15-18 w: wwwwwwwwwdwwwwwwwww
    3-4 b: bkbb
    4-8 t: ttrjmmsgbbtt
    17-19 c: ccccccccccccccccwccc
    10-12 x: xsxxxxxxtkxxxx
    12-15 n: nlnnsnnnnnncpnm
    6-9 h: hhhkhknxcrhhphzmtjr
    2-4 m: mngs
    1-6 n: cnnnbn
    4-6 v: vvvxvm
    5-13 w: qcftwjctgcvsbwgm
    2-3 s: ssvss
    15-16 f: vffqbhffffcfffrn
    2-7 n: hnnhtnvpmxcqdnnf
    3-4 t: tntct
    8-9 k: qpkwkkzkk
    9-11 z: pzznzzzzcsvc
    2-5 h: mdhcpnhmnhk
    3-6 r: cfgrhws
    1-10 r: rrmrrrrrtr
    10-12 w: wgkwwqwwwhnhwwzk
    11-12 d: dvddddddddddd
    3-8 j: jrhjjjjwswkjj
    2-14 v: vpfghwfvkhwwjklklpl
    4-5 z: jzmzzzz
    4-6 g: dbtgggggtp
    1-7 n: nkkwpkzjnddhpdnmtfj
    6-12 b: bbbbbbbbbbbbbbwbbbb
    4-6 z: zzqtzr
    2-11 l: nzlrllznllsx
    2-8 r: rrrrrrrr
    14-16 n: vnnnnnnnnnnnnhnq
    2-10 d: ddddddddddd
    5-16 w: wlwwkwwwwmwwwwswwnd
    8-12 d: ddddrjddddddddd
    8-9 g: ggggggggg
    9-14 w: wwwwzvmhxwfjwwwnw
    3-5 d: ngrjkdpddjdl
    1-3 r: trhr
    3-5 j: tjgzj
    6-13 b: bgjbbsbhbbfxrw
    9-10 p: jpppppppdpp
    4-5 p: ppppbpp
    10-11 l: lllblllllkgll
    16-17 z: rtdzlbcshlvcvvqzj
    4-6 k: rdfknx
    5-13 r: rrzrrrrrrrrrrrrrrr
    7-9 b: dbbbbbbwb
    1-8 h: jhhhhhhhhh
    11-17 g: tqbghggghcgggglgdkg
    4-7 v: bqvvvlvbcj
    7-13 j: xjjjjdtjjjjlchjj
    2-3 g: kbggglgqkkf
    3-4 n: nnrn
    2-4 c: mxcsz
    7-18 q: pqqqcqzwxqfqqrqqqw
    4-5 c: mckcc
    3-6 z: wzdzznzz
    14-17 w: bwwwwwwkwwwwwwwwfww
    3-4 w: wwww
    16-19 h: hhhhhhhlhhhhhhhtxkh
    11-16 m: hmgcmtxxmpmdbdkm
    2-6 w: twwwwdmwwww
    4-5 h: phxnl
    4-6 p: pppdpmgppppcv
    13-14 d: xpdndklhdbbrdn
    5-9 f: kfqfdfxrhftx
    3-4 w: qfpx
    7-9 d: ddddldddddddl
    1-6 g: gggggg
    3-5 h: hlgbnkc
    3-4 p: ppvj
    2-10 x: wgxlqfxtxx
    2-5 n: nrgrn
    10-11 g: bgggggggggg
    3-4 p: pkprr
    3-4 m: mmxrm
    1-2 q: qqbpn
    7-8 t: vcrzttjbtttjs
    8-13 w: wwwwwwwwwhwwwwnwwwsw
    2-8 g: ggggggghgg
    6-7 g: gggghjg
    4-5 q: qqgnwq
    14-18 s: sssssssssssssfsssq
    7-9 l: mgbsqgmlhmwv
    6-9 q: qqbqqbrqq
    2-4 m: nsktmqk
    4-6 f: fffkfz
    9-15 n: nvnjnnnvtnnhnnxn
    7-9 v: vvqrvcdvvvnbv
    4-6 g: mggggd
    3-8 q: gqvzqqmq
    8-10 r: rrrrrrrwrvr
    1-10 v: vmkvpgvvxvxw
    4-9 v: vmwfvxtlmgvtrndsv
    6-7 f: fffffff
    10-11 k: xkkkckkwkbsk
    13-15 p: pppjhppjppfcpppppppp
    2-9 r: mrlzlptrrv
    4-7 k: bkshqnkkj
    5-6 c: chcccxcjchkd
    5-8 q: qdhqvqqsqqq
    5-7 r: rrrrrrr
    5-8 p: bfpqgpbgpqpp
    3-5 v: vtvtvrqdj
    1-2 g: gggg
    3-4 b: pbbbbb
    6-14 x: tdrjtddrqrlmkgqhxpg
    3-4 l: llcqv
    8-11 j: jfcnczqtfhgrcdxg
    16-17 g: ggggvlggggggkggfqggg
    14-16 v: vvvvdvvxvvvhkvvvvvvw
    8-11 d: pdhdhddgdrdd
    4-5 n: nnsnn
    7-8 k: kwkkkkvg
    2-4 k: lkbr
    2-3 s: ssts
    2-8 t: ttttptgttt
    4-6 t: ztttghrtttt
    8-11 h: hhghhhrhhhhhkgh
    1-5 h: nwlpd
    1-10 v: rgvvhvdzxzvnvc
    7-8 p: zppnspqbpp
    6-10 r: rxrrrrrgrr
    7-9 c: hcbflccccbzcccrjgbpr
    2-15 b: cbgtxwbmtjnszvbzzjkb
    7-8 r: xrhrvrgsxrdf
    13-17 g: mggxgqggrzgnggmgv
    2-11 h: whqddhkhhqhh
    9-10 c: ccccccqccc
    1-8 h: mhhhjhhnh
    16-18 s: sssssssssssssssssvs
    2-4 z: txkz
    10-11 n: jcwmzvknnnn
    1-14 j: jljqfjjjjrlqrjd
    15-17 b: bbbbbbbbbbbbbbzbgb
    9-15 h: gfhcthccvhhchhq
    16-17 f: gffvfqffffffffffffff
    2-11 z: nzqzbnzkzlzm
    1-9 b: vrfrkqbnctbbc
    2-5 p: cpqrk
    8-13 j: jjljpjjgtjbjfjj
    3-4 j: fvjjqj
    6-10 g: bnwlrgmggq
    3-11 m: mzvmhmdmmmmmqgmmxm
    2-8 b: lcbbbggpcbbzn
    5-7 m: rtmmpmwm
    4-6 l: hvlsnxlpmlvplqxng
    1-4 n: nnnn
    3-9 p: vnpmdjpvhw
    2-8 r: bkrrwjpdg
    16-20 h: hhhdhhhhhhwhhthhshqh
    1-13 q: rqqqqqqqqqqqc
    13-17 x: xlxxppdvmxxtxvbxsxx
    5-7 p: ppppkpwp
    3-5 d: dddkd
    12-15 d: fddddnddddddddl
    10-12 v: rvtmjfsncvpvvvv
    4-5 m: mmlmm
    1-3 t: jttqhdptjcjwnbjn
    2-6 q: tqxqdqxdnltj
    5-6 b: bjbwjn
    3-8 n: nnnnnnndnnxn
    9-11 p: hpcpbptztptppkpwp
    15-16 n: nnnnnnnnpnnnnnkn
    5-6 m: mmmxmmm
    5-7 k: kkxkckk
    9-11 t: dhtpttpqttt
    11-15 v: vvvvvvwvwflvvvf
    8-9 b: nrmgbbbbq
    10-11 m: mmmmlmmqmmmmm
    4-5 l: llrlll
    8-14 v: jvvvvvvvvpvpvv
    5-6 z: qzzzdj
    7-10 j: jjpvfvjzckvh
    1-2 c: chvfccfc
    6-10 x: xxdxxxjdxtxxkxngxxpt
    7-11 k: cchsjskkkpmkkkknk
    3-4 r: mrrh
    3-6 w: wkcpwsgwww
    15-17 b: dbgxdbbkbrbzbvqpgdbh
    4-5 l: llllll
    8-11 g: gggpggvgggg
    6-9 c: cpckccxcccjq
    9-10 c: tcdchccpgz
    1-8 t: stttvtttttttvtss
    2-10 w: wmwnwwwwww
    7-12 k: vknjkpkmzkrkkvqxkcn
    11-13 m: mmmmmmmmmmqmdm
    2-3 c: wczqmccc
    3-7 w: vwpswwnww
    5-9 w: ccwncstdz
    2-5 d: fdddm
    8-14 b: bqbbtctszzbbxrbb
    16-17 n: qbknnnnnnnnnnnnnw
    1-6 h: hhhhhhhh
    1-5 t: vtbkvkxht
    6-7 d: gdhdddddd
    12-16 j: jcbbjwxbdktgzjzkjkx
    7-13 r: nrrlrrxrfvrvgrrrgrr
    11-17 x: xxxxhxqnxdkxccpfw
    13-17 n: bxnnnnnnhdnnbnfnhn
    1-9 k: gkkkkkkkpkkkkk
    8-10 b: gbmpmzrbcg
    11-14 g: gkgggvggggggrggg
    3-9 d: ddddddqddd
    4-5 j: tjjjjc
    1-2 f: ffjpsr
    6-11 d: dzmctkxrswz
    5-16 d: qdsldjhdwldhddldz
    4-8 q: qchgqqqrqqqq
    1-5 w: mwwwwwclw
    2-5 c: ccccswkcctl
    1-2 s: nsnshgxjf
    6-10 k: kkbqgkckjklklvknk
    15-18 d: ddfddddrddddddjdddd
    2-7 m: mwmmqmm
    6-8 q: vqqmlqqqvqctqgqs
    7-8 d: gddddzdddd
    3-10 m: lmxmdmsmmpm
    5-13 s: qslvssmtvrhtrxz
    7-8 s: hbcsschfsrvssksrh
    2-6 q: qvgkxgwvnjg
    1-4 r: rrrkrrr
    3-11 w: qxwwhwwclwfvbzxlkdxm
    3-4 g: tgcq
    3-4 j: dpmt
    11-13 g: gcgbggggggdghlgggh
    17-18 s: bbzjzlldsszsxgftsm
    2-14 g: xhgdtfvzgpltkgzhd
    1-4 k: klnk
    1-3 z: dzpz
    4-12 q: fprhqjxkjlwtnfg
    2-3 b: bqhkb
    3-4 k: ckvmkgsp
    12-16 h: hhhhhhhhhchhhhhs
    11-12 b: bbbbbbbbtzbvx
    2-3 n: vnnx
    2-4 l: lkftllf
    1-6 b: bbqbbzb
    2-7 c: bkqclfcwfxwkvcltsqqd
    8-10 m: mzfmmmjmkm
    1-5 s: dmlsf
    5-11 b: bbqzgcmcbbdvb
    5-7 l: lllllll
    9-10 x: xxxxxxxxbcx
    8-9 p: wppppppqv
    3-5 m: mmtmmm
    4-6 h: hhhhhhh
    4-5 r: nsvckbrrhv
    1-6 g: gggggggggcggg
    1-2 x: xlvxgp
    3-5 j: bjdnh
    3-4 t: tttlt
    4-9 z: tzpkksgrzhkxv
    3-9 r: wrcrgjdwrmr
    8-9 k: kkkkkkknkp
    3-4 j: jgjjj
    10-17 n: qmccjhsvbczwdntmktjx
    8-10 c: cccccccfcq
    14-16 m: mmmmmmmmmmmlmjvpmm
    4-10 c: bhqzjcwnqkcwkr
    17-18 n: nndnsnnfnnnnnnnnnfnn
    2-4 x: wxrf
    3-5 b: jbbsbnsbbwgnvj
    2-6 r: hrmbrr
    18-19 l: llllllclllllllllllll
    13-16 b: bbbbbbbbbbbbbbbb
    11-13 s: qsssszssslssw
    9-10 v: vvvvvvvvcdv
    5-11 g: ggvwgrkskph
    9-10 b: bbbvnbqbcjd
    9-12 c: vhcckfrzczkcc
    16-17 d: dddndlddmddddddjv
    18-19 h: hhhhhhhghhhhhhhhhrw
    6-18 r: rrvjrrrwmhrrrddrrrn
    1-3 g: jwfqhggfgt
    1-4 n: xnnqlnncxbcncj
    4-5 r: vrvwt
    7-10 m: nxsqvmmwnkrqm
    14-15 k: kpkkkkkwkkkkkkkkkrk
    14-16 f: ffffdfffvffsfffff
    3-7 n: dlflwdjwhlsdrnljccvh
    12-13 k: kzkkkkkkkgksckkk
    3-15 f: fffnfnzfhwhfmxxfd
    3-8 z: wbztbsvbvqgxz
    2-8 z: mzzqzzzzzz
    8-11 x: slxvxxbzlxxbxmqxmxm
    2-3 f: rffs
    7-14 m: hvjmszmxgnnhnmpmfk
    2-12 z: zpzzzjzzzszf
    1-4 g: gbmgwghxpdb
    1-3 j: twjjjqjwxljl
    16-17 c: cccccccccccckccmc
    7-10 g: gnzgggggpg
    10-11 c: ccccccccccc
    9-11 l: lllllplldll
    11-13 q: wvcnqxvvqxqqq
    6-7 r: jrsbrrrfvrprrd
    4-7 v: vvvvvvsvv
    6-20 d: cddnqddddddkvjddpdbz
    2-8 m: mmsmmswmm
    5-6 s: szssjs
    4-6 z: zzzzzz
    2-12 q: rqrtpmtpdqwqlsmpn
    16-17 r: rrrrrrrrrrrkrrrwxk
    1-11 v: xhvjjvvpvjdvpks
    7-15 m: mmmfmmmmmrmmmmmmb
    2-4 d: dddd
    9-10 m: kmmcmwcmmxmmsmnm
    10-11 m: mmmmmmmmmmm
    8-9 p: pspctpxpppppwbqppp
    11-13 s: ssbsssrrsswsgsss
    6-9 f: pfrtffftfrfqx
    2-3 c: sfcbscsx
    18-20 p: pppppppppppppppqpppv
    4-5 x: wsxbd
    12-15 s: ssssssssssssssss
    8-13 b: qmxcggxzbvdzhflplcvx
    2-4 p: ppppp
    10-14 m: mdgkvkrrxldnsm
    6-8 x: xxxxmwxxxx
    4-6 f: fffvfff
    11-12 r: rrbrdrznndrrpwr
    2-9 k: dflbckgsl
    4-7 x: xgxxxxg
    3-5 c: wphmkfxx
    3-4 c: pccg
    8-9 n: xqnzbbtnnq
    2-4 s: sshsnw
    4-6 b: lbbbbdxf
    4-10 c: mhzcvkcxcms
    2-3 z: zzdfz
    8-9 s: hswsszfbblsssmstjf
    2-14 r: prlnmrcrfxnmprr
    9-10 t: gtpmrftnft
    13-14 p: dpppppptprpspp
    16-20 v: vvvvvvvvvvvvvvvvvvvb
    3-9 t: tlttzdkwnvjt
    3-4 b: bbsr
    1-3 k: kkkk
    3-5 k: kkkcn
    1-4 b: kbbbbbhbb
    10-14 p: bcppxppptppptpnnrxpp
    1-13 x: zjbrdxlvmczvszxpj
    2-7 x: zrxkxxxxx
    6-10 n: vnmnjnnnnnnnt
    9-11 c: dhzhvsfpmtrbp
    2-4 c: vvcq
    8-11 q: mpjlqqzkpqwnqqqq
    13-17 x: fswnrkwvxvzhdmqdx
    16-18 l: llllllqlllllclllllll
    4-10 d: swpcgghdqp
    10-14 k: kkkkkjkkkkkkkq
    1-5 j: jfscjjckj
    10-12 t: pztttttltttpttpt
    3-4 h: chkm
    8-12 c: gclmcpccccclrrc
    4-10 v: vmgvvvvvvvl
    4-6 m: wmmmmjm
    5-6 x: xbjvzml
    12-14 z: dzpzztzzlhhztz
    4-5 s: ssrms
    2-6 k: klchqkkzkbkbrwdkkw
    7-9 v: vvvvvvzvmvvvv
    8-9 h: zhhhphhjw
    1-6 b: zbdlcbsvztmndkbbt
    4-5 k: kkkgc
    17-18 v: vvzkvvvvvvvvvvvvvvv
    2-7 v: vcsvgjv
    11-12 k: kkkkkkzkkkrk
    1-2 r: grnkkcjrldpm
    2-4 h: pkhx
    11-14 v: vxlvhvxfjhvvvvv
    7-10 q: qpqqqqtqrc
    3-11 r: blrrlvtcbcr
    10-11 p: ppplpppzpppp
    10-14 z: qgjlzzqwqppztzzzdz
    5-10 k: khkrzkkrkkk
    1-2 l: ljlx
    3-9 f: fpfzvddpf
    7-13 g: ggcndgjgvglggggfpg
    4-11 f: pfjhffffffqffff
    1-16 b: lxwhmbbsbkbfbjcn
    3-7 h: hhhhhkhssh
    13-14 v: hvvvvvvvvvvvvvv
    8-9 n: nnnnnnnnnn
    7-8 n: nnxnfznnhnnn
    7-8 c: ccccccdnc
    1-7 w: ckwxwcwcwjvrr
    1-4 c: cccgc
    13-17 q: qqqqqqqjqqqqbqqqcv
    4-5 l: llbll
    3-8 w: xqwhmrwvvw
    3-4 h: hhpw
    3-8 q: fqqqnhtk
    2-3 b: bbsb
    1-3 f: ffffkrg
    13-14 n: nnnnpnnnnnnnbnn
    11-18 w: wwwwfwwwtjwwfflwwvw
    1-3 v: jjvkrvv
    2-4 h: qhgzhhxhvbrzjplsb
    4-5 p: vpxpppwppl
    3-7 j: jjsjjjvj
    8-11 h: hhhvhmhdhhhhh
    2-7 k: mkdmksjvk
    2-9 n: ndnnnnnnqn
    8-9 n: nntrjlnmt
    3-5 f: xfbffrfc
    3-4 g: gggg
    15-17 p: pgpwpppppppppprpphp
    6-13 z: zzzzzqzzzzrzqzz
    1-11 r: bbjrzpnwlkmrsjxqjnvq
    2-11 m: spkvwdnqtmsmvgtlfm
    6-12 c: cccccpcccccmcc
    7-8 w: fwxwwwwwbwwbw
    4-17 r: rrrfrrrrrrrrrrrrr
    2-3 q: qqqq
    8-18 m: zsdmdprmdvkgqmdmhmx
    4-5 g: ggggg
    1-5 l: xfllltl
    7-12 r: srrrrrvrrrvxrrr
    2-6 p: pmpppppp
    1-18 f: xfgffffcfffffffxfkf
    2-4 g: qggrgg
    4-16 m: wmmmnmmmmmmmkmqm
    11-12 t: thztttdszzttntpbd
    5-8 g: ggggbgggggg
    3-5 h: knhbvh
    1-2 q: fnqhqpc
    11-14 v: qvvvvkxvvvvvzvvq
    3-4 r: krssrrrr
    1-13 w: kwwwwwwwwkwdwwc
    5-7 f: zfffvfffffffff
    5-10 t: fqtdtxcpwtbh
    12-13 n: nnnnbnnnnnnnkk
    7-9 t: wqkzfgtbsptfvt
    6-11 r: ztwqxrmrrzp
    14-20 f: ffffnffljffffrfcffdx
    14-16 j: jjjjjjjjjjjjjcjv
    4-5 f: xvfzqglkftpffbf
    2-5 f: qftgffldffvdktfjshzr
    12-13 t: cmpvlskpfcrsv
    2-4 b: bbbpmqbbbbblbqbf
    2-3 q: lqqkhqbq
    4-10 j: qljhjftjvdbjjbtj
    8-15 g: bgggwlbcggftggrgtdvg
    10-11 j: jjjjsjvjjjjj
    4-6 w: wbtwwwqvhtsrhbhzwhqw
    4-5 r: frrhrx
    1-5 c: ccccc
    13-15 d: ddrdddrdddddvmdqnddd
    4-5 j: xxpqdrfgj
    12-13 f: bfbffmqffffftfff
    1-4 s: svgs
    8-10 s: sssssssssq
    3-9 p: ppppbpppnp
    1-2 w: wwxx
    2-3 c: tccc
    6-11 b: tkbxbbblsbsqdbwzbb
    11-12 x: gxmxhxwxmxxxxvfxgxc
    17-18 z: zzzzzzzzzzzzzzzznz
    7-8 q: zqcwdvgqx
    6-9 f: zmvsndwfgm
    9-17 c: cccccccclcfcccccxccc
    6-9 r: rrrrrrrrcr
    9-12 r: rfzrrcrrrdrxrrr
    2-6 v: svrlwmvlqfsd
    16-17 h: hhhhhhhhhhhhhhhhph
    11-12 j: jjjjjjjjjjbj
    4-8 n: vncnbdzt
    6-7 d: vdddddm
    3-4 z: zzzz
    1-5 q: qqqqfqqq
    9-14 f: bnffhgpvffffnfftf
    1-3 x: lkltxxxxxxx
    2-4 l: llll
    4-6 l: qhtldhlzbll
    2-4 r: rrtrbb
    12-16 m: mmmmmmmpmnmpmrmmmmm
    16-18 h: hhhhhhhhhhhhhhmhhhh
    4-5 f: qtfvfffff
    3-4 c: ckkc
    4-5 m: tmmmmlblzppmbk
    4-7 x: ldxpxfckxfnfhfxwzjkp
    3-5 j: dcdjsjj
    6-11 g: lggggvsgghbfjgg
    1-2 b: dmnbb
    6-8 b: kxbbzbbbbwb
    1-6 z: zzzhzwqzz
    11-12 g: qggpggggggbpgg
    13-16 x: xtxcwxxxxdxxxhjtnh
    4-7 g: fgwgngg
    7-10 x: xxjlxvqxxj
    11-12 z: zzzzzzlqnzqz
    5-6 d: mmbnbrdswk
    8-9 k: vqkkkkkkkk
    4-12 f: ljfhfhwfrdvf
    5-14 h: rhhhhvhhhhhhhhhhhh
    1-7 m: wmkgmsm
    13-19 n: nqsnnhxnnnzvrpgljnmn
    5-13 x: xfcxhxxxxxxxnxcx
    4-15 p: pppppzpppppppppr
    3-4 c: cctq
    17-18 h: hhhkchhthhvhhhfhnc
    3-4 r: xfdl
    4-7 v: vvvzvvw
    2-16 g: ngggdggqtgghprggngg
    11-13 s: ssqsssnshwksgssss
    1-9 h: hhhhhhhhhhhhhhhhhhh
    6-14 x: xxxxxsxftzxqxfxsxr
    4-6 d: wmddtttdt
    17-18 p: ppppppppppppppppnpx
    5-7 b: fbbbbbbh
    7-13 s: ssjshlxhhjssqpsshssh
    5-7 f: fntqfffl
    7-12 h: hsvsxhhdhhjhhhh
    5-6 n: jnnnpm
    3-4 c: cfcc
    1-14 k: kjkzqgnjdkjkvkpf
    11-17 k: kgkkmkkbkkgsktvxvk
    16-18 r: rfrrrrlrrrdrrbzkrb
    14-16 j: jjjjjjjjjjjjjvjg
    13-14 d: zddddxdddddlml
    11-15 x: xxxxxxxxxxtxxxxxxxx
    10-11 n: nnmnnnnnnnsn
    9-10 d: ddddddddldd
    1-13 m: dnmmmmmmmvqwwwgmmpmv
    4-6 t: hvttttxttmtfv
    6-7 p: ppppppdpp
    3-4 g: pggg
    17-18 z: zzzzzzzzmzzzzzzzwlz
    8-16 g: ngcsgggcmgmglqgg
    6-7 f: ffcxlhffgfvgdf
    1-6 r: vwrrrrkr
    5-6 k: knkkkk
    6-7 b: vwdzwbbjbblbm
    5-13 b: qkbxdhbqqczhcbqs
    4-7 s: tsnsslsv
    3-4 s: ssss
    15-17 c: ccccccvcccccccbcf
    11-14 c: ccccccccccdcct
    1-2 q: rrndznlqgptbndbmrm
    9-16 x: xxxpxxxxgxxxxxxvxx
    3-4 x: xxzdxx
    5-7 n: zndmnnln
    4-5 t: jtntkttv
    4-5 h: hhhgh
    8-10 d: zdvmdsbzdvnnjpb
    1-5 w: lqwmwp
    9-10 d: ddddlglmdd
    2-6 n: nncsmnkngc
    7-9 f: hffgfffff
    7-9 b: hbgblhbbbbwg
    14-15 j: jjjjjjjjjjjjjlcj
    14-16 k: kkkkkkkkkkkkkkgk
    16-19 g: hxxmzgmcsbgcdrxfzgg
    3-4 t: ttrmtt
    8-14 h: qttzhtnwsxwhknqfmsj
    3-5 h: cwltjhth
    9-13 q: qqqqqqqqhqqqqqqqq
    5-14 v: lzmdvmwlvbvrmvcvj
    2-4 v: lvvv
    5-6 d: dhddjdd
    3-4 s: sssssg
    7-8 z: nkzzxzzz
    10-11 c: sccccccccccc
    9-16 f: fbcftfffvlfqbvfff
    11-13 c: lvccmccmcscllvc
    1-2 v: vvvm
    2-10 p: hkpppmpnpwmm
    3-5 r: rrtnc
    13-14 b: bbbbbbbbbbbbvbb
    3-4 b: bsfvv
    2-3 r: rrwrlrrrrbrrrr
    14-16 c: cccccccccxcccccc
    4-10 m: mmmmmqmmmm
    11-15 j: jjjjjjjjjjjjjjjj
    6-12 v: vvvvvvvvvvvwv
    6-12 q: bbqhbszqnqqqqqq
    9-13 t: tsxttrbttgttt
    17-19 c: cccccccccccccccccccc
    4-8 h: hnkgrsbzhhcsbp
    5-6 t: tttgttttttt
    3-4 w: sqsblvplnqjhxwnvkgfj
    4-5 k: ckkkc
    3-4 c: clrjc
    2-4 z: zzcw
    4-7 p: bpvwpmp
    4-6 q: vjckzxbh
    1-4 d: dnxdgjdd
    2-6 g: ggjgjgkg
    8-9 r: rrrrrrrvr
    1-6 b: bbbbzb
    13-14 q: qcqqqqqqqcqqwbq
    5-16 w: zfwcxmjcncwtmtbvbctv
    3-5 b: bpblbb
    1-12 n: rbnnmgbnhklfnhn
    3-8 m: nwmmmmlmx
    2-4 p: wgpppwwdpv
    4-9 h: dhhhmnhhh
    1-9 c: ccfppznjsbccvsf
    4-9 h: hhhhhhkhhhhhhhhhh
    1-4 c: vsclwzcmc
    3-7 j: sjrwfcrp
    2-10 h: wqljchhhxhf
    3-9 d: dddkdzqddsddd
    10-11 q: cdgtzbrsvqq
    9-14 b: rbjrtbmcbnlvbf
    8-11 k: gkdkkkkhkkqrkzkvzwb
    1-6 n: nsnxnnnnnnn
    1-4 m: mqdmmx
    2-8 s: sksshssgsls
    2-4 c: cccc
    2-5 v: vvvvvvc
    7-9 h: hhhhhhvfl
    14-20 f: bffhfffffffqfffqffff
    3-5 l: llwls
    1-6 p: nppbvp
    9-16 c: wrkntcwncptccgccsclv
    4-6 d: dldrlmddg
    7-12 p: ppppfppsppppppplpm
    2-5 v: vwmxvdvvvvdvnv
    19-20 h: hhhhhhhhhhhhhhhhhhph
    15-17 d: ddtdddtdddddddddd
    2-6 q: qcqcqqqvq
    5-6 t: tttttt
    3-4 f: frfp
    5-11 s: xlsdhkskzkczcntn
    13-16 n: nnnnnnnnnnnnntnn
    2-7 n: nnnnnnl
    1-4 v: vqvbdfv
    9-10 k: kkwtkkkkkz
    8-11 z: zzzzzzzzzzzz
    11-16 k: kkkkkkkkkkkdkkkkkkjk
    14-15 c: rbctgvcqwccjctccrblq
    13-14 l: ktdlflllgmlllc
    3-5 c: cchccc
    8-12 g: ggqggggvggqc
    5-6 w: wwwwwm
    2-4 f: mlfd
    4-17 k: tknkjgcbdskbqvtvkkk
    5-10 m: nwqmgjmmmdqmm
    14-18 q: rqqqqqqqqqqsqqqqqrqm
    3-5 m: mmbmm
    6-7 b: bbbsbbl
    1-5 w: wmwbvltncjxjsfhgw
    1-16 b: zbwbjtbbzzlbcdbb
    1-4 b: bbbb
    1-4 x: xfzxxxxx
    11-16 m: mmmmmmmmmmmmmmmmm
    5-9 x: cxtxmsnqvxqxxx
    1-2 v: vwvh
    10-15 h: zghhhwgrhhjhhhhh
    13-14 h: hhhhhhhhhhhhhh
    11-12 d: dddddddddfmhd
    1-12 w: wqbwwpzswwwm
    1-5 c: cbbgc
    11-13 f: nmffbmffffmfwffxff
    11-12 l: llllllhllllll
    12-13 r: gcrrrrkhbdgdrr
    1-5 h: hhhhrhhhhh
    1-5 g: ggggl
    6-11 h: hgzxnhhhnqhph
    1-9 x: xjkvwjgnxlrfdxxqxfc
    4-5 s: ppsns
    7-8 l: llllllwl
    11-12 z: xzzrzzzzzzvsz
    2-4 q: tzqqjq
    10-15 b: vbrqbbmqbsbhmpbb
    1-3 m: mmmm
    7-10 m: mmmmmmgmgrm
    8-9 w: wwswnwwwgw
    1-5 m: mrmmm
    3-7 b: whbbbbwqzbbtnb
    3-4 b: bbsbb
    11-13 p: pppppppnpbtpc
    1-8 x: xvxvjxxxfqxvxx
    6-8 m: hpmmbvmmpsmkmgs
    7-8 l: llllllsl
    2-3 t: ttttkttt
    11-12 c: ccccccccccbw
    1-4 z: vzzszz
    12-14 c: ccwccccvtckrcc
    4-14 k: xxmkcmnjdgqczkhk
    1-15 j: ljwjjttjrjjjnjp
    10-12 z: zzhzzzzzzzzz
    5-11 w: cwwwwwwwgwww
    10-18 n: hktgnnnjlwbzndrbpnl
    6-9 m: mmpmmdmjtsmr
    7-13 b: bcbwfbbbbbbfcb
    3-12 c: mnmftdxxfpmnpzqhcm
    2-5 d: dddddd
    12-13 b: bbbbbbbbbbbnb
    10-14 g: gggggggggwgggg
    18-19 w: wwwwwwwwwwwwwfwwwxxw
    7-8 d: wddddjddhdzddr
    8-14 z: hgzzjbznzszzzgzz
    7-8 f: ffffffbf
    3-4 v: vvvv
    9-16 n: nnnnnnnnnnnnnnnnnnnn
    5-6 r: rrrrkf
    13-16 f: fffffffffffflfff
    14-16 f: gppfjbvfwllpsljp
    9-18 f: ffffffffffffdfffffff
    5-7 x: xxxxxxk
    13-14 l: llvslllwvlhsccnllc
    12-19 g: dtvgcdwgcmfsggcpgpgr
    1-8 l: lwnwlxzllp
    1-7 w: wwgkkwn
    4-6 t: cttmtthltpctnsww
    11-13 h: hhhhhhhvhnwhhh
    1-5 r: rtdrrvsrrtrrlrtf
    9-10 l: llllllgldlll
    6-8 z: zzglzkznpkzz
    1-4 n: nnlwvnq
    14-15 m: mmmmmmmmmmmdmrtmm
    4-16 s: ssmnssshsstsssrssss
    1-5 g: zncgdpghsgs
    7-20 r: rrrrrmgrfrbmrrrrrrrp
    3-4 s: slrp
    6-7 b: bbbbbbbb
    10-11 b: lvxbvbbzhbg
    5-6 k: kxzkzfftkf
    4-6 h: hcjhhhn
    6-10 r: krrrrjrrbwrnrrz
    12-17 s: sssssssssjsrtlssswss
    10-12 m: mmmmvmmmmkqm
    2-9 j: nhjdzqjczxqjnw
    3-4 b: bbbb
    2-3 c: tzjcb
    1-3 t: kmxtshpnzcln
    3-4 x: xxxx
    1-5 m: sjzszsmmbj
    2-8 n: vnjnnnnnsnnnn
    14-20 g: ggggkkggggggggggggkg
    9-15 k: kzxckdjkkkhkkjktfkk
    6-9 w: wwwwswwwwwbwcdb
    8-11 k: kkqkkkkjkhfssh
    5-9 q: hqqkdwtqxqhqq
    8-9 t: tmtttttth
    7-8 x: pqrjqsvscbffbkhfxhm
    3-5 q: qqfqj
    2-4 j: rjkjk
    4-7 p: pppdpgtg
    7-8 m: mmmmmwnm
    10-12 x: xqxrxxxxtxtxxxxxxlx
    5-11 c: cvdzctckcgmkgcm
    2-4 k: vknkm
    6-12 j: qjjgcrsjfbjpplnpjhr
    2-7 p: ppppdpppkps
    2-3 b: zhdbgb
    6-9 d: dddddsdds
    4-5 r: rmrvcr
    14-15 p: ppppppppppppppp
    1-4 g: gbgcgdkfwqbgngcqj
    4-6 k: vnmkxkkkdkkkvpkc
    9-10 h: hhhnfghhqlh
    2-10 b: bbdfmqbbfbf
    4-7 r: rrrfrrrr
    6-8 k: kjlckkkzkkk
    6-7 s: ssljsnw
    12-13 d: dndddhldddjhpdddn
    4-9 n: wkntqnnftcnn
    7-10 b: bbbbbbbbbzb
    3-4 q: vhvq
    4-5 f: fgffnf
    16-18 t: ftjjptkttvltbrthtlk
    5-7 p: bpmprswpgzwsrbl
    11-16 m: tmnlmgcgcmmmpwsr
    4-7 j: jrnjjxjjjj
    15-18 g: ggggggglgggggwgggv
    1-3 k: kkkk
    14-18 r: rrrrrrrrrrrrrrrwrrrr
    1-4 f: ffff
    7-9 b: bbbbbbbbbbb
    15-16 z: zzzzzzzzzzzzpzpzzz
    2-6 m: smvmtf
    12-15 x: xxkvxxgxxxxvxxx
    5-9 g: gggghfggrgmwgn
    7-9 r: rfrfrrrxhrrrfnrmr
    1-14 v: vvvvvvvvvvvvvt
    16-20 t: tttttttkttlzsttvtttm
    12-13 r: rrrrprrrrrlrrrr
    14-15 x: xxxxxwxxxxxcxqwfxxx
    1-3 c: jchc
    4-12 n: nhnvmrrkknntnnn
    16-17 n: nnnnnnnnnnnnpnnzcng
    3-4 b: vkcbcwxnxxbbfhb
    5-6 k: kklqnkkd
    3-6 d: ddrddc
    3-11 b: bbbbdbgbbbbbbtbbb
    3-12 d: dsvpnrwhdddddv
    9-10 b: bbbbbbbbbbbb
    12-15 f: ffffffnffpfdffpfff
    8-17 j: jjmjgxhdgvzjxjctj
    2-5 f: fflqb
    7-9 j: jjjjjjjjjj
    2-3 c: ccccb
    6-8 k: kzkkbkkk
    1-10 r: rrrrrrrrrvr
    15-16 j: jjvjjjjjjjjsjjjgjjj
    6-16 k: fkkkkdjkkbkkkkkjk
    7-19 q: jcspsdqsxrjsmnwvfqq
    1-3 s: sdsss
    3-6 f: mbfhffn
    10-15 b: bgbbfgbbzbbbrrb
    6-7 k: dkkjkwkcpmvhlhn
    5-7 h: chhhbhc
    3-4 c: wwcccccxp
    2-4 q: qxqcq
    6-7 j: jkjjjjjj
    16-17 d: dddddddddddddddgf
    2-5 r: rfqprwlrtffzm
    1-4 f: kflmqf
    7-8 t: ttttttttf
    7-8 s: sssmsbvkssvs
    5-10 h: jjhhhnjhthnkhkh
    7-15 b: bbbrdbbmbzcbbbg
    13-16 q: qfqqqqqqtqqqqqqqqq
    1-2 p: ptksbpp
    6-7 d: ddddrddd
    6-11 k: kkkkkkkkkkkk
    5-7 q: qqtqqqqfq
    1-3 l: kwfllxlr
    1-3 q: qqqqnq
    8-13 s: sssssssssqsss
    1-13 l: lllllllllllllll
    1-2 x: xqxqxxxxxxxxxxxf
    4-7 r: rrsjrprjwhrrr
    10-11 t: ttfttttsttt
    1-4 j: jpjj
    16-17 v: vvvvvvvwvvvvvvvvvvv
    3-4 v: qfvvwldqxr
    5-6 m: nnwfrm
    5-10 l: llpnqlllkml
    3-4 x: ssttpxmbk
    6-11 r: rkprqdqdrrr
    2-5 m: mhmqpmh
    2-3 g: gzmg
    4-5 f: sfjwffvff
    7-14 x: xmxxcjxbxvqqsxxgx
    1-3 f: tfmffff
    6-14 b: bbbbbbbbbbbhbb
    4-6 r: qpldrgdlrplrx
    1-3 t: ttmt
    12-15 f: snlfkxrfcfwmkwwl
    1-3 p: fpppp
    7-15 g: gpgzggfgzkgxnpg
    3-6 n: qtmndnzdzhwdjktlvst
    4-8 x: xmxsxxxxx
    4-9 r: rrrrrrrrqr
    2-5 l: lllcl
    4-7 p: phkzpnwcnppt
    7-10 l: rdwhlrlprlfpt
    2-3 z: tzscz
    9-10 l: llmllllllv
    1-4 s: sssslsxsss
    1-5 j: bjhsrjwqndvjxnqkwjnx
    6-16 c: xqgjtdgkgcxccqcgcwcs
    7-12 n: dnnznccjbnnxnnng
    15-16 f: ffffffffpfffflfmff
    8-14 k: xwfbckjkgzxdxmqq
    6-7 n: nnnnnpq
    5-7 k: kkhkqkkgkk
    2-5 c: ccckcc
    8-9 b: bbbbpbblbbb
    12-13 m: mmmmmmmmmmmjmm
    2-9 m: mmtrksqzmx
    12-14 d: rddpdrzsfcvpzz
    4-9 c: ccckcccczc
    1-3 k: kkkkkkkkkkkk
    1-2 q: qqbzqqhxtj
    3-4 x: xmxx
    3-4 r: rrxqrrrgrgr
    7-11 b: hbbbbbrbbzq
    4-5 w: wwlxw
    2-4 w: wgwww
    5-7 p: ssddpppbpzp
    6-7 b: bbbbbbbbb
    4-5 w: kwwdwjw
    1-3 m: xmsmmm
    4-5 l: fllzl
    1-2 c: nccgs
    2-6 p: psphpskgbnvj
    13-14 g: ggggghggccgqfjgggg
    6-8 f: gmjfrvff
    16-18 x: xxxxfxxxgxwxxxxxxsx
    10-19 s: njsrgsssscssssssssc
    2-3 h: hswh
    2-5 g: gggbv
    4-9 z: zzlzrpctzxm
    2-3 h: lhhlhctg
    17-18 q: qqqqqqqqqqqqqqqqqq
    11-13 j: jjjjsjdjnzglfjnjjjj
    2-4 k: kklk
    6-12 p: pfpppzpppzpbpg
    3-5 s: sbsssss
    4-6 r: wzsrffr
    10-13 r: rrrnrkfrrcrtnrlh
    16-18 m: mmtmrxmmmmmmmmmcmmm
    9-11 b: bkbltdvbtwbbtsb
    """
    
    // In this list, the two entries that sum to 2020 are 1721 and 299.
    // Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.
    static let day01ExpenseListDebug = """
    1721
    979
    366
    299
    675
    1456
    """
    
    static let day01ExpenseList = """
    1652
    1998
    1677
    1855
    1955
    1875
    1993
    1860
    1752
    1936
    1816
    1924
    1872
    2000
    1967
    1882
    1737
    1801
    1832
    1985
    1933
    1911
    1894
    1384
    1871
    1607
    1858
    1950
    222
    1931
    1635
    1960
    1909
    1884
    1921
    1959
    1981
    1920
    1684
    1734
    1490
    1632
    1935
    1982
    217
    1874
    1646
    1943
    986
    1509
    1899
    1834
    1908
    1769
    1989
    1977
    1436
    1973
    1974
    1941
    1624
    2006
    1867
    843
    2003
    1838
    1904
    1892
    1972
    1957
    1890
    1540
    1578
    1845
    1912
    1947
    1847
    1841
    1793
    2005
    1716
    1852
    1865
    1532
    1800
    1949
    1898
    1698
    1806
    1840
    1833
    1915
    479
    1963
    1923
    1567
    1849
    1536
    1741
    1818
    1934
    1952
    1805
    1868
    1808
    955
    1954
    1712
    1797
    1472
    1807
    1673
    1601
    1883
    1869
    1969
    1886
    1491
    1572
    2010
    1796
    1870
    1946
    1938
    1813
    1825
    1944
    129
    1856
    1827
    1939
    1642
    1542
    745
    1836
    1810
    529
    1822
    1917
    486
    1953
    2008
    1991
    1628
    1937
    1987
    1837
    1820
    1922
    1850
    1893
    1942
    1928
    1990
    1589
    1970
    1986
    1925
    1902
    2009
    1565
    1610
    1857
    1889
    1901
    1790
    1880
    1999
    1964
    1948
    1824
    1877
    1916
    1978
    1839
    1659
    1846
    323
    1387
    1926
    1958
    1914
    1906
    178
    1979
    1994
    2004
    1862
    1704
    1903
    1997
    1876
    1992
    1864
    1932
    1918
    1962
    1802
    1278
    1861
    """
}
