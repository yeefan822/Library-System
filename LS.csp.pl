:- dynamic parserVersionNum/1, parserVersionStr/1, parseResult/5.
:- dynamic module/4.
'parserVersionStr'('0.6.2.1').
'parseResult'('ok','',0,0,0).
:- dynamic channel/2, bindval/3, agent/3.
:- dynamic agent_curry/3, symbol/4.
:- dynamic dataTypeDef/2, subTypeDef/2, nameType/2.
:- dynamic cspTransparent/1.
:- dynamic cspPrint/1.
:- dynamic pragma/1.
:- dynamic comment/2.
:- dynamic assertBool/1, assertRef/5, assertTauPrio/6.
:- dynamic assertModelCheckExt/4, assertModelCheck/3.
:- dynamic assertLtl/4, assertCtl/4.
'parserVersionNum'([0,11,1,1]).
'parserVersionStr'('CSPM-Frontent-0.11.1.1').
'dataTypeDef'('BOOK',['constructor'('book1'),'constructor'('book2'),'constructor'('book3')]).
'dataTypeDef'('STUDENT',['constructor'('Jeff'),'constructor'('Zach')]).
'dataTypeDef'('STATUS',['constructor'('available'),'constructor'('unavailable')]).
'dataTypeDef'('RESPONSE',['constructor'('yes'),'constructor'('no')]).
'channel'('register','type'('dotTupleType'(['STUDENT']))).
'channel'('delete','type'('dotTupleType'(['STUDENT']))).
'channel'('login','type'('dotTupleType'(['STUDENT']))).
'channel'('studentexist','type'('dotTupleType'(['STUDENT']))).
'channel'('record','type'('dotTupleType'(['STUDENT']))).
'channel'('logout','type'('dotTupleType'(['STUDENT']))).
'channel'('borrow','type'('dotTupleType'(['BOOK']))).
'channel'('return','type'('dotTupleType'(['BOOK']))).
'channel'('read','type'('dotTupleType'(['BOOK']))).
'channel'('reserve','type'('dotTupleType'(['BOOK']))).
'channel'('add','type'('dotTupleType'(['BOOK']))).
'channel'('remove','type'('dotTupleType'(['BOOK']))).
'channel'('checkbook','type'('dotTupleType'(['STATUS']))).
'channel'('allowreserve','type'('dotTupleType'(['STATUS']))).
'channel'('checkstudentborrow','type'('dotTupleType'(['RESPONSE']))).
'channel'('deleted','type'('dotUnitType')).
'channel'('failed','type'('dotUnitType')).
'channel'('instock','type'('dotUnitType')).
'channel'('out','type'('dotUnitType')).
'channel'('alreadyreserved','type'('dotUnitType')).
'channel'('borrowsuccessful','type'('dotUnitType')).
'channel'('reservesuccessful','type'('dotUnitType')).
'channel'('confirm','type'('dotUnitType')).
'channel'('reject','type'('dotUnitType')).
'channel'('upgrade','type'('dotUnitType')).
'channel'('setcategory','type'('dotUnitType')).
'channel'('setauthor','type'('dotUnitType')).
'bindval'('CHECKBOOK','[]'('prefix'('src_span'(13,14,13,20,469,6),['in'(_b)],'borrow','prefix'('src_span'(13,24,13,33,479,9),['in'(_x)],'checkbook','val_of'('CHECKBOOK','src_span'(13,37,13,46,492,9)),'src_span'(13,36,13,36,490,13)),'src_span'(13,23,13,23,477,26)),'prefix'('src_span'(13,50,13,57,505,7),['in'(_b2)],'reserve','prefix'('src_span'(13,61,13,73,516,12),['in'(_x2)],'allowreserve','val_of'('CHECKBOOK','src_span'(13,77,13,86,532,9)),'src_span'(13,76,13,76,530,13)),'src_span'(13,60,13,60,514,29)),'src_span_operator'('no_loc_info_available','src_span'(13,47,13,49,502,2))),'src_span'(13,1,13,87,456,86)).
'bindval'('STUDENTLOGIN','prefix'('src_span'(15,16,15,28,559,12),['in'(_u)],'studentexist','prefix'('src_span'(15,34,15,39,577,5),['out'(_u)],'login','[]'('prefix'('src_span'(15,45,15,52,588,7),[],'upgrade','val_of'('STUDENTINSTANCE','src_span'(15,54,15,69,597,15)),'src_span'(15,53,15,53,595,24)),'val_of'('STUDENTINSTANCE','src_span'(15,71,15,86,614,15)),'src_span_operator'('no_loc_info_available','src_span'(15,69,15,71,612,2))),'src_span'(15,42,15,43,584,48)),'src_span'(15,31,15,33,573,59)),'src_span'(15,1,15,87,544,86)).
'bindval'('STUDENTINSTANCE','[]'('[]'('[]'('[]'('prefix'('src_span'(17,20,17,26,651,6),['in'(_u2)],'record','val_of'('STUDENTINSTANCE','src_span'(17,30,17,45,661,15)),'src_span'(17,29,17,29,659,19)),'prefix'('src_span'(17,49,17,55,680,6),['in'(_b3)],'borrow','prefix'('src_span'(17,59,17,68,690,9),['in'(_x3)],'checkbook','|~|'('prefix'('src_span'(17,73,17,89,704,16),[],'borrowsuccessful','val_of'('STUDENTINSTANCE','src_span'(17,91,17,106,722,15)),'src_span'(17,90,17,90,720,33)),'prefix'('src_span'(17,109,17,112,740,3),[],'out','val_of'('STUDENTINSTANCE','src_span'(17,114,17,129,745,15)),'src_span'(17,113,17,113,743,20)),'src_span_operator'('no_loc_info_available','src_span'(17,106,17,109,737,3))),'src_span'(17,71,17,71,701,62)),'src_span'(17,58,17,58,688,75)),'src_span_operator'('no_loc_info_available','src_span'(17,46,17,48,677,2))),'prefix'('src_span'(18,4,18,10,766,6),['in'(_b4)],'return','val_of'('STUDENTINSTANCE','src_span'(18,14,18,29,776,15)),'src_span'(18,13,18,13,774,19)),'src_span_operator'('no_loc_info_available','src_span'(18,1,18,3,763,2))),'prefix'('src_span'(18,33,18,40,795,7),['in'(_b5)],'reserve','prefix'('src_span'(18,44,18,56,806,12),['in'(_x4)],'allowreserve','|~|'('prefix'('src_span'(18,61,18,78,823,17),[],'reservesuccessful','val_of'('STUDENTINSTANCE','src_span'(18,80,18,95,842,15)),'src_span'(18,79,18,79,840,34)),'prefix'('src_span'(18,98,18,113,860,15),[],'alreadyreserved','val_of'('STUDENTINSTANCE','src_span'(18,115,18,130,877,15)),'src_span'(18,114,18,114,875,32)),'src_span_operator'('no_loc_info_available','src_span'(18,95,18,98,857,3))),'src_span'(18,59,18,59,820,75)),'src_span'(18,43,18,43,804,91)),'src_span_operator'('no_loc_info_available','src_span'(18,30,18,32,792,2))),'prefix'('src_span'(18,135,18,141,897,6),['in'(_u3)],'logout','val_of'('STUDENTLOGIN','src_span'(18,145,18,157,907,12)),'src_span'(18,144,18,144,905,16)),'src_span_operator'('no_loc_info_available','src_span'(18,132,18,134,894,2))),'src_span'(17,1,18,158,632,288)).
'bindval'('EDITLIB','[]'('[]'('[]'('prefix'('src_span'(20,12,20,15,933,3),['in'(_b6)],'add','prefix'('src_span'(20,19,20,30,940,11),[],'setcategory','prefix'('src_span'(20,32,20,41,953,9),[],'setauthor','val_of'('EDITLIB','src_span'(20,43,20,50,964,7)),'src_span'(20,42,20,42,962,18)),'src_span'(20,31,20,31,951,31)),'src_span'(20,18,20,18,938,35)),'prefix'('src_span'(20,54,20,60,975,6),['in'(_b7)],'remove','val_of'('EDITLIB','src_span'(20,64,20,71,985,7)),'src_span'(20,63,20,63,983,11)),'src_span_operator'('no_loc_info_available','src_span'(20,51,20,53,972,2))),'prefix'('src_span'(20,75,20,83,996,8),['in'(_u4)],'register','prefix'('src_span'(20,87,20,99,1008,12),['out'(_u4)],'studentexist','val_of'('EDITLIB','src_span'(20,103,20,110,1024,7)),'src_span'(20,102,20,102,1022,11)),'src_span'(20,86,20,86,1006,27)),'src_span_operator'('no_loc_info_available','src_span'(20,72,20,74,993,2))),'prefix'('src_span'(21,2,21,8,1036,6),['in'(_u5)],'delete','prefix'('src_span'(21,12,21,30,1046,18),['in'(_u6)],'checkstudentborrow','|~|'('prefix'('src_span'(21,35,21,42,1069,7),[],'deleted','val_of'('EDITLIB','src_span'(21,44,21,51,1078,7)),'src_span'(21,43,21,43,1076,16)),'prefix'('src_span'(21,54,21,60,1088,6),[],'failed','val_of'('EDITLIB','src_span'(21,62,21,69,1096,7)),'src_span'(21,61,21,61,1094,15)),'src_span_operator'('no_loc_info_available','src_span'(21,51,21,54,1085,3))),'src_span'(21,33,21,33,1066,40)),'src_span'(21,11,21,11,1044,62)),'src_span_operator'('no_loc_info_available','src_span'(20,111,20,113,1032,2))),'src_span'(20,1,21,71,922,183)).
'bindval'('LIBRARY','sharing'('closure'(['checkbook','borrow','reserve','allowreserve']),'sharing'('closure'(['studentexist']),'val_of'('EDITLIB','src_span'(23,11,23,18,1117,7)),'val_of'('STUDENTLOGIN','src_span'(23,40,23,52,1146,12)),'src_span'(23,19,23,39,1125,20)),'val_of'('CHECKBOOK','src_span'(23,98,23,107,1204,9)),'src_span'(23,53,23,98,1159,45)),'src_span'(23,1,23,107,1107,106)).
'bindval'('STUDENT_BORROW_TEST_TRACE','prefix'('src_span'(25,29,25,38,1243,9),[],'dotTuple'(['add','book1']),'prefix'('src_span'(25,41,25,52,1255,11),[],'setcategory','prefix'('src_span'(25,55,25,64,1269,9),[],'setauthor','prefix'('src_span'(25,66,25,79,1280,13),[],'dotTuple'(['register','Jeff']),'prefix'('src_span'(25,82,25,99,1296,17),[],'dotTuple'(['studentexist','Jeff']),'prefix'('src_span'(25,101,25,111,1315,10),[],'dotTuple'(['login','Jeff']),'prefix'('src_span'(26,3,26,15,1328,12),[],'dotTuple'(['borrow','book1']),'prefix'('src_span'(26,17,26,36,1342,19),[],'dotTuple'(['checkbook','available']),'prefix'('src_span'(26,38,26,54,1363,16),[],'borrowsuccessful','prefix'('src_span'(26,56,26,68,1381,12),[],'dotTuple'(['return','book1']),'prefix'('src_span'(26,70,26,81,1395,11),[],'dotTuple'(['logout','Jeff']),'stop'('src_span'(26,83,26,87,1408,4)),'src_span'(26,82,26,82,1406,17)),'src_span'(26,69,26,69,1393,31)),'src_span'(26,55,26,55,1379,49)),'src_span'(26,37,26,37,1361,70)),'src_span'(26,16,26,16,1340,84)),'src_span'(25,112,26,2,1325,97)),'src_span'(25,100,25,100,1313,116)),'src_span'(25,80,25,81,1293,132)),'src_span'(25,65,25,65,1278,143)),'src_span'(25,53,25,54,1266,157)),'src_span'(25,39,25,40,1252,169)),'src_span'(25,1,26,87,1215,197)).
'bindval'('STUDENT_RESERVE_TEST_TRACE','prefix'('src_span'(28,30,28,39,1443,9),[],'dotTuple'(['add','book1']),'prefix'('src_span'(28,42,28,53,1455,11),[],'setcategory','prefix'('src_span'(28,55,28,64,1468,9),[],'setauthor','prefix'('src_span'(28,66,28,79,1479,13),[],'dotTuple'(['register','Jeff']),'prefix'('src_span'(28,81,28,98,1494,17),[],'dotTuple'(['studentexist','Jeff']),'prefix'('src_span'(28,100,28,110,1513,10),[],'dotTuple'(['login','Jeff']),'prefix'('src_span'(28,112,28,125,1525,13),[],'dotTuple'(['reserve','book1']),'prefix'('src_span'(28,127,28,149,1540,22),[],'dotTuple'(['allowreserve','available']),'prefix'('src_span'(29,3,29,20,1565,17),[],'reservesuccessful','prefix'('src_span'(29,22,29,33,1584,11),[],'dotTuple'(['logout','Jeff']),'stop'('src_span'(29,35,29,39,1597,4)),'src_span'(29,34,29,34,1595,17)),'src_span'(29,21,29,21,1582,36)),'src_span'(28,150,29,2,1562,61)),'src_span'(28,126,28,126,1538,76)),'src_span'(28,111,28,111,1523,88)),'src_span'(28,99,28,99,1511,107)),'src_span'(28,80,28,80,1492,122)),'src_span'(28,65,28,65,1477,133)),'src_span'(28,54,28,54,1466,146)),'src_span'(28,40,28,41,1452,158)),'src_span'(28,1,29,39,1414,187)).
'bindval'('STUDENT_RESERVE_FAILED_TEST_TRACE','prefix'('src_span'(31,37,31,46,1639,9),[],'dotTuple'(['add','book1']),'prefix'('src_span'(31,49,31,60,1651,11),[],'setcategory','prefix'('src_span'(31,62,31,71,1664,9),[],'setauthor','prefix'('src_span'(31,73,31,86,1675,13),[],'dotTuple'(['register','Jeff']),'prefix'('src_span'(31,88,31,105,1690,17),[],'dotTuple'(['studentexist','Jeff']),'prefix'('src_span'(31,107,31,117,1709,10),[],'dotTuple'(['login','Jeff']),'prefix'('src_span'(31,119,31,132,1721,13),[],'dotTuple'(['reserve','book1']),'prefix'('src_span'(32,3,32,27,1737,24),[],'dotTuple'(['allowreserve','unavailable']),'prefix'('src_span'(32,29,32,44,1763,15),[],'alreadyreserved','prefix'('src_span'(32,46,32,57,1780,11),[],'dotTuple'(['logout','Jeff']),'stop'('src_span'(32,59,32,63,1793,4)),'src_span'(32,58,32,58,1791,17)),'src_span'(32,45,32,45,1778,34)),'src_span'(32,28,32,28,1761,60)),'src_span'(31,133,32,2,1734,76)),'src_span'(31,118,31,118,1719,88)),'src_span'(31,106,31,106,1707,107)),'src_span'(31,87,31,87,1688,122)),'src_span'(31,72,31,72,1673,133)),'src_span'(31,61,31,61,1662,146)),'src_span'(31,47,31,48,1648,158)),'src_span'(31,1,32,63,1603,194)).
'bindval'('STUDENT_RESERVE_THEN_BORROW_TEST_TRACE','prefix'('src_span'(34,42,34,51,1840,9),[],'dotTuple'(['add','book1']),'prefix'('src_span'(34,54,34,65,1852,11),[],'setcategory','prefix'('src_span'(34,67,34,76,1865,9),[],'setauthor','prefix'('src_span'(34,78,34,91,1876,13),[],'dotTuple'(['register','Jeff']),'prefix'('src_span'(34,93,34,110,1891,17),[],'dotTuple'(['studentexist','Jeff']),'prefix'('src_span'(34,112,34,122,1910,10),[],'dotTuple'(['login','Jeff']),'prefix'('src_span'(34,124,34,137,1922,13),[],'dotTuple'(['reserve','book1']),'prefix'('src_span'(34,139,34,161,1937,22),[],'dotTuple'(['allowreserve','available']),'prefix'('src_span'(35,3,35,20,1962,17),[],'reservesuccessful','prefix'('src_span'(35,22,35,34,1981,12),[],'dotTuple'(['borrow','book1']),'prefix'('src_span'(35,36,35,55,1995,19),[],'dotTuple'(['checkbook','available']),'prefix'('src_span'(35,57,35,73,2016,16),[],'borrowsuccessful','prefix'('src_span'(35,75,35,87,2034,12),[],'dotTuple'(['return','book1']),'prefix'('src_span'(35,89,35,100,2048,11),[],'dotTuple'(['logout','Jeff']),'stop'('src_span'(35,102,35,106,2061,4)),'src_span'(35,101,35,101,2059,17)),'src_span'(35,88,35,88,2046,31)),'src_span'(35,74,35,74,2032,49)),'src_span'(35,56,35,56,2014,70)),'src_span'(35,35,35,35,1993,84)),'src_span'(35,21,35,21,1979,103)),'src_span'(34,162,35,2,1959,128)),'src_span'(34,138,34,138,1935,143)),'src_span'(34,123,34,123,1920,155)),'src_span'(34,111,34,111,1908,174)),'src_span'(34,92,34,92,1889,189)),'src_span'(34,77,34,77,1874,200)),'src_span'(34,66,34,66,1863,213)),'src_span'(34,52,34,53,1849,225)),'src_span'(34,1,35,106,1799,266)).
'bindval'('DELETE_USER_TEST_TRACE','prefix'('src_span'(37,26,37,39,2092,13),[],'dotTuple'(['register','Jeff']),'prefix'('src_span'(37,43,37,60,2109,17),[],'dotTuple'(['studentexist','Jeff']),'prefix'('src_span'(37,63,37,74,2129,11),[],'dotTuple'(['delete','Jeff']),'prefix'('src_span'(37,76,37,97,2142,21),[],'dotTuple'(['checkstudentborrow','no']),'prefix'('src_span'(37,99,37,106,2165,7),[],'deleted','stop'('src_span'(37,108,37,112,2174,4)),'src_span'(37,107,37,107,2172,13)),'src_span'(37,98,37,98,2163,36)),'src_span'(37,75,37,75,2140,49)),'src_span'(37,61,37,62,2126,69)),'src_span'(37,40,37,42,2105,86)),'src_span'(37,1,37,112,2067,111)).
'bindval'('ADD_BOOK_TEST_TRACE','prefix'('src_span'(39,23,39,32,2202,9),[],'dotTuple'(['add','book1']),'prefix'('src_span'(39,35,39,46,2214,11),[],'setcategory','prefix'('src_span'(39,48,39,57,2227,9),[],'setauthor','prefix'('src_span'(39,59,39,68,2238,9),[],'dotTuple'(['add','book2']),'prefix'('src_span'(39,70,39,81,2249,11),[],'setcategory','prefix'('src_span'(39,83,39,92,2262,9),[],'setauthor','prefix'('src_span'(39,94,39,103,2273,9),[],'dotTuple'(['add','book3']),'prefix'('src_span'(39,105,39,116,2284,11),[],'setcategory','prefix'('src_span'(39,118,39,127,2297,9),[],'setauthor','stop'('src_span'(39,129,39,133,2308,4)),'src_span'(39,128,39,128,2306,15)),'src_span'(39,117,39,117,2295,28)),'src_span'(39,104,39,104,2282,39)),'src_span'(39,93,39,93,2271,50)),'src_span'(39,82,39,82,2260,63)),'src_span'(39,69,39,69,2247,74)),'src_span'(39,58,39,58,2236,85)),'src_span'(39,47,39,47,2225,98)),'src_span'(39,33,39,34,2211,110)),'src_span'(39,1,39,133,2180,132)).
'bindval'('STUDENT_BORROW_FAILED_TEST_TRACE','prefix'('src_span'(41,36,41,45,2349,9),[],'dotTuple'(['add','book1']),'prefix'('src_span'(41,48,41,59,2361,11),[],'setcategory','prefix'('src_span'(41,62,41,71,2375,9),[],'setauthor','prefix'('src_span'(41,73,41,86,2386,13),[],'dotTuple'(['register','Jeff']),'prefix'('src_span'(41,89,41,106,2402,17),[],'dotTuple'(['studentexist','Jeff']),'prefix'('src_span'(41,108,41,118,2421,10),[],'dotTuple'(['login','Jeff']),'prefix'('src_span'(42,3,42,15,2434,12),[],'dotTuple'(['borrow','book1']),'prefix'('src_span'(42,17,42,38,2448,21),[],'dotTuple'(['checkbook','unavailable']),'prefix'('src_span'(42,40,42,43,2471,3),[],'out','prefix'('src_span'(42,45,42,56,2476,11),[],'dotTuple'(['logout','Jeff']),'stop'('src_span'(42,58,42,62,2489,4)),'src_span'(42,57,42,57,2487,17)),'src_span'(42,44,42,44,2474,22)),'src_span'(42,39,42,39,2469,45)),'src_span'(42,16,42,16,2446,59)),'src_span'(41,119,42,2,2431,72)),'src_span'(41,107,41,107,2419,91)),'src_span'(41,87,41,88,2399,107)),'src_span'(41,72,41,72,2384,118)),'src_span'(41,60,41,61,2372,132)),'src_span'(41,46,41,47,2358,144)),'src_span'(41,1,42,62,2314,179)).
'bindval'('REMOVE_BOOK_TEST_TRACE','prefix'('src_span'(44,26,44,35,2520,9),[],'dotTuple'(['add','book1']),'prefix'('src_span'(44,38,44,49,2532,11),[],'setcategory','prefix'('src_span'(44,51,44,60,2545,9),[],'setauthor','prefix'('src_span'(44,63,44,75,2557,12),[],'dotTuple'(['remove','book1']),'stop'('src_span'(44,77,44,81,2571,4)),'src_span'(44,76,44,76,2569,18)),'src_span'(44,61,44,62,2554,30)),'src_span'(44,50,44,50,2543,43)),'src_span'(44,36,44,37,2529,55)),'src_span'(44,1,44,81,2495,80)).
'bindval'('GEN','[]'('[]'('prefix'('src_span'(45,7,45,10,2582,3),['out'('book1')],'add','val_of'('GEN','src_span'(45,20,45,23,2595,3)),'src_span'(45,17,45,19,2591,13)),'prefix'('src_span'(45,27,45,30,2602,3),['out'('book2')],'add','val_of'('GEN','src_span'(45,40,45,43,2615,3)),'src_span'(45,37,45,39,2611,13)),'src_span_operator'('no_loc_info_available','src_span'(45,24,45,26,2599,2))),'prefix'('src_span'(45,47,45,50,2622,3),['out'('book3')],'add','val_of'('GEN','src_span'(45,60,45,63,2635,3)),'src_span'(45,57,45,59,2631,13)),'src_span_operator'('no_loc_info_available','src_span'(45,44,45,46,2619,2))),'src_span'(45,1,45,63,2576,62)).
'bindval'('MAIN','sharing'('closure'(['add']),'val_of'('LIBRARY','src_span'(47,8,47,15,2647,7)),'val_of'('GEN','src_span'(47,30,47,33,2669,3)),'src_span'(47,16,47,29,2655,13)),'src_span'(47,1,47,33,2640,32)).
'assertRef'('False','val_of'('MAIN','src_span'(50,8,50,12,2682,4)),'Trace','val_of'('STUDENT_BORROW_TEST_TRACE','src_span'(50,17,50,42,2691,25)),'src_span'(50,1,50,42,2675,41)).
'assertRef'('False','val_of'('MAIN','src_span'(51,8,51,12,2724,4)),'Trace','val_of'('STUDENT_RESERVE_TEST_TRACE','src_span'(51,17,51,43,2733,26)),'src_span'(51,1,51,43,2717,42)).
'assertRef'('False','val_of'('MAIN','src_span'(52,8,52,12,2767,4)),'Trace','val_of'('STUDENT_RESERVE_FAILED_TEST_TRACE','src_span'(52,17,52,50,2776,33)),'src_span'(52,1,52,50,2760,49)).
'assertRef'('False','val_of'('MAIN','src_span'(53,8,53,12,2818,4)),'Trace','val_of'('STUDENT_RESERVE_THEN_BORROW_TEST_TRACE','src_span'(53,17,53,55,2827,38)),'src_span'(53,1,53,55,2811,54)).
'assertRef'('False','val_of'('MAIN','src_span'(54,8,54,12,2873,4)),'Trace','val_of'('DELETE_USER_TEST_TRACE','src_span'(54,17,54,39,2882,22)),'src_span'(54,1,54,39,2866,38)).
'assertRef'('False','val_of'('MAIN','src_span'(55,8,55,12,2912,4)),'Trace','val_of'('ADD_BOOK_TEST_TRACE','src_span'(55,17,55,36,2921,19)),'src_span'(55,1,55,36,2905,35)).
'assertRef'('False','val_of'('MAIN','src_span'(56,8,56,12,2948,4)),'Trace','val_of'('STUDENT_BORROW_FAILED_TEST_TRACE','src_span'(56,17,56,49,2957,32)),'src_span'(56,1,56,49,2941,48)).
'assertRef'('False','val_of'('MAIN','src_span'(57,8,57,12,2997,4)),'Trace','val_of'('REMOVE_BOOK_TEST_TRACE','src_span'(57,17,57,39,3006,22)),'src_span'(57,1,57,39,2990,38)).
'symbol'('BOOK','BOOK','src_span'(1,10,1,14,9,4),'Datatype').
'symbol'('book1','book1','src_span'(1,17,1,22,16,5),'Constructor of Datatype').
'symbol'('book2','book2','src_span'(1,23,1,28,22,5),'Constructor of Datatype').
'symbol'('book3','book3','src_span'(1,29,1,34,28,5),'Constructor of Datatype').
'symbol'('STUDENT','STUDENT','src_span'(2,10,2,17,43,7),'Datatype').
'symbol'('Jeff','Jeff','src_span'(2,20,2,24,53,4),'Constructor of Datatype').
'symbol'('Zach','Zach','src_span'(2,25,2,29,58,4),'Constructor of Datatype').
'symbol'('STATUS','STATUS','src_span'(3,10,3,16,72,6),'Datatype').
'symbol'('available','available','src_span'(3,19,3,28,81,9),'Constructor of Datatype').
'symbol'('unavailable','unavailable','src_span'(3,29,3,40,91,11),'Constructor of Datatype').
'symbol'('RESPONSE','RESPONSE','src_span'(4,10,4,18,112,8),'Datatype').
'symbol'('yes','yes','src_span'(4,21,4,24,123,3),'Constructor of Datatype').
'symbol'('no','no','src_span'(4,26,4,28,128,2),'Constructor of Datatype').
'symbol'('register','register','src_span'(6,9,6,17,140,8),'Channel').
'symbol'('delete','delete','src_span'(6,18,6,24,149,6),'Channel').
'symbol'('login','login','src_span'(6,25,6,30,156,5),'Channel').
'symbol'('studentexist','studentexist','src_span'(6,31,6,43,162,12),'Channel').
'symbol'('record','record','src_span'(6,44,6,50,175,6),'Channel').
'symbol'('logout','logout','src_span'(6,51,6,57,182,6),'Channel').
'symbol'('borrow','borrow','src_span'(7,9,7,15,205,6),'Channel').
'symbol'('return','return','src_span'(7,16,7,22,212,6),'Channel').
'symbol'('read','read','src_span'(7,23,7,27,219,4),'Channel').
'symbol'('reserve','reserve','src_span'(7,28,7,35,224,7),'Channel').
'symbol'('add','add','src_span'(7,36,7,39,232,3),'Channel').
'symbol'('remove','remove','src_span'(7,40,7,46,236,6),'Channel').
'symbol'('checkbook','checkbook','src_span'(8,9,8,18,257,9),'Channel').
'symbol'('allowreserve','allowreserve','src_span'(8,19,8,31,267,12),'Channel').
'symbol'('checkstudentborrow','checkstudentborrow','src_span'(9,9,9,27,295,18),'Channel').
'symbol'('deleted','deleted','src_span'(10,9,10,16,331,7),'Channel').
'symbol'('failed','failed','src_span'(10,17,10,23,339,6),'Channel').
'symbol'('instock','instock','src_span'(10,24,10,31,346,7),'Channel').
'symbol'('out','out','src_span'(10,32,10,35,354,3),'Channel').
'symbol'('alreadyreserved','alreadyreserved','src_span'(10,36,10,51,358,15),'Channel').
'symbol'('borrowsuccessful','borrowsuccessful','src_span'(10,52,10,68,374,16),'Channel').
'symbol'('reservesuccessful','reservesuccessful','src_span'(10,69,10,86,391,17),'Channel').
'symbol'('confirm','confirm','src_span'(10,87,10,94,409,7),'Channel').
'symbol'('reject','reject','src_span'(10,95,10,101,417,6),'Channel').
'symbol'('upgrade','upgrade','src_span'(10,102,10,109,424,7),'Channel').
'symbol'('setcategory','setcategory','src_span'(10,110,10,121,432,11),'Channel').
'symbol'('setauthor','setauthor','src_span'(10,122,10,131,444,9),'Channel').
'symbol'('CHECKBOOK','CHECKBOOK','src_span'(13,1,13,10,456,9),'Ident (Groundrep.)').
'symbol'('b','b','src_span'(13,21,13,22,476,1),'Ident (Prolog Variable)').
'symbol'('x','x','src_span'(13,34,13,35,489,1),'Ident (Prolog Variable)').
'symbol'('b2','b','src_span'(13,58,13,59,513,1),'Ident (Prolog Variable)').
'symbol'('x2','x','src_span'(13,74,13,75,529,1),'Ident (Prolog Variable)').
'symbol'('STUDENTLOGIN','STUDENTLOGIN','src_span'(15,1,15,13,544,12),'Ident (Groundrep.)').
'symbol'('u','u','src_span'(15,29,15,30,572,1),'Ident (Prolog Variable)').
'symbol'('STUDENTINSTANCE','STUDENTINSTANCE','src_span'(17,1,17,16,632,15),'Ident (Groundrep.)').
'symbol'('u2','u','src_span'(17,27,17,28,658,1),'Ident (Prolog Variable)').
'symbol'('b3','b','src_span'(17,56,17,57,687,1),'Ident (Prolog Variable)').
'symbol'('x3','x','src_span'(17,69,17,70,700,1),'Ident (Prolog Variable)').
'symbol'('b4','b','src_span'(18,11,18,12,773,1),'Ident (Prolog Variable)').
'symbol'('b5','b','src_span'(18,41,18,42,803,1),'Ident (Prolog Variable)').
'symbol'('x4','x','src_span'(18,57,18,58,819,1),'Ident (Prolog Variable)').
'symbol'('u3','u','src_span'(18,142,18,143,904,1),'Ident (Prolog Variable)').
'symbol'('EDITLIB','EDITLIB','src_span'(20,1,20,8,922,7),'Ident (Groundrep.)').
'symbol'('b6','b','src_span'(20,16,20,17,937,1),'Ident (Prolog Variable)').
'symbol'('b7','b','src_span'(20,61,20,62,982,1),'Ident (Prolog Variable)').
'symbol'('u4','u','src_span'(20,84,20,85,1005,1),'Ident (Prolog Variable)').
'symbol'('u5','u','src_span'(21,9,21,10,1043,1),'Ident (Prolog Variable)').
'symbol'('u6','u','src_span'(21,31,21,32,1065,1),'Ident (Prolog Variable)').
'symbol'('LIBRARY','LIBRARY','src_span'(23,1,23,8,1107,7),'Ident (Groundrep.)').
'symbol'('STUDENT_BORROW_TEST_TRACE','STUDENT_BORROW_TEST_TRACE','src_span'(25,1,25,26,1215,25),'Ident (Groundrep.)').
'symbol'('STUDENT_RESERVE_TEST_TRACE','STUDENT_RESERVE_TEST_TRACE','src_span'(28,1,28,27,1414,26),'Ident (Groundrep.)').
'symbol'('STUDENT_RESERVE_FAILED_TEST_TRACE','STUDENT_RESERVE_FAILED_TEST_TRACE','src_span'(31,1,31,34,1603,33),'Ident (Groundrep.)').
'symbol'('STUDENT_RESERVE_THEN_BORROW_TEST_TRACE','STUDENT_RESERVE_THEN_BORROW_TEST_TRACE','src_span'(34,1,34,39,1799,38),'Ident (Groundrep.)').
'symbol'('DELETE_USER_TEST_TRACE','DELETE_USER_TEST_TRACE','src_span'(37,1,37,23,2067,22),'Ident (Groundrep.)').
'symbol'('ADD_BOOK_TEST_TRACE','ADD_BOOK_TEST_TRACE','src_span'(39,1,39,20,2180,19),'Ident (Groundrep.)').
'symbol'('STUDENT_BORROW_FAILED_TEST_TRACE','STUDENT_BORROW_FAILED_TEST_TRACE','src_span'(41,1,41,33,2314,32),'Ident (Groundrep.)').
'symbol'('REMOVE_BOOK_TEST_TRACE','REMOVE_BOOK_TEST_TRACE','src_span'(44,1,44,23,2495,22),'Ident (Groundrep.)').
'symbol'('GEN','GEN','src_span'(45,1,45,4,2576,3),'Ident (Groundrep.)').
'symbol'('MAIN','MAIN','src_span'(47,1,47,5,2640,4),'Ident (Groundrep.)').