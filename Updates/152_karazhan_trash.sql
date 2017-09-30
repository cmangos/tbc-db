/* Phantom Guest (add females) */
UPDATE `creature_model_info` SET `modelid_other_gender`= 16466 WHERE `modelid` = 16464;
UPDATE `creature_model_info` SET `modelid_other_gender`= 16467 WHERE `modelid` = 16465;

/* Retainers, Guests, Attendants dance emote */ 
DELETE FROM `creature_addon` WHERE `guid` IN (85183,85184,85185,85186,85187,85188,85190,85199,85203,85204,85206,85208,85209,85211,85133,85134,85126,85127,85128,85129,85130,85131,85132,85119,85118,85175,85176,85121,85122,85120,85191,85189,85102,85101,85100,85108,85107,85106,85105,85104,85103,85109,85110,85111,85112,85113,85114,85115,85116,85117,85095,85096,85097,85098,85099,85089,85090,85091,85092,85093,85123,85124,85177,85200);
INSERT INTO `creature_addon` VALUES
(85183,0,0,0,0,400,0,''),
(85184,0,0,0,0,400,0,''),
(85185,0,0,0,0,400,0,''),
(85186,0,0,0,0,400,0,''),
(85187,0,0,0,0,400,0,''),
(85188,0,0,0,0,400,0,''),
(85190,0,0,0,0,400,0,''),
(85199,0,0,0,0,400,0,''),
(85203,0,0,0,0,400,0,''),
(85204,0,0,0,0,400,0,''),
(85206,0,0,0,0,400,0,''),
(85208,0,0,0,0,400,0,''),
(85209,0,0,0,0,400,0,''),
(85211,0,0,0,0,400,0,''),
(85133,0,0,0,0,400,0,''),
(85134,0,0,0,0,400,0,''),
(85126,0,0,0,0,400,0,''),
(85127,0,0,0,0,400,0,''),
(85128,0,0,0,0,400,0,''),
(85129,0,0,0,0,400,0,''),
(85130,0,0,0,0,400,0,''),
(85131,0,0,0,0,400,0,''),
(85132,0,0,0,0,400,0,''),
(85119,0,0,0,0,400,0,''),
(85118,0,0,0,0,400,0,''),
(85175,0,0,0,0,400,0,''),
(85176,0,0,0,0,400,0,''),
(85121,0,0,0,0,400,0,''),
(85122,0,0,0,0,400,0,''),
(85120,0,0,0,0,400,0,''),
(85191,0,0,0,0,400,0,''),
(85189,0,0,0,0,400,0,''),
(85102,0,0,0,0,400,0,''),
(85101,0,0,0,0,400,0,''),
(85100,0,0,0,0,400,0,''),
(85108,0,0,0,0,400,0,''),
(85107,0,0,0,0,400,0,''),
(85106,0,0,0,0,400,0,''),
(85105,0,0,0,0,400,0,''),
(85104,0,0,0,0,400,0,''),
(85103,0,0,0,0,400,0,''),
(85109,0,0,0,0,400,0,''),
(85110,0,0,0,0,400,0,''),
(85111,0,0,0,0,400,0,''),
(85112,0,0,0,0,400,0,''),
(85113,0,0,0,0,400,0,''),
(85114,0,0,0,0,400,0,''),
(85115,0,0,0,0,400,0,''),
(85116,0,0,0,0,400,0,''),
(85117,0,0,0,0,400,0,''),
(85095,0,0,0,0,400,0,''),
(85096,0,0,0,0,400,0,''),
(85097,0,0,0,0,400,0,''),
(85098,0,0,0,0,400,0,''),
(85099,0,0,0,0,400,0,''),
(85089,0,0,0,0,400,0,''),
(85090,0,0,0,0,400,0,''),
(85091,0,0,0,0,400,0,''),
(85092,0,0,0,0,400,0,''),
(85093,0,0,0,0,400,0,''),
(85123,0,0,0,0,400,0,''),
(85124,0,0,0,0,400,0,''),
(85177,0,0,0,0,400,0,''),
(85200,0,0,0,0,400,0,'');

/*
Mana Feeder (16491)
http://www.wowhead.com/npc=16491/mana-feeder
- Added immunity to all magic
*/

UPDATE `creature_template` SET `SchoolImmuneMask` = 126 WHERE `Entry` = 16491;

/* 
Arcane Protector (16504)
http://www.wowhead.com/npc=16504/arcane-protector
http://wowwiki.wikia.com/wiki/Arcane_Protector
http://www.wowhead.com/spell=29815/return-fire (This is the actual missle that does damage - triggered by 29788, 29793, 29794)
http://www.wowhead.com/spell=29788/return-fire (Counterattack when hit by melee)
http://www.wowhead.com/spell=29793/return-fire (Counterattack when hit by spells)
http://www.wowhead.com/spell=29794/return-fire (Counterattack when hit by ranged)
- Added immunity to stuns and snares
- Now casts Fist of Stone and Astral Spark in all phases, and switches between different defense modes
It's possible there should be more spawns of Arcane Protector instead of Arcane Watchman
http://www.wowhead.com/npc=16485/arcane-watchman#comments:id=44888 (Implies there are only 2 pairs of Arcane Watchman)
select * from creature where id = 16504; -- (Only 1 Arcane Protector currently)
select * from creature where id = 16485; -- (7 Arcane Watchman)
guids 85271, 85277, 85312 These 3 should be Protectors probably 
http://www.wowhead.com/npc=16485/arcane-watchman#comments:id=44888:reply=36158 (Pair at Guardian's Library entrance may be skipped by hugging wall)
*/

UPDATE `creature_template` SET `MechanicImmuneMask` = 19456 WHERE `Entry` = 16504;

-- These 3 patrols should be Protectors instead of Watchman
UPDATE `creature` SET `id` = 16504 WHERE `guid` IN (85271, 85277, 85312);

/*
Ghostly Steward (16414)
http://www.wowhead.com/npc=16414/ghostly-steward#comments:id=41030
http://www.wowhead.com/npc=16414/ghostly-steward#comments:id=32842:reply=2230
http://wowwiki.wikia.com/wiki/Ghostly_Steward
- Now casts Frenzy at 50% (up from 25%)
- Added immunity to taunt, stun, shackle, and freeze trap
- Made Drunken Skull Crack happen a little sooner first time after Frenzy? (just guessing)
*/
UPDATE `creature_template` SET `ExtraFlags` = 256, `MechanicImmuneMask` = 8919056 WHERE `Entry` = 16414;


