//
//  In2022D08.swift
//  AdventOfCode
//
//  Created by Orlando Pereira on 07.12.22.
//  Copyright © 2022 Pereira Orlando. All rights reserved.
//

import Foundation

class In2022D08 {
    
    private var inputDebug = """
30373
25512
65332
33549
35390
""".components(separatedBy: .newlines)
        .map { $0.compactMap{ Int(String($0)) } }
    
    private var input = """
101000101302332302213011003243304222032110202245353522155334033122313210221230000001220130100022122
122210210320302310331324310141124041443541534154545244332222431041103123300231344112333231232020100
011020221031210311014411033201443431122251335521121521353321531213122340222303023121303012232120211
000012230303012110404302322434112535321314325133151343154523152113352323222121143131230230300010211
000101020102331320324033211434345545252433432135545542415124544553222514400213440042311303011013001
202001312100200021421012223142431211335331532444233515224153311522222555314232210423334003210102220
011131032221232202214203134355134325534535155321321531342523311414524444121034331120010122133121002
012103011013234340220133253444344345551421425245564632231421413155444352235322124240443423130033133
023022222331211330242121333322511343331564456422534434233336641233441411225132333403444004323031130
122001122320002403311244123154323212364525225546632523326222646644534552432225114212121041202201101
201302222421043202412532245351442246452432423633626243642533322462435241134121531144434002132010000
122213111044103234351235511134413234563453322444242566263522522644342234232253155254301234110300021
113313344244423401511525531451323665263352262243423362556353564226362361322533445233424434111012012
323302332240441412134135252445553645636653465334245666253662345645324254224333254123311012030133130
332120111102141423234341243443234252334456556562545633354222256464632536622143552122541234130423323
122224242212403144121523166423356623443663733433635436675735253523644354643342421314522214442040123
130344143331342212242115255554543656334463733356637544676553543434653253623265551525411402131040421
111003030342123123511252646254623535534357466353375646547564673536553255646533231452351410404020013
332124444335243313522222325635244436373363367347547657365464656355466356464545443334344153423341012
232342033111333231112656656265266357433564755537367665764637367764355253532366254114254324201100404
101233233343414344126532556226436647555645667376455456566557763767647635362565344622322534502310312
234111202233233215562262624436676643737337566473664453776457667475754435533226344322323423442342100
402232031433442312344526624557553755447353367466446577646665446357633777326623652432513252124004232
212231104214255124434243353647647447747775775475564685467674776466656644576645454532511251542330044
330321113544342342426252636573364357677754446645866464745647666457667355744545264522332325451130321
222411133521223236526546377433545377875565668665875675445864767573357464763354424234622534554143223
142220224123433353553534675777475684577445474444865557477778878786435663546733536644336533253210444
234303342221216325225647673565373587477777868464685648447578886544463547554576225446223235252550331
400113133345165253462253446365744855777875886776767567754874477477474565777333744664664551142214124
412132413313346333333555557454655547587847767896975957685547645564677763453677666366442342332232122
334033315545442636426445433765664666566478697675657685577868857488675767536433674224636523553151431
324335552413266326423347463568467745578777576776975669795799554567464666367654473542325262221441101
131511125256525526575766676354478786689579886969969766585778679485865565765376657344353536125153151
244524422253656346455634754665787648778667596778789965999786796565866745454753567443526323341424544
211132342564425664553757656668566547577957579778997556765667698865476847475563663373462554343345314
113141312266236453646536658484648878886895867677578576855575899996648686874734543472262346612411225
431125132236423453574474786578758875686695678776896989668789687975947747448445663477565546314151414
402551145566253546577566556767555768898865976676679779987865977786756486586544653544344365623144521
351214235565362646577336454557746895975887896697996767766878996959979558677463654563456353553235351
122455323664634254446376786844865576755676688896987688886888786957558784675485475744734434541123152
112255425232642335473748564488859768857777688879799876677866659587557857757676576435634662452134342
455522444545426534753674548867768687755997866776777898776877795885986544844677753434655623564212345
412155113623434466447774757776859997987899767989667679699996798679877666567544533665746223252315114
453332352265242676763377447478765586959766867978979778796767886576986584766747353364676266364245535
151313336624645447656645455475896896867678697897788997767687866859866655578744537376442664636152223
455243453435463635337684757445755596698989687799788989986786699797775556586655575653353265554241131
251415166645666563375376748859997866687967868797978889987998679758798569865756775546344344554312124
331433134422534365636487656449699586969998668879897987878866676876786989484485864476366325223244142
132213365423424647776468664875878887697667999777799999878688966768769697755484845766657556635534231
442522446624224775544665486745678975989677887777989879987899876967997869745484464775476226634414441
414243454243325747553386586456565559666796897787798878877798976968696887568644467363665645654234342
215142336343427766345557875578557579699966878799879877798979788987865568455575637643634465625633514
444521352456524367445584475449688677868789867989777898788779999778897868868864555755544265525241213
343543163545642554464368767749999765868779787787777877798686666796668788574458637363772366342655525
341551255466346443643474885467855956677968987898897998798799766789865977556474773777434225343324211
251123114442354577537368486476558966978789689879787987987678869955568989544465534546734456625112225
142232534343445746343588765654798855667798978799977888869787696878585778876688643366444565625121131
311521132563323444745365788677775659598666966787888977889678977759678568746674466335353644435243313
345412452526465744655568445844688575598969989969889868677699797895799996847586645734753242322441323
445215142456262354554345445558465597557969867789867867976887979786657576884756676435763335635533122
444513115342463476355578485576766696688698976689876999966667668996957648447678733463742632553444325
435555323544423276337437788874665776967796769769676979786987556678595545788564435557456444325233523
222113511456444244557563476655458686865689666797979989867989658855669574474554336653455456354211121
315144115556526323767633347588465755769768687968988689996565855887665755648467656776264455322421211
111332432346444643653743668478845495996777588978799876866697958688946447765557735447666544224153424
111222244546622353567456366475487446866576799967576859876798989699857548685447663535243336355221325
223141152542346522576653337565445575768888879786785875899988865987686846876447635576334244515325230
443322255116456436444377473448654875565887887677885788577796795848468644487447457355523453315211414
130352124432526245245373467387668847788589695578599869797998978476788754675633774542534423122125242
334433234534245442367347557564758856564657667677775865656999947474888685776636767445356541551214420
123124441342636465633633636643567578564865665876975796565965478645468583743436454544523645441113323
242225422212252456342556737767366667445574888895855965667456845645567874653456675652263612411321330
110323431333344346242375635633757857778767677445467568468478768776548455535745634226323614531252123
241142353413552266662225545476534578655856577486484854456447575686474664464757236365246132521542433
421424323241433233253346776474445566747875748674565775684785456758576776345732334353455412441153141
010122052414252642656355634756334733656886485474774657557568886554553636454662236335251454214322311
231112232134413163642365663666654774637684654564855676688477585537434654355636322624345154324544044
104341445335335525545465224746557546355577764777687567587584763455643366572233664462225221454324214
202233445441355333555534254446354373543735737858476867667436544435455347623553643353521112454200434
201321322145223422364346626365663554776746563367656544365357436765366345255436466663141522354332340
114131034015542352554665526643636655756663737333333655547647533374366345355445546241521354443321244
304010331133454511122264453343667667753744575554547377645777633436537233566662356531144312112302002
331022344323342414454432543663463456557657355357556654673444477465425323556623461442221334243421322
221111410243535512112125336342542555757357463734577556766753754335344364256433325151425553440311021
303102431041251352533313622645444353263444446445673366655667756625524226323632231111132511122414221
000231442030315552522221354356554426543653573343647777477652663343536536344454334544555431204210013
303332131303211152155545523665255343623566653552575333542362645333624335354422123323113100410430232
012313114410102214155512513453365254625625263323426343526365646353444535342225342142222201204212111
123112140043004303153112233343562466536223225466423264666465544336564361241322454534403213222132320
002123324244424104214133514125254522563336645445243436453622555362253154331412543153043133210311001
111322131223421221241354554411542266265635332643365333232652434365645345323233444421034211131232130
101202110344332102242331441251235443162522453233265235364246362222155155145313352043204304432021120
201201023022424401040425555531112132215522664564236643322224622422131412223244514224042220223102112
123333110113212031214024411121114232312333521434626453641234214533431514242423433431313213223000201
220130301112144042132412415353433515153111224124321423445525211134534555335010210434111012300120121
001030102113333002130222433032352335142323423512223143325222125433324311332130022212443221220222322
000201122000001012423133100004411541433323341344154214212435543542121422002123313144202022122100012
012111322300213034030131330142125211254543321454454243442412331255315002103332314442011003113122000
001202021022233123031004403230031341512221513345352553531452554321113401010231031311031210320110120
""".components(separatedBy: .newlines)
        .map { $0.compactMap{ Int(String($0)) } }
    
    public init() {
    }
    
    public func getInput() -> [[Int]] {
        return input
    }
    
    public func getInputDebug() -> [[Int]] {
        return inputDebug
    }
    
}
