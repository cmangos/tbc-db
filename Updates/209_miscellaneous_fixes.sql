UPDATE gameobject SET spawntimesecs=90 WHERE id=186266; -- Deserter Propaganda - down from abysmal 900

UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE entry=16152 AND item=23809; -- Schematic: Stabilized Eternium Scope up from 0.5%

UPDATE creature_template SET SchoolImmuneMask=4,ResistanceFire=0,MechanicImmuneMask=16 WHERE entry IN(6073); -- searing infernal, immune to fire, immune to fear

UPDATE quest_template SET SpecialFlags=0 WHERE entry IN(5056); -- quest should not require external event

UPDATE quest_template SET MinLevel=47 WHERE entry IN(3941,3942); -- mid questline wrong minlevel

DELETE FROM gameobject WHERE guid=30079 AND id=2024;
INSERT INTO gameobject VALUES -- fix andorhal sign quaternion
('30079', '2024', '0', '1', '452.427', '-629.573', '166.348', '2.90598', '0.576802', '-0.173584', '0.779713', '0.170927', '7200', '100', '1');

-- Sprok data fixes and gossip
UPDATE creature_template SET FactionAlliance=120,FactionHorde=120,GossipMenuId=12741,NpcFlags=1 WHERE entry=8320;

DELETE FROM gossip_menu WHERE entry=12741;
INSERT INTO gossip_menu VALUES
('12741', '17880', '0', '0');

DELETE FROM npc_text WHERE id IN(17880);
INSERT INTO npc_text VALUES
('17880', 'This teleporter will transport you to Grom''gol in Northern Stranglethorn.$B$BUsually.$B$BI mean, sometimes it''ll just disintegrate you, or reduce all your soft tissues into a greenish, foul-smelling mist, but mostly it''s safe!$B$B...mostly.', '', '0', '100', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');

UPDATE gameobject_template SET data5=1 WHERE entry in(177243,177365,177366,177367,177368,177369,177397,177398,177399,177400); -- should despawn after usage

DELETE FROM npc_vendor WHERE entry=3348 AND item=5642;
INSERT INTO npc_vendor VALUES -- horde NPC was missing this TBC-530
('3348', '5642', '0', '0', '0', '0', 'Recipe: Free Action Potion');

-- Nightbane immune to interrupt and silence
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(33554432+256) WHERE entry=17225;

-- Celebras the Redeemed fixes
-- fixes script getting stuck
DELETE FROM dbscripts_on_spell WHERE id = 21914;
INSERT INTO dbscripts_on_spell(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('21914', '0', '14', '21916', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Celebras - Remove Celebras Waiting');

DELETE FROM dbscripts_on_go_template_use WHERE id=178965 and delay=1 and command=15;
INSERT INTO dbscripts_on_go_template_use(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('178965', '1', '15', '21914', '0', '13716', '20', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'cast Celebras Quit Escort');

-- missing gossip

UPDATE creature_template SET GossipMenuId=5349,NpcFlags=NpcFlags|1 WHERE entry=13716;

DELETE FROM gossip_menu WHERE entry IN(5349,5347,5346,5361);
INSERT INTO gossip_menu VALUES
('5346', '6381', '0', '0'),
('5347', '6380', '0', '0'),
('5349', '6354', '0', '0'),
('5361', '6393', '0', '0');

DELETE FROM gossip_menu_option WHERE menu_id IN(5349,5347,5346);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
('5346', '0', '0', 'Tell me more about Remulos and Zaetar.', '1', '1', '5361', '0', '0', '0', '0', NULL, '0'),
('5347', '0', '0', 'Please tell me more about Zaetar.', '1', '1', '5346', '0', '0', '0', '0', NULL, '0'),
('5349', '0', '0', 'Please tell me more about Maraudon', '1', '1', '5347', '0', '0', '0', '0', NULL, '0');


DELETE FROM creature_loot_template WHERE entry IN(22323) AND item IN(22577); -- remove mote of shadow drop from incandescent fel spark

DELETE FROM creature WHERE id IN(17853); -- spawned by script - Tracker of the Hand

