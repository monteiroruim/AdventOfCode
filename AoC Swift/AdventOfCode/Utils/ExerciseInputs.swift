//
//  ExerciseInputs.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 01.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation


class ExerciseInputs {
    
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
