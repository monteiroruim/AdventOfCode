//
//  File.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 08.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class In2021D08 {
    
    private var inputDebug = """
be cfbegad cbdgef fgaecd cgeb fdcge agebfd fecdb fabcd edb | fdgacbe cefdb cefbgd gcbe
edbfga begcd cbg gc gcadebf fbgde acbgfd abcde gfcbed gfec | fcgedb cgb dgebacf gc
fgaebd cg bdaec gdafb agbcfd gdcbef bgcad gfac gcb cdgabef | cg cg fdcagb cbg
fbegcd cbd adcefb dageb afcb bc aefdc ecdab fgdeca fcdbega | efabcd cedba gadfec cb
aecbfdg fbg gf bafeg dbefa fcge gcbeaacedgfb fcaegb dgceab fcbdga | gecf egdcabf bgf bfgea
fgeab ca afcebg bdacfeg cfaedg gcfdb baec bfadeg bafgc acf | gebdcfa ecba ca fadegcb
dbcfg fgd bdegcaf fgec aegbdf ecdfab fbedc dacgb gdcebf gf | cefg dcbef fcge gbcadfe
bdfegc cbegaf gecbf dfcage bdacg ed bedf ced adcbefg gebcd | ed bcgafe cdgba cbgef
egadfb cdbfeg cegd fecab cgb gbdefca cg fgcdab egfdb bfceg | gbdfcae bgc cg cgb
gcafb gcf dcaebfg ecagb gf abcdeg gaef cafbge fdbac fegbdc | fgae cfgab fg bagce
"""
    private var input = """
cdeba gadec dafcgb bedg bd cdb cdebga fadecg adcfbeg bacfe | aedgbcf gcfead dbacfeg gecabd
ef fbceag dfbe cef cdbae gfadc cabfged debcga aecdf cebfad | abgefcd cef bdfgace dbfe
cdbgea eagdfcb fdbec decfga fbca bedcfa fc efc dbaec bfgde | bcdfe deagcb ceagdbf daebc
baefgcd bceda bedgca egc cadfeb cagedf abgfe cg gecab bgcd | eacbg fdgbcea gefdacb dbgc
ea dgcbef bgae dgebaf geacfd aefbd gefbd aef adbfegc adcbf | fae ea dcgbeaf ae
febd egcbf fgadec cbe ecfgd eb gdbecfa ebdgac gacfb begfcd | dfbe ceb bgacf febgcd
caf afgb fdbcag fcgbead gacbd gadbce efcdb efagcd af abcdf | fa fca caf gfab
gcbde fdceb agdbcf bcgfaed gd bedcga cgd cefagb bgcea egda | gd cadfgb dcfgab gd
cebdg ebaf bca cdeba ecabdf ab dgbacf fcaedg gdabefc cadfe | gdbacf bac fgdaebc eafcd
gbda gcdef ebacg ad bdfcae agdceb egbacf dgcae dbafegc cad | efgcd ad begcaf agebfcd
fgb cgfba ecdbfga agbd eadbfc dafbc gfbdce ecagf gb cagfdb | dgacebf fcbda gb afgce
gabfdec fdabc daeb bd afebc bdf adbfec fdcga fgeabc degfcb | dbcfgae gcebfa fbd bfd
cgf ebfdc dafgcb fcdegba acgbed gdbcf ebcfga fg fgad dabcg | cgf fg dfag fdga
gbdfa eafgcd aefdg adfcbge egbfad bcagd dbfe bgeacf bf fba | fb bf fb bf
afgbed fg dcgeba fgb abfcd bcafg baceg cegf afdgcbe gcfeba | adbcegf gf cbefdag gf
ebgca ega bcdage agdfbe cbged cgad cbfdeg ag ecdfgba fabce | eafbc dgbcae bfdgea dbceg
ebcadf dgaf ebgad debfa adfebcg gebcfd dg baegc bgd efgabd | afgd dg defab gd
bfgca cfbged dgc dgbaef efdbcag bdec dcbfg dc fagced gfbed | cd dcbe gcd cdgbafe
gebdacf cebdag fda egdba egadf fgba fa agfedb fedgc acdfeb | debcfa decbfa fgdbace daf
cdbfe ea dfgceb gdbcaef debafc cgbaed afbde eacf aeb abgdf | ae dagbf ae beafd
dfaebg fegbd ebfdcag cdgbf eb fedgac abfe edfga cagebd bge | egabcdf cfbdg bafe defgacb
gdcbfe gcd dfecb geadf gc egbc cfeadgb cfdeab gadfbc fgdec | egbc abdefc ecbfd cgeb
bdeca ceabfg abg gfeb afgbdc dagfebc bg efgca gabce egadfc | fbdagc gb gfeb fegb
cfe dgebc bfcage fbeag efgcb eafcbdg gfedba faecdg cbaf fc | cfe ebgaf cbfa cbgfade
egdbac fe deagcbf gdfbae dcagf fae eabdg edgaf fabdce bgfe | fae edfag gfbaced fea
fcbaed gbdef bdegaf becgafd bef efag fgbdca cebdg fe bgfda | fe fagebd ef fe
edfcg ecfabdg cefbg bf bcf bdagcf aegcdb cgbae afgcbe ebaf | bf fb gfecdab beaf
gdefcab caefb gfceb fedagc gcfde gb gfb fdagbc dgbe dgcfbe | bgadfc fgdcae gb fbg
cbfgda fegbca eagbf cgfdbae cg egdabf defbc gcb gcea febcg | ebfadg bfdaeg gace afecgdb
dbeac adbgc fcbeag bedg aedbcgf adecbg abe be faced cfgabd | bcade bae be bae
ge cegab bcafg bcefdag bge dafbce becda acegbd decg edgfab | agebc ge ge ge
gefa dbecgf abgcf fbdca bcaegd cag ebcfg egdfbac egafbc ag | gcbfe ag afbcg gac
cgebf ba fbdgae cbgfae bagc baf eabfdgc gfdbec cfaed cbafe | efcbdag cbdfeg gabefc feagdbc
dcbeaf fdabgec ac ecaf facbgd dac gecdb badfe edagfb bcade | dagfbc fcae cfea acdeb
cgdbfe facdg bfaceg caefg eag dbaefg ea egfbc gebdcaf beac | fedabgc egbacf aegcdfb gacfd
eabgc abf bfagc cefbga aebcgd fdgbc efcgabd efca deagfb af | gceadbf fbgaed gbcfaed dfgbc
fdaecb cabg bcafe gfbde fecbga fgeba eag fegacbd ag cadfeg | gbafe fegcab bdefg ag
ad cdeafg fdcgbe afgeb cfgbdae fabdgc dag fgead dace fedcg | fbgdcea dga aegfd fdaebgc
gabc dagfec cgdfb ga fdabg bfgcad fbade fag ebgcdaf fbgecd | cbga ag fdbcaeg fga
gabf dacgb bf gfedbc deabgc afbdgc ceafd dabcf dfabgec cfb | bagf fb cfb egadbc
dbgf bdegfa bf egacdb adegb bacfeg aebgdfc ebf afbed adcef | bf abedcg dgabe fbead
gdebcf acfegb fecgd ced dfbgaec edgaf cd gbfec gcedba cbfd | edc cbgdafe egacdb ebagcf
bdgfeac cegb gcadef bfedc defbg gfe befdca gbfad ge defcbg | feg fge egcb gfe
adfgec cbgef cgbfa debc dcefbg fbcaedg eb bfe agfbed cfdge | ebf fegdcb fcebg fdegbc
cabdfe badcf fbce fc cdf gecdfba dabcg gadcfe abgfed baefd | dcbfea dafeb dacgbef fabegd
caegdf bcfdg ga agd eagf cbfdage ecabfd ebdcga cfaed adgcf | efcdga gda adfceb agd
fedbca ebdg ebf cfbeg bfdceg bgfdca dfbgc gebfcad be cfage | dgcbeaf ebf cdfgab cbgfe
dgfbec ecbafdg cg cge efadgb egfabc gfac abgec dbaec agbef | ecagb agfc gc cfag
bcdae fgbedac fa facdb dbfcea aecfdg cfa faeb dgfcb dcagbe | ebacd dbcaef fabdc afbced
aedgcf fagce cadbg de dfgecb fead egadc dec dcafegb bgface | dafegbc de dec dbfecag
ecfab fegbd agfbe cebagd fgac dbcafe ag bafgec gea fdegcba | gdaecb bdafec aedcfb dbegf
bcdeg ega fgda gfabce afgedb baedcf beadg bfaed cdbefga ga | gdbae fbdgea ebdaf afdg
bgfdae ecbgfda bagec cgeaf ef dfacg defacg fdec egf dcfbga | dafgbec facge fgaec ef
dabef fgbad becagf fcbag gadc gd cgefdb gbfedca dbg gfcdba | gdac dcafgb cagbdf dg
bg gbdec abedgfc ecdbga ebadc bgda bfcage gbe dgecf cdabef | gcebd edabgc dcegf beg
bcdfea gd degbac adebc dgac cgebf fcgadbe gdbeaf gdb dcebg | dceba dgb gdca agcd
ad cfdaeb gdecab bgfdaec fead edcfb cebgdf cbdaf abd bfgca | dab adb gdecbf adb
gcfbd egcbaf cbgde afcdeg fb cbf cadfg fdbagc afdb efdbgca | fbda fb fb fbc
dfgbce cbaef ecdbf ca beafg dcaf bca cfaedgb ecafbd geabcd | fcaebd fcad afdc edfcb
becgfad adcfeb bg fbeagd gbf gfced badgfc abeg eafdb fbegd | bage gb bg gbf
acdebg faed fgeabcd cafge fca fa dgafce fbcge gabdfc gcdea | ebdcag fa af cbgefad
facebgd bfacg dcafe adfbc cfabed cdbe fcadge dba db ebfgda | cgbafed db fdcae fgbac
debca bacfgd gaefc adfcbge febg cgfaed fb baf ecafbg afbce | debcafg fb egbf fgbe
ecbdgfa cabfde faeg afdgc bdcga dcfae acfged fg gcf bcgedf | fecdgab cgf dbagcef fg
gefb edagfbc gdceb ge fecgdb dbcgfa gce fcgbd aegfdc bdaec | fbge gbfe egc fgcdb
cefgab dg dfg cegfb dcefag fgebdc dgcb dbafe afdbgce fdebg | dgfecba fcbedg fdgeb dgf
gb dbfg acefg agcfbed cabdef edacbg dbfca bga facgb bagdfc | ecbgafd bg gb bg
bdef bcgfd cbefdg bgceadf agecb fcgdea ecf efbgc afbgcd ef | cef febdgc fce fce
fegca egcdbaf gcfeb be agefbd aceb adcgfe geb eagbfc fdcbg | abgfdce ebac beg aecb
cabdgf dgbafec fedc egd agcbe dbcgf de bfdecg cbdge dfebga | efdc cdfe cedf bdcge
abgedc acfge dceafbg debcgf fd dfbe cdf cdabgf fgcde edgbc | edbacg agbfced dcf cfd
dgecf fcagdb fb gfbde gbf bgecdaf efcgad ecfb gbcedf dbaeg | gefbd bfg bgf efbc
dbgc gdcefab gcf gfdcab fceba aefdgb efacgd gcfab gc dabgf | bagecfd gacfdbe gfc aefcb
fb ecdabg cfaed fbegda gefabc bcgf febca gabec agbefdc afb | cgebda bfgc cafgeb fdgabce
efbdcg ceadgb fb fcb fbcda egfcabd fgcad abef dcaeb becafd | acfbd bdacf feabdc cbdfgae
cef degbf gcdefa cf bfca eabdc cbdfe caedbg acebfd efadbcg | febdc cedgab efc cef
edfabc efcab cgdfae efbdg ecfadbg acbd da bdafe gfaebc eda | beadf da fegbd aebdf
aebcg cef gfea gcbafde bedfac bcefg gdabec gcbaef fcgdb fe | gafdceb gbadec decafb cfe
acdbg gefbc decfab bcedag df gbcfd dafg cebagdf fgcbda fdc | df fdc dgfbc cgbdf
cg bgfca egbfa fgcaed acg fbcdae gcbd abdfc cafgdb fcegadb | bcagf abegf acg gcdb
ebdfgc geabfc facd ca adbce cdaefb efagbcd ecfbd acb dbeag | dacf bgacfde fadc dfbeac
cedbgf fagb gfabec fbdecag gbcae gf eagcdb aefcd cgf efgac | egbca aebcdg egcba eacbdgf
cgbdf db gdcef febacdg cdb bfed bfcgde bcagf gbedac defgca | cbd cabfdge bdfe bdc
cba egab gdbafc bcgefda ecgdb ba gbdeca cgedfb fdace aedcb | ab cab fcaebgd adecbg
cgdfb agbde cdgeab gce bcged agcefbd fdgaeb ce bfacge acde | ce cafgeb fdgcbae dgeafbc
fgbda cdfeab fgdaeb fgaed cedagfb aef bfcgda bgea ae dfecg | afdbg eaf bfdag eaf
fdgce gbcaf ace dcafgeb afecbg dagbce agfdbc ea eafcg ebfa | ebfagcd ae ae cafgbe
adfbgc dcgfbea efbad bef dbfcae cfae ef bcfda dbaeg bfgedc | fe bcadgf efbdcg afbcgde
ed eabgdcf bdfca aedg fecag ced cbfage aecfdg dgfebc dceaf | cde deagbcf cdbfage adge
fabc daebcg bdgecaf ca dcbgfe gbaecf fgeda acfge efcgb eca | bdegca ac ca efadg
ceagdf ce eadcf eacg edgafb dce ceadgfb defga abcfd dcgbef | ec dec fdgbace adebcfg
baf bgfdeca fa cgfaeb aefg bcafde cbgfd fbacg cgbae bacdeg | fbagc ceabg agbecf af
fabd db efcad debacg fbgce bdc ecdfb caebfgd egfdac bcfdae | dcb bcd bd dcbfe
dge dbeag acedb fcgdeb bfeag dg gbfeda fagd facbeg bfecgad | cabed egabf bafgcde edg
cebgf cfed gcdfabe cdgbfe bec ec fcbdg aebgf bcdgae cgdbaf | cdgbf bacefgd egfadcb fdacbg
baec cdeafg ce adgfcbe efabgd febgca gfbae dbgcf ceg fbecg | fgedab defgab bace ebdfgca
aebgf agefd eadcg dfab bdgafe efd dfgbeca fd fcdgeb fbaceg | dbefag df eadcg fd
fdcbe defbg gacedf gabe fgcbeda gb egadfb gfb gcabfd edfga | dgfbcea ebga fdgeabc gbea
gea bgadef fgcbead febcgd ae afde egabd cfgeab bfedg dbcga | eafd ceagbfd ae fcedbga
ebgcadf feacg dfbcag dfcgbe gefcd edbf de cde bgeadc dfbcg | dgecab cdebga gfdcb bfed
bdgfa egdfa afb aedbfg ab becafg beda cgafed fgdeacb dfcbg | fcgdea baf daeb aedb
cdgef ceafbd efadcg acgfd geadbcf ed gafbcd gcfeb aegd dfe | edag fcdagb edf cbdaef
fgcd gd ebfagcd cgfabe gcabdf dfeagb adg aebcd cfagb adbcg | cdbea bfgdace cfdg gd
gdafc dgbc cadfeg dbeafg acebf fgedabc dabcfg gba gb cgfba | gb egfdbca defcbga bg
bcedg aec eacgbdf cadge bcadfe dbgecf ebgdca ca fgdea bcga | bcag ca cbedg ac
dacbgf gc fcaedb egbfa dbcg fcaebgd edfcag cgf cafbd bcgaf | dcbg gfbca cdgb cadgfe
dcgabe eaf fgbaec cfdae ecadb fdgca ef fcdgeab dfbe cbadef | ebdf aedcgbf fe fae
edgbcf fe cegdfa ebcdg ecbfd gfeb facbd cef bcedag efcabdg | gabdce gdcbea ecf ecf
gdcab dgbcef fgdecab ca decfga gcdbf dac fcgabd debag bcaf | cbgafd cad facdgb facedg
afgec bgfaec bdefg dafeg dbcafg fgbeacd caed da dag gfecad | cade adce edca dgebf
bfdceg cbdgaf ec ecdfa egac dec dgfac deacfg agfcebd efabd | egca caegfd dec cgea
adfecbg gcfd afc fc geacb cdfeab ecagf gedcfa edgaf agfdbe | cf cagbe afc edbfagc
ebgdf abgec dabf acgdfe agd fbdgaec egadb da ecgdbf agefbd | ebadg ad da gad
ebdgca dacbf cb dafcbeg cbd afebdc ebcf cdgaf bfeda fadgeb | bc bcafed efcbadg fceb
agbfdc edag gafdecb cag afceg ga ecgbf aefdgc bdcfea cadef | ecgaf gade cag gac
cegadb gecd bgacd fdcaeb dbfag cg acbed agc bafecg gaedcbf | agc gacedfb adbgc dgec
cegfdab edba dabcg ceb egcdb bfacge dfecg cebdag fgabcd be | bec be dbea cfgabd
gacbfed gbfdac dfgeba edafcb gfd gefcb dg deag dfbge bfead | gfd aefcbgd gedbfca fgebd
gfcdab da afbgec adbfg afd gebdf fedacb cabgf dcag acgefbd | gfbad cdfaegb dfa cfbgad
gebafd fbgedc adgcfe cfbg cfd bdegf ecdfb gacdfeb edcba cf | fgebacd gfcb cdf cf
adebg ebdgac fadbe gebcfa gdfa dbfce afb gaefdb dgfabce af | fba afbde fa cgbaef
fcbead fc ecf acdeb cdegba fdbc fcedag baecf eabgf eabdfgc | ecf aedfcbg deagcfb cabefd
eba gbaedc bfacd fead ae fgabdce begfc dgcfba fcadeb faceb | bae dbagecf dfbac fadcgbe
edf bfeda dgface gbef aedgbc agdfecb aebdg acdbf ebdfag fe | edf fed gfeb begf
dcfabe gceba dbecgfa gbafe abf fcaged dfgb gaefd agdbfe fb | afb abf cbgea adgcbfe
bdgec fbe gefa acebfdg febgad abdgcf adbfec gfabd bedgf ef | ebf bfaedg ebf fe
debf aebfcg badcge dec dfcga gdbceaf ceafb ed edcfa debcaf | fadce afgbce fcdbgae dbeagc
gbfe cdfea febad fb egfbda fba agecbd dcgaebf bfacgd dbage | fgeb fbcaedg bf gefb
gecfbd gfdeab cgaedf fedcbag gbaf fb bfe dbfae bcead agefd | daecgf bfe bef bgaf
cfagd ec bcfdeag edagc decf bcafgd ceg fgcead gecbaf dbeag | ecg dacefgb baedg cadfg
be bedfga fdagb efagb cagfbed bge gdcfba ebdacg efdb eagcf | ebfdag fbed adfgb eb
fcbaeg gfb gcfbda bg eadgfcb edgfac bgadf cagfd deafb cdgb | fbadg bgcfda cbdg gadbfc
cbdaf db daebcg dfacbg fdgca aecgfd fdgb gbfdeca cebfa cbd | bfcea bdc cagdfb fdacb
gdfea debfa abfdgc dfb adbec fbge fgedca dfbcega bf dgefab | bf bfd fb baefd
baedcg egdba ea dgafb abce gbdcefa cebgfd aeg ecadfg bgedc | ae dabefgc ea ecba
dcafb bfdcg edbagcf bafdgc begafd gfac gf cafedb fdg bgcde | fdg dbfgc bdfeac gcaf
ba bac fdceb bedcgfa dafceg aecbdg fabg gdfac cdfba bgcdaf | gfadecb ceadfgb dabcegf ab
efgbdc decgb fecbd ebcgfa degf efc ef fbcad bgdaec gfdacbe | efc dbacf fe cgfbea
edafbc dgea egcbd fcegb ebdgcfa dcaeb cebgda gd acdbfg dgb | gdb degbfac ebdcg eadcb
efcgba becgf becdfg agc cbae fcbadg fgeca cgdafeb ac gdafe | abec gcfebd ac abce
fdc gfbcad cd fcadbe cdeb bedgfa efdab cegfa gfadbec eacfd | dceb bfeadg dcf bgecfad
dcb dbgfea cgaedb dc bacde begda acbef ecdg defgabc cdfgba | cedg dc bdc deacb
dbeafgc afcgb aefcb acg gbfda bdcg acgfdb cg cagefd begafd | cg gc acgbdef dfeacg
ecgbd fedgcb abgcd ebfdgca abgcf ad febgda deagcb eadc abd | dgecb da bedacg bacgf
cgfad afdec dcafbg efgadb dg dfbgeac gdf begfca dbcg afgcb | cafgb gdf ecbdagf bgdc
bf edfbgac fcb cadbgf gabf dceaf fadbc bdcga cgbade gcefbd | ebfdcga fb gdfcab agfb
gcef cagbfd edbcgf edgbf ef efb gbfcd eadgb edfbca gdfbcae | afebdgc fbe agbcfd abdge
bged fbaec fdecg eacfgd gfbec gb bgf cafdbeg gefbdc bgdcaf | gb fbagcde dgeb bdeg
gacefb gacfdb dgcebaf ac bagef bfaged egca efdcb acb fcbae | ac ecabgdf eagfb cgea
cbegd gfaedb bfgde ec bce efcd ecabdfg acdbg dfcbge bfaecg | cdef efdbg gfdeabc gdbafce
gebca edcagb ceafbd cde ebgcaf adgef cd cgdb aegdc dfgceab | fbedgac cd edgbafc caegfdb
cadbfe adbg cagbefd gbdace ebd fcebga cbeag fcedg dcgbe bd | bd bd degcf dfcaebg
efgabc agcedf cea gcead ec aedfg adgbef beacfgd bgcad cefd | adfeg ecgbdfa edfc ce
gcdeab aegcfd dacfbg fecg edc fedcagb dgfac ce adecf afedb | fdacge efacd cgabde bdeaf
fc facgeb eabgf cfb gcfa cgfbe edagbf afecgdb cgedb cedfba | cagf bfc dfbega ecbadf
gfeca da gfaecb fad cbefd fdcbgae beagdf ceadfg afedc adcg | fad cdebf cdga dfa
gdbace gabdfc fbdge ceaf cfadb ebc becfd fadceb cgfadeb ec | ce ecb fcbed ecgafdb
cfebad adfegc befca bcdag afd efdb fd gafbec efcbdag fbadc | fda fdeb fda dacfgeb
befgcd adgcbe bdgea fdg efdca gf fdacbge eagfbd efgda bfga | abgde gdf cgaebd ecfad
bgfe cbgfda gcedab defac fg eafgbc agceb bcdfaeg cgf cgefa | adbefcg gbfaec fbcaeg fcg
gfdacbe fdaeb afg fg fdbaeg gfdb cegba efgba cafdge ecdbfa | gfadbe fga afg gaf
dfgea eagdcb gfaec gedafb fadb dgbcefa ade fgbed defcbg da | ad da ad da
bfa bcfga ecgfab cfage cagdbfe gdecfa fdaecb bf dcagb gbef | ecbadf gacebf fab cfgbeda
bafedc fbace bfeg ge gecdab dcgfeab fgeacb ceg caegf dgafc | fbeg ceg eg eg
edgcab dafeb fad cdbae df acfdge bdcf bfgcaed aegbf bcadef | defgcab eadcgbf efbag adcfgbe
egafb afg egac gcfbe cabdfg fbdae ecfbdg caefbgd cgeabf ag | fegab agec fgcebda egac
bfegdc cdg gc gcfb dgaecb cdfeb gefdc egfad dgbefca acfebd | agdceb bcfegda gc cfbg
ebc edfcb gcadbfe bgde facde bfcged dfagcb be fcdgb aecfbg | cbe fbcdg bce eb
adfcgbe fbda dbeag gbdefa dfgcbe agcfe gedfa adcegb fd gdf | gfd fd gfeabdc fgade
fgdb degfca fgcdbe cdfeb afdgbce dg ceagb cdg ecbgd beacdf | gd cgd dcg bagcfed
baedfgc ade eadcf gdaf gface da dbcef egdafc eacbfg bagecd | ad afdg dea dea
acfdg aedbcf beagdc ebdfa age gebf eagfbd ge gdcbfea dfgae | bgcdae ega abdgfec gbfe
efbdg cdb edfac bcae gbcfeda adegcf bceafd abcgfd febcd cb | aebc fdaec gcfabd cb
bf fbgdc bcedg acedbgf bdafgc adfgec cbfa dbf befdga dfcga | dbf fdcega fbd debgaf
fecgba bedca egfdcab dg bcgdaf afdg bdgac gfedbc bfgca cgd | bgacf cagdbfe gafd cgfebd
gf fedg afg dacfg cgaebf bafcd aedcgb gcedaf geabcdf dgace | gfa gf cbaged cbegfad
afegd bgeadc ebcgaf gedac dc cgd cgbfde ebcga cgfabde dcab | gfabdce dc eadcg abcd
cdage df edafg baecdgf gcedab cafd egabf fed fadgce cdbgef | fd df fd def
agdefcb acdbge bdga bg abcegf dfgce gdcbe cebad ecadfb bgc | bagd adgb dgafceb bgc
bgdea cbegfa efdgca gfcebad bgdf fgeab dagefb eacdb deg dg | gd dg ged fgdb
adgfc afebdgc gaebcf cbaefd geba dfecgb bacef gce eg fgeac | dagfc gcfbdea efcgab gcafeb
gcfd fgedcb ecgbafd agcebf gbefc afdeb dbefc dc dcb gebdca | dfbce cdfg efagcbd gfcd
acgf aegdf gcdeb egafbd ceadbfg eac ca aegcd ecdbfa fegadc | gfdae gfbdace defag cea
fbgcda ecdbag degfc fg efbg edgafbc cgdbe fcdae cgf befgcd | gfc efcad bfegcd dgbcaef
df dgcae fdgcba fgbca fbcead fdgca dgefcab afd afbceg gfdb | df bfadcg dfbagc df
fdbe egacd bcgfe aebfcg fd decafgb fecdbg abfdgc fdc cfedg | dfcabge acged edfb df
ecfdg eg dfbcg fdcabg beafgd acefd efg egfcdb gcbe dbfeacg | dbcaefg eg egf gef
bdgfea dgeca fc cdbfge bcfgda gbfdeca cbef edfgc cdf gbfed | bfdcge dcf fgbde fecb
gcdfeb cgfabe cgbfe egcdb dbfe cdbgfa bd bcd aedfcgb aecdg | db fcageb gfbeadc bcd
bagec bfcg fceab adgcef fedab agbced gcfbea deagbcf cfe fc | ebacg gdefbca bfcea fce
bacg gae dbafcge becfg ceabfg efbad ga egabf fcgebd agcfde | dbaegcf aegdfc gcba abgfe
daceb dfgc bgdfe gdbec efdgba acgefbd abcefg bcfegd cg bcg | ebfdg bcfage dfcg cbdea
dbagf dfec agced cgf fbcgade cf efcdga decagb adfcg fabgce | edfc fdec fcde cfde
gcdfa dagcbf agcfb fabegd gd cgbd afcde fgaceb fgd afgbdce | gd gd dgbc gfcdeba
ecfd dfcagb ebcga ebdgf bcafdeg cf cfg bdgaef egfbdc bcfge | fbdge cf begca bcfegad
da gdabfe egdfa gfdbca dcgfeba gefdc deab fbgae fcabeg fda | fda ad dfa beafcg
bgdfce ed dcebfa febgc gedfc cfgaebd gbde fgecab cde acgdf | dgecf bdeacgf dec ed
gcde ebcfgda dbecfa cgfbea gc gfc fgdace dfagb gadfc acedf | abdgf abecdfg cgde gfc
bgeda efcgbad dbcaef fcaegd abd bfegda ab gcebd afgb eafgd | ab ba ba fagb
cebfa aebcfg cgbfa egbf ceb cbgfeda ebcadg bfagdc eacfd be | ebfgac ebc bagecf gfeb
"""
    
    public init() {
    }
    
    public func getInput() -> String {
        return input
    }
    
    public func getInputDebug() -> String {
        return inputDebug
    }
    
}
