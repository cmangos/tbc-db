UPDATE quest_template SET SpecialFlags=2 WHERE entry IN(1560); -- fix Toogas quest quest being autocompleted at start

DELETE FROM gameobject WHERE id=2008;
INSERT INTO gameobject(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('17154', '2008', '0', '-19.4826', '-935.304', '58.0971', '2.6529', '-0.046553', '0.011607', '0.969178', '0.241643', '7200', '100', '1');


/*Quest 1999 Tools for the Trade*/

UPDATE creature_template SET GossipMenuId=161 WHERE entry IN(6566); -- assign menu

DELETE FROM gossip_menu_option WHERE menu_id=161 AND id=1;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('161', '1', '0', '[PH] Get Thieves\' Tools', '1', '1', '-1', '0', '16101', '0', '0', NULL, '3175'); -- add missing option

DELETE FROM conditions WHERE condition_entry=3175;
INSERT INTO conditions VALUES
('3175', '9', '1999', '0');

DELETE FROM dbscripts_on_gossip WHERE id=16101;
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('16101', '0', '15', '9949', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast Thieves\' Tool Rack Conjure'); -- add script to spawn in thieves tools

UPDATE creature_template SET ExtraFlags=ExtraFlags&~128 WHERE entry IN(21348,21310,15384); -- remove invis to enable seeing visual
UPDATE creature_template SET ModelId1=13069 WHERE entry = 21310; -- remove implike model

UPDATE dbscripts_on_creature_movement SET data_flags=data_flags|0x08 WHERE id=2130901 AND delay=1; -- make cast triggered to enable showing visual from channel

UPDATE creature_template SET FactionAlliance=35,FactionHorde=35 WHERE entry=17435; -- set correct faction from wotlk-db

UPDATE quest_template SET ExclusiveGroup=0 WHERE entry=8280; -- remove exclusive group, the group is for prequests (one horde one ally)

UPDATE `creature` SET `position_x`=1924.63, `position_y`= 5574.76, `position_z`=273.122,modelid=0 WHERE  `guid`=74872; -- remove hacked positions when visual wasnt working


/*
http://jira.vengeancewow.com/browse/TBC-1174
Nightlash hitting players with Spirit Steal
*/

DELETE FROM spell_script_target WHERE entry = 3477;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(3477, 1, 1772, 0),
(3477, 1, 1773, 0);

/*
http://jira.vengeancewow.com/browse/TBC-1941
http://www.wowhead.com/npc=21350/gronn-priest#comments:id=39991
Make Gronn-Priest interruptable
*/
UPDATE creature_template SET MechanicImmuneMask = 619397119 WHERE entry = 19389;



UPDATE creature_template SET ExtraFlags = 64 WHERE entry IN (22474, 22475); -- Unstable Fel imps should not give XP

DELETE FROM gameobject WHERE id IN(103661); -- object spawned by script

UPDATE gameobject_template SET data14=1 WHERE entry=103661; -- make trap search for friendlies


