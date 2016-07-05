-- Madrigosa script target fix
DELETE FROM spell_script_target WHERE entry IN (46609);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(46609,1,19871,0);
-- Delete M'uru (summoned)
DELETE FROM creature WHERE guid=53705;
-- M'uru encounter linking (for cleanup)
DELETE FROM creature_linking_template WHERE entry IN (25744,25879,25855,25798,25799,25824,25772);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(25744, 580, 25840, 4112, 0),
(25879, 580, 25840, 4112, 0),
(25855, 580, 25840, 4112, 0),
(25798, 580, 25741, 4112, 0),
(25799, 580, 25741, 4112, 0),
(25824, 580, 25741, 4112, 0),
(25772, 580, 25741, 4112, 0);
-- Sentinel Summoner - update
UPDATE creature_template SET MinLevel=70, MaxLevel=70, FactionAlliance=114, FactionHorde=114, Expansion=1, MinLevelHealth=6602, MaxLevelHealth=6602, MinMeleeDmg=252, MaxMeleeDmg=357, MinRangedDmg=215, MaxRangedDmg=320, UnitFlags=UnitFlags|33554688, Armor=6792, MeleeAttackPower=304, RangedAttackPower=44 WHERE entry=25782;


