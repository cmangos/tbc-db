-- q.11886 'Unusual Activity'
-- Earthen Ring Guide 25324
DELETE FROM creature WHERE guid BETWEEN 110386 AND 110399;
DELETE FROM creature WHERE guid BETWEEN 110401 AND 110405;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- confirmed spawns
(110386,25324,1,1,0,0,3905.8003,912.67535,1.3239094,3.8397243,10,10,0,0,0,0,0,0),
(110387,25324,1,1,0,0,3797.5642,852.38464,0.5235723,2.6005406,10,10,0,0,0,0,0,0),
(110388,25324,1,1,0,0,4094.12,819.842,1.60686,2.64606,10,10,0,0,0,0,0,0),
(110389,25324,1,1,0,0,4206.9644,1088.714,24.683048,4.6251225,10,10,0,0,0,0,0,0),
(110390,25324,1,1,0,0,3844.81,732.213,7.52728,1.85,10,10,0,0,0,0,0,0),
(110391,25324,1,1,0,0,4088.092,1096.7585,2.2374983,0,10,10,0,0,0,0,0,0),
-- guessed spawns
(110392,25324,1,1,0,0,4066.42,1031.31,0.269309,6.04236,10,10,0,0,0,0,0,0),
(110393,25324,1,1,0,0,4052.53,960.331,0.198278,5.56719,10,10,0,0,0,0,0,0),
(110394,25324,1,1,0,0,4032.58,914.006,0.200063,5.12736,10,10,0,0,0,0,0,0),
(110395,25324,1,1,0,0,3991.04,878.956,0.085163,5.03704,10,10,0,0,0,0,0,0),
(110396,25324,1,1,0,0,3943.86,700.93,8.28475,1.83655,10,10,0,0,0,0,0,0),
(110397,25324,1,1,0,0,4018.99,743.399,6.47049,2.35177,10,10,0,0,0,0,0,0),
(110398,25324,1,1,0,0,4053.11,778.055,4.26647,2.19469,10,10,0,0,0,0,0,0),
(110399,25324,1,1,0,0,4118.04,851.14,8.46706,2.73269,10,10,0,0,0,0,0,0),
-- 110400 - used
(110401,25324,1,1,0,0,4133.99,928.143,3.58653,2.37448,10,10,0,0,0,0,0,0),
(110402,25324,1,1,0,0,4194.75,985.897,10.7252,2.70435,10,10,0,0,0,0,0,0),
(110403,25324,1,1,0,0,4210.89,1050.96,18.3835,3.34838,10,10,0,0,0,0,0,0),
(110404,25324,1,1,0,0,4253.39,1120.35,9.78433,2.43339,10,10,0,0,0,0,0,0),
(110405,25324,1,1,0,0,4101.56,1156.63,0.176375,0.02614,10,10,0,0,0,0,0,0);

DELETE FROM creature_template_addon WHERE entry IN (25324);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, emote, moveflags, auras) VALUES 
(25324,0,0,1,0,0,24235);

-- add them all to Midsummer Fire Festival
DELETE FROM game_event_creature WHERE guid BETWEEN 110386 AND 110399;
DELETE FROM game_event_creature WHERE guid BETWEEN 110401 AND 110405;
INSERT INTO game_event_creature (guid, event) SELECT guid, 1 FROM creature WHERE id = 25324;

-- spell target corrected
DELETE FROM spell_script_target WHERE `entry`=47129;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(47129, 1, 25324, 0);

-- Earthen Ring Guide 25324 - stats
UPDATE `creature_template` SET `NpcFlags`='2', `UnitFlags`='256' WHERE `entry`='25324'; -- Earthen Ring Guide

-- spell: Totemic Beacon 47129
DELETE FROM dbscripts_on_spell WHERE id = 47129;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47129,1,31,25324,500,0,0,0,0,0,0,0,0,0,0,0,0,'check for 25324'),
(47129,11,34,19999,500,0,25324,500,1|0x08,0,0,0,0,0,0,0,0,'aura check'),
(47129,100,14,24235,0,0,25324,500,7,0,0,0,0,0,0,0,0,'remove aura from buddy'),
(47129,100,21,1,0,0,25324,500,7,0,0,0,0,0,0,0,0,'buddy active'),
(47129,101,23,23114,0,0,25324,500,7 | 0x08,0,0,0,0,0,0,0,0,'buddy change model'),
(47129,110,25,1,0,0,25324,500,7,0,0,0,0,0,0,0,0,'RUN ON'),
(47129,500,37,0,0,0,25324,500,0,0,0,0,0,0,0,0,0,'make buddy come to player');

DELETE FROM conditions WHERE condition_entry = 19999;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(19999,1,24235,0,0,0,2);

DELETE FROM dbscripts_on_relay WHERE id IN (19986,19987);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 19986
(19986,1,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'remove unitflag'),
(19986,2,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'unactive'),
-- 19987
(19987,10,35,8,7,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event AI 8'),
(19987,100,0,0,0,0,0,0,4,25739,25740,25741,0,0,0,0,0,'random say'),
(19987,1000,29,2,1,0,0,0,4,0,0,0,0,0,0,0,0,'NPCFlags added'),
(19987,60000,29,2,0,0,0,0,4,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(19987,60001,3,0,0,0,0,0,4,0,0,0,0,4118.06,830.81,6.75728,5.49293,'move'),
(19987,70000,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn self');
