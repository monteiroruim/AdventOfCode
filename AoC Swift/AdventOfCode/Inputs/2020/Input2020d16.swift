//
//  Input2020d16.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 16.12.20.
//  Copyright © 2020 Pereira Orlando. All rights reserved.
//

import Foundation

class Input2020d16 {
    
    static let ticketTranslationDebug = """
class: 1-3 or 5-7
row: 6-11 or 33-44
seat: 13-40 or 45-50

your ticket:
7,1,14

nearby tickets:
7,3,47
40,4,50
55,2,20
38,6,12
"""
    
    static let ticketTranslation = """
departure location: 36-269 or 275-973
departure station: 25-237 or 245-972
departure platform: 34-576 or 586-967
departure track: 48-199 or 206-959
departure date: 31-172 or 194-962
departure time: 34-448 or 454-955
arrival location: 42-400 or 419-965
arrival station: 36-528 or 551-956
arrival platform: 46-456 or 466-960
arrival track: 48-293 or 303-966
class: 50-796 or 818-950
duration: 46-589 or 610-957
price: 38-55 or 66-957
route: 37-144 or 154-961
row: 48-832 or 853-949
seat: 40-495 or 516-952
train: 32-429 or 441-971
type: 27-338 or 355-955
wagon: 42-473 or 488-973
zone: 26-379 or 386-972

your ticket:
127,109,139,113,67,137,71,97,53,103,163,167,131,83,157,101,107,79,73,89

nearby tickets:
288,283,266,637,119,712,555,718,872,424,828,751,364,159,611,296,659,741,264,334
379,882,776,918,706,913,261,273,52,247,314,620,693,918,254,927,784,264,455,768
635,749,898,927,288,54,76,319,396,909,938,69,450,732,796,78,95,683,76,626
335,564,317,521,108,221,552,619,762,285,7,264,118,865,702,867,786,620,96,878
692,863,626,399,692,143,896,359,325,695,427,555,912,715,79,616,525,786,624,244
730,420,455,522,945,66,167,722,897,902,400,571,76,393,337,204,256,942,781,159
783,672,904,156,197,693,271,568,92,427,397,630,645,376,393,206,171,658,356,904
124,912,885,667,949,97,473,369,557,895,367,909,531,748,322,905,399,121,321,81
119,81,785,924,897,273,725,527,629,569,89,367,158,317,703,83,360,827,561,668
824,355,727,423,909,742,139,6,735,317,767,731,699,926,731,673,757,167,70,87
98,361,638,666,573,379,747,571,306,946,205,105,662,685,723,278,902,824,269,141
761,737,877,71,284,249,424,774,886,278,571,468,848,640,853,895,226,889,718,650
324,232,209,79,83,714,123,649,667,884,443,762,728,130,688,574,587,249,413,792
428,292,426,326,9,234,553,747,660,721,690,646,526,492,831,98,712,356,743,671
586,775,765,220,872,821,785,727,255,359,76,938,135,368,320,663,368,320,242,870
100,617,495,785,755,293,703,370,237,270,899,757,687,132,859,665,275,625,552,334
588,670,221,620,948,655,122,446,309,364,169,618,716,633,259,133,535,864,734,709
314,330,474,524,639,369,589,897,723,54,828,634,70,358,356,940,525,876,427,73
743,215,821,634,127,704,212,526,818,65,311,946,333,761,736,695,712,313,78,397
787,612,881,15,371,196,247,519,895,208,821,707,135,495,945,112,517,626,136,456
520,426,923,688,749,68,616,388,782,709,641,265,729,375,328,262,899,235,577,927
24,790,745,215,826,129,821,555,659,641,719,213,792,54,795,261,163,942,948,559
420,422,360,733,88,224,80,761,95,393,819,670,306,294,83,698,96,194,170,491
258,221,895,207,620,241,732,731,776,629,313,614,101,516,142,358,93,102,293,926
576,643,446,863,566,223,330,776,204,636,692,659,517,655,123,942,135,555,307,326
206,141,101,396,562,576,791,559,624,659,727,329,278,244,777,680,628,527,710,637
913,358,657,887,426,148,876,265,156,884,648,87,259,51,356,126,522,624,164,163
858,451,888,698,794,521,696,676,726,738,567,214,76,723,828,307,396,94,896,259
252,715,673,85,520,910,447,650,427,644,429,862,765,629,108,949,867,937,62,237
889,660,917,771,306,713,528,825,788,920,424,671,321,424,552,519,700,912,441,452
137,303,695,473,664,291,949,902,746,338,757,993,194,219,904,86,365,712,706,389
705,690,882,425,828,686,371,758,557,371,338,739,616,476,108,726,695,752,895,135
877,894,748,362,561,932,141,138,312,730,761,443,309,173,234,634,327,228,51,314
635,300,715,929,627,84,920,796,575,263,51,102,336,105,689,934,641,130,68,325
649,303,764,202,278,790,169,746,920,246,276,616,194,388,691,675,70,921,333,747
318,869,211,70,235,549,557,684,455,757,127,157,621,615,79,714,164,745,279,611
552,618,337,906,917,654,142,213,378,472,565,400,734,733,228,485,685,723,266,195
693,886,89,52,444,223,854,694,614,830,60,795,573,551,789,329,692,671,789,446
653,117,455,554,521,139,745,942,446,421,0,857,893,247,310,628,142,557,565,819
267,376,366,641,445,663,62,356,335,789,742,569,106,111,714,113,703,51,115,566
637,103,456,220,858,751,929,106,710,221,767,654,577,820,247,311,552,586,789,906
671,674,658,320,136,173,667,120,861,471,197,93,214,90,290,208,766,568,617,115
861,245,135,253,765,117,919,429,136,468,769,903,903,585,257,776,132,268,336,657
681,422,994,495,642,567,922,92,569,83,223,134,721,197,329,212,853,551,363,638
624,562,522,745,921,228,572,378,571,243,908,629,575,386,693,305,137,757,250,900
736,466,99,243,573,77,830,829,900,824,879,232,490,363,738,901,316,121,873,221
556,74,825,915,616,267,196,316,857,400,337,628,732,139,310,229,307,618,197,533
442,334,492,89,738,251,285,129,693,939,451,316,555,917,335,902,119,563,362,329
832,245,309,616,373,523,697,877,263,687,374,399,59,125,650,303,655,771,877,919
114,612,922,935,793,899,744,127,701,334,926,986,685,245,938,935,111,422,705,316
947,724,587,445,881,512,775,308,823,712,134,159,557,231,80,266,696,657,227,357
358,662,319,566,638,111,114,466,726,574,112,728,636,531,732,673,669,646,623,670
130,742,930,617,235,666,227,110,881,714,484,829,469,293,107,223,447,101,114,248
290,381,121,213,615,780,823,320,756,73,236,821,289,253,393,471,735,327,312,139
635,87,82,142,50,237,718,120,535,367,715,388,646,75,97,876,680,702,276,722
372,421,164,289,165,373,770,371,827,892,191,881,128,790,730,528,144,915,665,326
642,890,824,554,822,823,877,331,521,765,217,650,572,754,610,323,722,928,721,302
865,913,423,828,884,207,749,276,240,490,144,749,790,794,362,669,326,680,140,674
81,159,944,659,729,717,613,247,280,774,310,874,722,235,487,905,656,379,890,660
267,546,736,196,733,565,735,765,819,754,818,140,619,897,622,112,901,687,866,878
327,915,670,468,733,923,925,365,872,154,921,159,378,610,907,829,467,15,424,113
712,871,376,716,277,396,265,119,859,67,151,724,164,91,256,914,646,788,739,375
864,703,752,334,372,919,685,702,875,947,556,777,642,722,87,908,486,278,643,640
784,745,4,650,690,634,634,796,864,788,674,224,660,566,277,119,689,753,444,789
566,185,167,924,721,247,446,67,859,315,245,257,712,739,620,936,90,395,141,161
692,749,823,264,678,699,996,247,92,611,796,387,226,90,370,918,858,587,587,631
946,518,263,320,874,336,264,426,429,445,711,84,132,781,206,704,945,24,377,217
143,621,863,72,705,99,863,359,425,470,649,666,202,778,194,282,553,652,614,137
551,899,742,249,735,889,639,426,685,910,325,50,408,666,718,558,286,55,399,641
55,744,615,355,949,215,319,88,278,232,899,162,155,895,128,70,287,559,695,844
638,644,113,444,747,902,143,394,927,678,871,763,703,823,60,325,165,212,375,689
571,393,861,138,386,95,329,477,260,687,774,948,393,763,234,685,706,827,156,116
269,322,867,686,142,491,200,305,752,879,908,721,571,247,367,378,116,762,230,869
925,520,939,7,131,940,554,158,335,119,750,758,712,635,252,228,198,315,222,319
778,555,918,260,355,85,670,129,167,724,599,824,665,794,909,899,166,373,653,754
252,563,716,237,376,876,120,425,854,113,818,642,235,471,3,930,371,765,395,682
925,124,773,247,394,640,218,630,929,72,904,617,592,900,868,944,913,130,726,665
87,985,745,265,945,100,682,703,321,914,97,518,490,525,310,883,251,612,332,211
105,104,664,447,392,391,168,245,949,741,155,752,318,521,271,792,712,556,703,948
75,637,588,701,907,525,892,828,69,181,521,226,368,132,781,162,362,310,376,293
788,860,232,72,160,79,123,898,552,936,467,84,700,119,879,948,471,419,864,56
725,674,135,611,488,782,644,830,324,74,660,912,744,170,730,10,276,526,678,257
116,791,884,860,555,858,615,528,559,283,813,730,260,520,234,493,708,422,854,752
445,665,96,18,361,444,368,100,82,283,763,895,684,869,362,290,885,196,390,397
286,129,448,830,523,573,85,248,732,200,665,325,893,619,565,643,772,717,744,716
941,220,891,124,874,868,131,131,733,316,419,716,95,211,297,885,615,54,246,136
314,389,894,790,699,678,557,788,304,553,864,552,780,867,79,83,306,853,548,214
917,92,322,687,330,635,297,220,746,424,95,228,492,106,132,307,254,94,80,943
642,332,711,245,744,760,897,335,683,83,738,919,434,735,234,526,904,780,140,615
355,612,664,360,69,612,712,886,821,452,166,615,681,896,566,155,587,119,288,489
267,522,937,945,784,570,250,492,753,236,832,753,383,680,276,703,212,633,935,939
197,553,936,255,745,668,994,939,795,783,746,705,753,648,945,729,701,258,726,707
213,731,234,377,248,650,886,55,133,467,726,745,78,366,85,468,101,479,831,885
217,874,936,827,686,764,386,535,574,732,926,929,669,702,118,563,253,631,137,729
626,246,702,617,528,453,76,884,919,454,703,454,104,691,359,219,207,365,330,822
475,672,74,456,712,93,789,155,446,387,854,709,865,99,787,777,144,893,792,377
426,134,280,466,761,779,441,659,366,568,161,519,648,868,96,289,371,473,300,368
686,664,898,880,752,197,127,84,525,86,622,764,646,216,123,578,323,324,922,250
307,717,307,132,832,687,283,737,124,754,692,50,496,555,562,394,676,910,335,338
424,258,566,879,399,224,317,760,362,100,377,684,905,373,753,854,887,443,380,308
831,860,767,557,71,941,89,943,279,769,135,143,627,868,79,869,283,211,835,269
378,616,112,913,636,302,120,898,319,670,569,896,895,943,469,392,388,165,657,245
103,390,653,263,702,334,207,687,634,828,515,136,330,628,915,909,198,941,696,614
256,642,789,668,81,140,258,422,729,648,109,734,368,199,560,97,139,287,739,270
645,825,253,84,494,865,171,428,758,154,568,933,263,671,262,574,214,394,272,720
902,468,869,762,941,903,88,371,282,717,222,937,744,230,165,146,471,157,693,170
493,147,472,397,749,207,720,523,694,622,701,71,488,562,471,571,208,286,726,934
75,311,559,292,196,913,551,122,949,712,947,829,927,468,715,385,320,75,690,466
488,673,627,630,400,72,900,589,688,160,881,73,214,160,889,868,571,244,376,490
920,284,310,678,72,727,861,102,756,917,572,893,241,370,157,98,88,167,696,518
157,785,939,295,103,856,895,787,260,557,792,237,357,524,588,207,758,913,232,233
291,890,143,110,469,158,221,388,683,916,759,877,663,107,361,93,74,372,828,23
735,334,769,156,576,616,662,141,253,427,789,944,631,452,897,691,633,275,124,280
790,577,626,875,376,112,720,589,788,656,649,280,125,276,290,468,893,307,122,925
643,759,390,865,724,701,266,909,758,866,819,372,419,424,162,159,929,222,196,981
824,108,330,926,119,165,468,119,429,233,736,420,622,679,225,689,554,189,236,519
68,359,734,216,900,635,104,638,118,388,69,199,279,762,719,285,470,623,261,193
947,706,89,896,636,944,684,769,760,569,223,657,319,234,553,998,156,468,902,687
586,55,392,671,333,832,615,650,363,683,259,675,285,269,747,676,914,585,749,702
881,96,72,700,491,52,879,795,495,902,400,114,724,864,213,243,636,325,921,907
670,65,248,473,195,429,562,278,727,490,883,719,318,280,877,729,925,372,386,374
615,909,259,399,399,618,154,92,682,908,74,137,626,635,898,332,77,202,923,72
170,621,656,711,755,495,51,691,559,85,716,735,858,589,859,648,331,774,515,371
262,252,100,719,358,803,918,704,876,456,324,376,93,703,643,245,250,905,763,395
929,50,420,81,921,338,885,319,421,51,709,763,421,414,630,121,317,194,370,218
731,489,325,76,713,65,169,889,313,709,164,124,428,363,829,641,860,941,676,877
931,261,315,855,877,899,658,565,575,370,905,667,298,645,647,325,629,254,616,644
738,258,66,745,74,485,72,689,781,327,139,688,92,745,363,473,391,267,903,307
795,309,169,419,554,896,324,429,452,490,276,653,218,856,330,225,523,892,262,328
358,72,444,367,912,524,687,906,585,220,267,929,165,922,216,859,557,336,712,775
12,125,261,555,260,233,895,664,555,285,652,893,493,709,327,944,454,106,824,328
256,889,710,480,455,313,522,919,281,824,754,868,290,361,73,468,932,915,378,330
706,375,678,721,314,387,715,937,138,172,640,722,757,194,196,754,87,271,744,724
372,80,698,215,424,572,140,312,253,494,646,324,871,784,753,564,940,60,570,288
786,785,277,283,325,231,669,279,646,918,536,703,917,75,892,227,564,923,762,693
869,649,228,748,560,694,728,892,619,688,299,53,215,206,226,926,399,857,363,311
727,446,335,901,737,884,81,123,489,253,924,895,620,272,613,247,855,910,157,715
795,456,681,910,898,621,136,54,324,937,929,710,665,165,159,839,293,701,194,766
263,68,680,286,86,826,194,622,656,299,897,279,290,561,50,572,889,248,324,792
639,888,129,735,366,223,770,358,740,782,701,671,235,321,761,363,790,131,201,925
51,114,206,925,335,80,765,227,423,371,470,388,422,209,624,308,76,144,709,21
321,754,526,231,622,834,944,751,75,254,821,258,428,135,704,643,934,138,66,663
207,278,92,169,232,291,909,695,272,136,492,454,796,752,778,706,796,234,428,113
288,274,156,225,127,220,587,945,749,252,883,75,916,692,324,466,776,389,232,682
161,945,80,260,125,519,486,661,257,561,422,223,751,248,756,560,710,170,88,785
330,325,697,757,755,715,24,637,761,362,930,918,171,870,375,229,359,935,258,717
613,881,726,303,395,526,853,673,361,419,667,119,643,837,367,896,858,368,685,716
830,555,720,135,250,884,88,930,276,723,162,997,588,104,394,527,638,728,139,688
750,142,529,889,291,664,222,762,641,109,941,134,779,210,170,133,378,758,253,933
327,215,937,95,67,356,676,647,565,539,125,913,772,719,421,231,948,761,640,611
718,244,618,726,314,727,102,649,562,196,77,325,129,701,915,931,288,216,678,770
746,16,569,222,636,916,362,789,674,527,251,170,772,74,292,489,828,653,686,128
223,763,569,565,119,400,882,423,122,926,355,826,853,422,309,391,796,541,524,635
893,519,748,491,901,494,144,565,899,522,679,285,389,888,870,618,923,295,623,771
333,762,555,792,375,561,855,77,752,264,396,222,492,646,790,388,899,652,482,237
740,873,652,908,697,585,765,867,920,877,222,633,80,471,922,622,700,336,495,247
707,695,141,744,219,421,933,419,379,467,293,693,651,615,860,905,735,567,2,166
248,633,258,997,358,469,660,165,361,670,111,66,721,105,141,869,215,168,925,723
624,683,658,448,738,593,755,357,250,210,337,560,781,770,369,312,707,468,612,553
317,898,231,117,895,775,677,892,363,372,389,287,878,719,690,540,586,427,868,66
555,686,306,708,338,755,495,570,469,794,793,785,145,247,656,764,686,218,819,469
748,256,552,524,886,315,774,377,371,674,680,672,158,88,429,449,276,937,258,757
82,605,488,671,395,651,861,938,896,373,231,230,728,826,280,874,873,334,831,689
899,418,567,619,115,50,92,571,902,128,902,492,573,92,697,610,558,649,856,70
163,517,737,125,905,638,903,551,755,618,892,663,662,696,81,936,62,55,235,829
819,285,933,73,394,83,554,394,237,217,789,360,875,360,757,869,102,92,882,204
94,371,160,230,869,588,738,287,206,224,787,821,627,862,116,129,264,841,143,68
863,454,873,622,759,159,454,212,109,620,373,712,634,747,379,394,625,989,557,742
125,393,919,304,734,469,246,681,688,285,747,682,997,264,420,689,824,675,778,675
419,742,525,257,81,467,399,671,331,126,287,563,270,738,95,716,390,664,678,280
691,878,895,270,765,686,921,717,448,99,832,645,72,158,466,262,109,319,666,615
651,236,721,395,472,218,730,316,168,279,317,765,765,428,645,92,420,292,112,151
98,893,743,109,785,570,490,21,901,697,285,330,196,469,397,257,706,660,100,766
891,748,124,94,884,725,941,927,826,482,233,933,327,212,84,889,319,735,323,106
822,310,784,53,611,554,386,93,287,694,638,898,292,56,735,639,210,880,618,120
679,628,310,537,113,264,199,725,708,666,364,225,690,664,704,245,216,308,87,626
565,788,621,67,611,216,614,575,226,386,841,915,495,332,172,672,427,939,172,755
254,937,308,665,944,693,730,391,456,334,774,308,370,557,775,181,194,937,518,106
143,261,213,51,209,861,96,863,705,197,278,929,265,109,71,880,712,106,232,486
879,476,780,702,313,232,776,445,82,710,447,443,157,634,232,392,745,257,857,161
372,947,237,163,446,100,80,370,680,231,900,769,933,423,991,116,107,567,265,377
426,528,931,862,713,141,427,748,481,563,282,338,695,109,923,78,570,528,306,615
854,563,160,468,235,725,704,747,787,982,466,446,368,618,949,122,446,650,494,197
709,785,429,750,919,454,164,946,788,818,311,922,68,776,365,8,112,679,359,673
626,766,293,941,87,121,822,917,495,587,925,167,173,256,75,100,712,685,664,355
296,75,306,218,215,564,136,633,96,734,391,311,832,427,251,864,374,779,257,874
779,563,616,574,873,653,535,113,396,289,910,103,926,666,657,93,338,218,393,316
683,757,635,195,107,236,665,96,997,570,727,648,575,905,573,755,669,285,469,916
552,898,880,881,749,308,328,228,655,237,719,889,522,317,78,308,295,588,314,653
552,303,399,306,426,490,284,422,828,113,212,395,24,396,694,671,490,739,472,259
446,520,251,523,331,628,768,792,125,524,581,743,700,736,823,424,287,206,706,792
617,309,116,356,545,259,949,781,779,899,320,719,574,826,676,780,642,335,714,390
630,508,611,375,234,520,93,662,565,317,745,216,525,441,104,518,338,880,922,828
85,906,371,866,677,665,393,640,891,332,82,588,220,147,666,636,256,421,66,745
323,706,493,166,276,222,422,276,94,781,381,442,861,887,712,694,162,142,726,672
658,777,731,287,281,867,891,67,118,260,364,749,236,649,424,853,216,451,236,279
550,422,211,898,946,127,157,883,869,167,163,725,761,131,755,720,896,938,84,948
447,574,211,232,280,625,241,392,82,133,698,455,775,313,902,219,372,910,95,263
894,891,424,619,939,303,112,671,124,702,119,208,990,853,314,468,701,399,290,284
701,94,696,776,695,456,638,702,196,700,716,368,788,118,84,58,91,307,939,491
854,222,303,213,236,934,731,356,656,617,305,918,678,383,71,495,820,896,643,262
652,95,728,83,670,203,853,714,254,316,79,314,137,586,368,731,323,196,220,521
657,921,334,190,468,692,333,935,333,775,266,859,691,821,428,568,103,670,727,892
375,925,54,694,523,444,443,944,67,454,404,904,725,133,694,292,321,368,442,359
688,620,334,880,622,314,400,722,64,360,335,676,655,708,277,265,690,725,469,208
524,673,771,213,561,829,444,206,298,68,138,97,76,666,137,897,740,247,170,794
472,901,793,447,256,332,636,240,230,674,738,448,289,731,422,376,520,779,76,820
164,246,903,392,558,794,275,876,777,727,915,249,488,200,364,378,878,74,396,429
662,625,54,392,624,619,903,157,365,50,271,221,93,323,311,762,899,87,557,937
638,206,860,252,830,405,660,420,914,915,774,55,894,934,110,247,821,623,157,51
681,123,920,276,939,640,788,96,872,328,244,525,245,898,730,132,901,621,336,774
939,23,259,488,471,217,614,769,284,74,361,138,379,258,877,524,915,630,630,882
93,200,251,612,524,86,646,362,758,568,255,132,909,868,646,880,395,52,81,257
305,930,926,860,662,494,287,224,69,695,705,925,799,396,623,330,779,873,195,562
640,376,454,741,112,611,825,112,469,769,488,695,291,82,445,978,328,105,311,630
327,356,691,293,399,947,757,324,687,194,267,792,941,741,84,725,649,120,180,830
68,838,650,144,647,228,167,744,389,445,311,520,198,878,829,93,616,888,326,746
747,208,329,143,674,382,941,194,626,556,379,588,284,633,83,80,321,906,132,329
616,278,927,57,130,683,680,749,92,136,891,699,303,85,280,715,251,137,370,286
765,527,695,941,861,720,517,624,558,990,77,629,215,551,631,77,895,622,552,53
155,366,263,524,217,284,669,297,119,137,93,856,89,394,925,123,253,742,763,396
827,280,251,879,131,86,121,644,697,731,393,896,198,231,369,158,55,257,449,936
365,910,686,312,213,437,359,588,155,650,728,264,700,495,701,312,552,711,894,398
265,574,666,922,68,705,933,441,662,930,355,857,266,263,388,370,96,395,992,866
775,363,225,258,712,86,91,759,754,251,255,641,884,81,532,78,141,324,642,642
66,695,121,656,84,651,211,364,173,894,822,91,285,224,88,640,912,315,66,735
528,929,875,653,304,696,216,882,99,82,314,878,976,470,899,697,162,694,921,619
316,210,125,466,935,760,92,309,619,784,768,473,587,633,920,270,769,250,327,218
368,873,864,696,374,733,276,312,738,887,657,569,575,472,211,254,759,979,715,791
640,103,289,50,757,357,586,650,393,304,444,223,479,422,553,471,664,211,327,621
197,160,290,790,489,457,915,392,628,653,656,329,104,573,230,516,156,377,309,246
939,419,672,360,865,518,228,774,319,237,329,129,675,975,576,171,865,229,379,617
519,338,670,868,664,636,322,65,924,310,171,473,922,857,212,109,253,868,771,687
197,925,882,358,426,777,626,255,784,696,285,698,66,689,928,105,221,563,862,580
55,652,790,528,928,288,829,696,746,622,896,129,565,127,280,427,938,911,153,633
"""
    
}
