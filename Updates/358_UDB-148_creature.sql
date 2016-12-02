-- Leotheras the Blind
UPDATE creature SET position_x = 375.790283, position_y = -438.609650, position_z = 29.524517, orientation = 2.731379 WHERE guid = 93773;
DELETE FROM creature_template_addon WHERE entry = 21215;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(21215,0,8,0,0,0,0,NULL);
UPDATE creature_template SET equipmentTemplateid = 113 WHERE entry = 21215;

-- UDB EQUIPMENT BACKPORT
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('113','30208','30209','0');

-- Greyheart Spellbinder
UPDATE creature SET position_x = 369.062805, position_y = -447.304535, position_z = 29.518799, orientation = 0.755744 WHERE guid = 93772;
UPDATE creature SET position_x = 373.928528, position_y = -428.824677, position_z = 29.524717, orientation = 4.879074 WHERE guid = 93770;
UPDATE creature SET position_x = 386.668396, position_y = -443.397949, position_z = 29.527174, orientation = 2.711379 WHERE guid = 93771;


