-- research by Trugge

-- Karazhan

-- taunt immunity
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry IN(16471,16544,16545,16595,16596,16504,16485,16472,16410,16473,16408,16470,16482,16526);

-- stun immunity
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN(16471,16540,16595,16596,16545,16544,16410,16473,16472,16485,16489,16504,16529,16526);

-- fear immunity
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN(16544,16545,16595,16596,16540,16529,16504,16489,16485,16488,16461);

-- shackles immunity
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|524288 WHERE entry IN(16472,16473,16410,16408,16470,16482,16526);

-- confused/disorient
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN(16408,16414,16410,16471,16473,16470,16482,16485,16488,16504,16489,16529,16540,16526,16544,16545,16596,16595);

-- root
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN(16408,16414,16410,16471,16473,16470,16482,16485,16488,16504,16489,16529,16540,16526,16544,16545,16596,16595);

-- slow/snare
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN(16408,16414,16410,16471,16473,16470,16482,16485,16488,16489,16529,16540,16526,16544,16545,16596,16595);

-- freeze
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN(16408,16410,16473,16470,16482,16485,16488,16504,16489,16529,16540,16526,16544,16545,16596,16595,16471);

-- polymorph
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN(16544,16545);

-- banish
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN(16489,16529,16488,16595,16596);

-- knockout/incapacitate
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN(16408,16414,16410,16471,16473,16470,16482,16485,16488,16504,16489,16529,16540,16526,16544,16545,16596,16595);

-- interrupt
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN(16408,16414,16410,16471,16473,16472,16470,16482,16485,16488,16504,16489,16529,16540,16526,16544,16545,16596,16595,15691,15687,16457,17533,15690);

-- Arcane magic school
UPDATE creature_template SET SchoolImmuneMask=SchoolImmuneMask|64 WHERE entry=16530;

-- turn
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4194304 WHERE entry=16471;

-- random ones for specific mob
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(536870912+1+65536) WHERE entry IN(16540);

-- more immunities
-- various creatures from The Underbog, The Botanica, Shadow Labyrinth, The Mechanar, Tempest Keep, The Arcatraz
-- stun
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN(20041,20046,20031,20045,20048,20047,20050,20035,18796,20652,18848,20656,17723,20164,17734,20187
,20866,21614,20867,21591,20868,21593,20875,21604,20873,21605,20880,21594,20879,21595,20881,21619,20883,21615,20901,21610,20902,21611,20900,21621,20898,21598);
-- fear
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN(20041,20046,20035,18796,20652,18848,20656,19886,17723,20164,20173,17734,20187,19166,21543,19735,21542,18405,21578,19598,21561
,19865,21562,19513,21560,20864,20865,21607,21608,20866,21614,20867,21591,20868,21593,20875,21604,20873,21605,20880,21594,20879,21595,20881,21619,20883,21615,20901,21610,20902,21611,20900,21621,20869,21586,20898,21598);
-- banish
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN(18796,20652,18848,20656,20898,21598);
-- enslave
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN(18796,20652,18848,20656);
-- slow/snare
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN(18796,20652,18848,20656,17723,20164,20173,17734,20187,21543,18405,21578,20864,20865,21607,21608
,20866,21614,20867,21591,20868,21593,20875,21604,20873,21605,20880,21594,20879,21595,20881,21619,20883,21615,20901,21610,20902,21611,20900,21621,20898,21598);
-- polymorph
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN(19886,20173,19598,21561,19865,21562,19513,21560);
-- root
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN(19886);
-- freeze
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|4096 WHERE entry IN(19886,20173,20898,21598);
-- interrupt
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN(20898,21598);

-- Ogrila questline mobs
-- stun
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2048 WHERE entry IN(20600,20216,22910,22911);
-- fear
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16 WHERE entry IN(22199,20600,20216,22910,22911);
-- slow/snare
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1024 WHERE entry IN(22199,20600,20216,22910,22911);
-- interrupt
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry IN(20600,20216,22910,22911);
-- disorient
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2 WHERE entry IN(22199,20600,20216,22910,22911);
-- root
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|64 WHERE entry IN(20600,20216,22910,22911);
-- charm
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN(22911);
-- sap/incapacitate
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|536870912 WHERE entry IN(22199,20600,20216,22910,22911);
-- polymorph
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|65536 WHERE entry IN(22911);
-- knockout - repentance
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|8192 WHERE entry IN(22199,20600,20216,22910,22911);


