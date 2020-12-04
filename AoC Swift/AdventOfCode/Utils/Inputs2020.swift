//
//  ExerciseInputs.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 01.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation


class Inputs2020 {
    
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
