ALTER TABLE db_version CHANGE COLUMN required_s2483_01_mangos_spell_groups required_s2484_01_mangos_proc_cooldown bit;

UPDATE spell_proc_event SET cooldown=cooldown*1000 WHERE entry BETWEEN 0 AND 100000;

UPDATE spell_proc_event SET cooldown=3500 WHERE entry=325;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=905;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=945;
UPDATE spell_proc_event SET cooldown=16000 WHERE entry=3284;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=3338;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=3417;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=3582;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=5202;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=6961;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=7445;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=7446;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=7849;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=8134;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=8788;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=8876;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=10431;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=10432;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=12281;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=12550;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=12574;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=12575;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=12576;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=12577;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=12787;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=12812;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=12813;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=12814;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=12815;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=13585;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=13879;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=13960;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=13961;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=13962;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=13963;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=13964;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=14070;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=14071;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=14178;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=14190;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=14193;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=14194;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=14195;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=14796;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=14869;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=14870;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=15506;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=15507;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=15573;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=15641;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=15733;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=15852;
UPDATE spell_proc_event SET cooldown=9000 WHERE entry=15876;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=16277;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=16278;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=16279;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=16280;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=16792;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=18189;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=18943;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=18983;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=19194;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=19308;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=19309;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=19310;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=19311;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=19312;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=19362;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=19449;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=19514;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=19817;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=19818;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=20178;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=20545;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=20915;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=20918;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=20919;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=20920;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=21853;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=22620;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=23378;
UPDATE spell_proc_event SET cooldown=240000 WHERE entry=24256;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=25020;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=25469;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=25472;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=25477;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=27170;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=27539;
UPDATE spell_proc_event SET cooldown=20000 WHERE entry=27561;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=27997;
UPDATE spell_proc_event SET cooldown=750 WHERE entry=28780;
UPDATE spell_proc_event SET cooldown=8 WHERE entry=29075;
UPDATE spell_proc_event SET cooldown=9 WHERE entry=29076;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=29118;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=29119;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=29220;
UPDATE spell_proc_event SET cooldown=24000 WHERE entry=29315;
UPDATE spell_proc_event SET cooldown=12000 WHERE entry=29315;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29444;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29445;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29446;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29447;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29788;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29793;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=29794;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=30557;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=30564;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=30731;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=30883;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=30884;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=30885;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=30886;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=31255;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=31256;
UPDATE spell_proc_event SET cooldown=6000 WHERE entry=31757;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=31765;
UPDATE spell_proc_event SET cooldown=60000 WHERE entry=32066;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=32339;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=32593;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=32594;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=32732;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=32898;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=32910;
UPDATE spell_proc_event SET cooldown=25000 WHERE entry=32981;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=33207;
UPDATE spell_proc_event SET cooldown=25000 WHERE entry=33522;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=33727;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=33736;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=33754;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=33755;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=33756;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=34158;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=34191;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=34201;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=34303;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=34329;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=34365;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=34524;
UPDATE spell_proc_event SET cooldown=30000 WHERE entry=34582;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=34938;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=34939;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=35131;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=35230;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=35249;
UPDATE spell_proc_event SET cooldown=8000 WHERE entry=35408;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=35848;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=35922;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=36637;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=36733;
UPDATE spell_proc_event SET cooldown=120000 WHERE entry=38164;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=38184;
UPDATE spell_proc_event SET cooldown=50000 WHERE entry=38319;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=38805;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=39067;
UPDATE spell_proc_event SET cooldown=17000 WHERE entry=39556;
UPDATE spell_proc_event SET cooldown=17000 WHERE entry=39598;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=39623;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=39831;
UPDATE spell_proc_event SET cooldown=3000 WHERE entry=39832;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=40019;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=40292;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=40303;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=40394;
UPDATE spell_proc_event SET cooldown=2000 WHERE entry=40594;
UPDATE spell_proc_event SET cooldown=5000 WHERE entry=40773;
UPDATE spell_proc_event SET cooldown=3500 WHERE entry=41151;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=41266;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=41435;
UPDATE spell_proc_event SET cooldown=20000 WHERE entry=42760;
UPDATE spell_proc_event SET cooldown=4000 WHERE entry=43124;
UPDATE spell_proc_event SET cooldown=500 WHERE entry=43983;
UPDATE spell_proc_event SET cooldown=10000 WHERE entry=44326;
UPDATE spell_proc_event SET cooldown=100 WHERE entry=44480;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=44583;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=45343;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=45444;
UPDATE spell_proc_event SET cooldown=100 WHERE entry=46030;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=46045;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=46364;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=46478;
UPDATE spell_proc_event SET cooldown=7000 WHERE entry=46810;
UPDATE spell_proc_event SET cooldown=15000 WHERE entry=46834;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=46873;
UPDATE spell_proc_event SET cooldown=1000 WHERE entry=47300;
UPDATE spell_proc_event SET cooldown=45000 WHERE entry=51414;

INSERT INTO spell_proc_event(entry, cooldown) VALUES(325,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(905,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(945,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(3284,16000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(3338,4000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(3417,4000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(3582,10000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(5202,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(6961,15000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(7445,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(7446,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(7849,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(8134,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(8788,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(8876,4000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(10431,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(10432,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12281,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12550,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12574,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12575,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12576,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12577,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12787,4000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12812,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12813,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12814,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(12815,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(13585,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(13879,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(13960,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(13961,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(13962,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(13963,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(13964,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14070,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14071,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14178,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14190,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14193,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14194,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14195,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14796,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14869,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(14870,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(15506,4000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(15507,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(15573,4000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(15641,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(15733,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(15852,10000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(15876,9000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(16277,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(16278,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(16279,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(16280,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(16792,2000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(18189,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(18943,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(18983,30000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19194,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19308,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19309,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19310,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19311,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19312,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19362,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19449,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19514,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19817,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(19818,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(20178,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(20545,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(20915,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(20918,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(20919,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(20920,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(21853,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(22620,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(23378,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(24256,240000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(25020,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(25469,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(25472,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(25477,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(27170,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(27539,10000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(27561,20000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(27997,50000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(28780,750);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29075,8);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29076,9);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29118,10000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29119,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29220,10000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29315,24000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29444,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29445,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29446,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29447,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29788,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29793,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(29794,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(30557,30000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(30564,2000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(30731,2000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(30883,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(30884,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(30885,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(30886,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(31255,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(31256,2000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(31757,6000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(31765,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(32066,60000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(32339,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(32593,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(32594,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(32732,4000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(32898,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(32910,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(32981,25000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(33207,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(33522,25000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(33727,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(33736,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(33754,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(33755,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(33756,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34158,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34191,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34201,15000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34303,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34329,30000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34365,10000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34524,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34582,30000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34938,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(34939,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(35131,45000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(35230,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(35249,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(35408,8000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(35848,4000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(35922,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(36637,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(36733,15000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(38164,120000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(38184,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(38319,50000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(38805,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(39067,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(39556,17000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(39598,17000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(39623,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(39831,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(39832,3000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(40019,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(40292,2000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(40303,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(40394,45000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(40594,2000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(40773,5000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(41151,3500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(41266,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(41435,45000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(42760,20000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(43124,4000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(43983,500);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(44326,10000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(44480,100);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(44583,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(45343,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(45444,45000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(46030,100);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(46045,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(46364,45000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(46478,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(46810,7000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(46834,15000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(46873,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(47300,1000);
INSERT INTO spell_proc_event(entry, cooldown) VALUES(51414,45000);
