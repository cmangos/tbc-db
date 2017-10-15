UPDATE gameobject SET spawntimesecs=90 WHERE id=186266; -- Deserter Propaganda - down from abysmal 900

UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE entry=16152 AND item=23809; -- Schematic: Stabilized Eternium Scope up from 0.5%

UPDATE creature_template SET SchoolImmuneMask=4,ResistanceFire=0,MechanicImmuneMask=16 WHERE entry IN(6073); -- searing infernal, immune to fire, immune to fear

UPDATE quest_template SET SpecialFlags=0 WHERE entry IN(5056); -- quest should not require external event
DELETE FROM dbscripts_on_event WHERE id=4975 AND delay=1 AND command=7;

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
-- Mightbane not tauntable
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry=17225;

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

-- Fix drop chance and make it not drop when you have it or quest taken/completed
DELETE FROM conditions WHERE condition_entry IN(1145,1146,1147,1148);
INSERT INTO conditions VALUES
(1145,19,9535,0),
(1146,-1,3,1145),
(1147,16,23797,1),
(1148,-1,1146,1147);
UPDATE creature_loot_template SET ChanceOrQuestChance=20,condition_id=1148 WHERE item=23797;

-- need to point to Cooking Trainer not Ench Trainer
UPDATE gossip_menu_option SET action_poi_id=42 WHERE menu_id=421 AND id=2;

UPDATE creature SET spawntimesecs=28800 WHERE id IN(521); -- make Lupos much rarer

-- Deep Elem Mine proper quaternion
DELETE FROM gameobject WHERE id IN(1692);
INSERT INTO gameobject(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('33326', '1692', '0', '340.22', '1249.68', '80.8974', '2.76636', '0.68659', '0.001571', '0.72691', '0.013906', '7200', '100', '1');

-- Campfire trap GO - target frendlies
UPDATE gameobject_template SET CustomData1=1 WHERE entry IN(31442);

-- Bubbly fissure GO - wrong data
UPDATE gameobject_template SET type=6, CustomData1=1 WHERE entry IN(177524);

-- Ravenwind - better quaternion than we had
DELETE FROM gameobject WHERE id IN(152580);
INSERT INTO gameobject(guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
('49843', '152580', '1', '-4445.28', '2058.18', '44.9976', '-0.767946', '0.468413', '0.332221', '-0.472813', '0.668331', '900', '100', '1');

-- unify respawntime
UPDATE gameobject SET spawntimesecs=1800 WHERE id IN(180751);

-- nesingwary expedition should not be inn
DELETE FROM areatrigger_tavern WHERE id IN(98);

-- add spell script target so that visual happens during Portal to Maraudon creation
DELETE FROM spell_script_target WHERE entry IN(21127);
INSERT INTO spell_script_target VALUES(21127,0,178386,0);

-- wowhead mentions several minutes so taking a guess and changing to 3 from 5
UPDATE gameobject SET spawntimesecs=180 WHERE id IN(142477);

-- Mage tower areatrigger teleport orientation fixes
UPDATE areatrigger_teleport SET target_orientation=5.211 WHERE id IN(702);
UPDATE areatrigger_teleport SET target_orientation=5.346 WHERE id IN(704);

-- Set respawn to wowhead comment data - TODO: implement pooling for these entries
UPDATE gameobject SET spawntimesecs=180 WHERE id IN(179486,179490);

-- give proper rep reward normal 12 up to honored, hc 15
UPDATE creature_onkill_reputation SET RewOnKillRepValue1=12, MaxStanding1=5 WHERE creature_id=18797;
UPDATE creature_onkill_reputation SET RewOnKillRepValue1=15 WHERE creature_id=20662;

-- Add swimming InhabitType to Monstrous Crawler
UPDATE creature_template SET InhabitType=3 WHERE entry=1088;

-- remove custom scale from entries
UPDATE creature_template SET Scale=0 WHERE entry IN(4324,10182);

-- SSC attunement, correct chaining and cast Mark of Vashj on player on completion
UPDATE quest_template SET PrevQuestId=10900,RewSpellCast=39145 WHERE entry=10901;

-- Astral Flare
UPDATE creature_template SET ExtraFlags=ExtraFlags|256,MechanicImmuneMask=MechanicImmuneMask|(64+1024+2048) WHERE entry=17096;
-- Immune to taunts, stuns, roots, and snares'

-- Malchezaar
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry=15690;
-- Immune to taunt

-- Ritual of Summoning - trigger spell after 5 seconds
UPDATE gameobject_template SET CustomData1=5000 WHERE entry IN(36727,179944);
-- Add visual to Meeting stone summon
UPDATE gameobject_template SET data2=32929 WHERE entry = 179944;

-- Make visual target Meeting Stone Summoning GO as well
DELETE FROM spell_script_target WHERE entry=32929 AND targetEntry=179944;
INSERT INTO spell_script_target VALUES('32929', '0', '179944', '0');

-- https://jira.vengeancewow.com/browse/TBC-2035
-- Out of This World Produce! (11036)
-- https://jira.vengeancewow.com/browse/TBC-2021
-- Report to Spymaster Thalodien (11039)
-- no minimum level set for these quests currently
UPDATE `quest_template` SET `MinLevel` = 67 WHERE `entry` IN (11036, 11039);

-- https://jira.vengeancewow.com/browse/TBC-2032
-- Currently 15 minute respawn, set to 2 minutes instead
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `id` = 272;

-- https://jira.vengeancewow.com/browse/TBC-2071
-- Verog the Dervish has a chance to be summoned via ACID, remove static spawn
DELETE FROM `creature` WHERE `id` = 3395;


-- Shattrath to Caverns of Time gossip
UPDATE dbscripts_on_gossip SET data_flags=0 WHERE id=9205; -- fix crash, npc should cast it on player

-- Fix Naxx areatrigger naming and quest req
UPDATE areatrigger_teleport SET required_quest_done=9378 WHERE id IN(4055,4156);
UPDATE areatrigger_teleport SET name='Naxxramas (Entrance)' WHERE id IN(4055);
UPDATE areatrigger_teleport SET name='Naxxramas (Exit)' WHERE id IN(4156);

