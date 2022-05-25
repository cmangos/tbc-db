-- Luma Skymother 25697
UPDATE creature_template SET GossipMenuId = 11417, `NpcFlags` = `NpcFlags`|1 WHERE entry = 25697;
DELETE FROM gossip_menu WHERE entry = 11417;
INSERT INTO gossip_menu (entry,text_id) VALUES
(11417,12390);

DELETE FROM npc_text WHERE id IN (12390);
DELETE FROM npc_text_broadcast_text WHERE Id IN (12390);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12390, 0, 24551);

-- Earthen Ring Flamecaller 25754
UPDATE creature_template SET GossipMenuId = 9260, `NpcFlags` = `NpcFlags`|1 WHERE entry = 25754;
DELETE FROM gossip_menu WHERE entry = 9260;
INSERT INTO gossip_menu (entry,text_id) VALUES
(9260,12572);
DELETE FROM npc_text WHERE id IN (12572);
DELETE FROM npc_text_broadcast_text WHERE Id IN (12572);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12572, 0, 25373);

-- Shaman Beam Bunny 000 - 003
UPDATE creature_template SET MovementType = 3 WHERE entry IN (25964,25965,25966);

-- text updates
UPDATE broadcast_text SET ChatTypeId = 3 WHERE Id BETWEEN 24930 AND 24932;
-- 24930	The Earthen Ring's Assault Begins.
-- 24931	Ahune Retreats.  His defenses diminish.
-- 24932	Ahune will soon resurface.

-- Event starts from objects 'Ice Stone 187882' gossip instead of quest script
-- q.11691 Summon Ahune
UPDATE quest_template SET prevQuestId = 11696, RewSpellCast = 0, CompleteScript = 11691 WHERE entry = 11691;
DELETE FROM dbscripts_on_quest_end WHERE id = 11691;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(11691, 3000, 0, 15, 45930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Ahune - Summoning Rhyme Spell, make bonfire'); -- tbc-db only as gossip does not work (instance file)

-- Ice Stone 187882
UPDATE gameobject_template SET Data3 = 11389, `flags` = 0 WHERE entry = 187882;
DELETE FROM gossip_menu WHERE entry = 11389;
INSERT INTO gossip_menu (entry,text_id) VALUES
(11389,15864);
DELETE FROM npc_text WHERE id IN (15864);
DELETE FROM npc_text_broadcast_text WHERE Id IN (15864);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(15864, 0, 25213);
DELETE FROM gossip_menu_option WHERE menu_id = 11389;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(11389,1,0,'Disturb the stone and summon Lord Ahune.',40443,1,1,-1,0,1138901,0,0,NULL,0,0);
-- gossip Scripts should also use ID+01
DELETE FROM dbscripts_on_gossip WHERE `id` IN (7540,7520); -- from instance file for correct delete
UPDATE gossip_menu_option SET action_script_id = 754001 WHERE menu_id = 7540;
UPDATE gossip_menu_option SET action_script_id = 752001 WHERE menu_id = 7520;

-- ========
-- TBC ONLY
-- ========
-- Ahunite Frostwind 25757,26341 - https://tbc.wowhead.com/npc=25757/ahunite-frostwind
UPDATE creature_template SET UnitClass = 2, MinLevelMana = 3155, MaxLevelMana = 3155, `Healthmultiplier` = 0.225, `MinLevelHealth` = 1258, `MaxLevelHealth` = 1258 WHERE entry = 25757;
UPDATE creature_template SET UnitClass = 2, MinLevelMana = 3155, MaxLevelMana = 3155, `Healthmultiplier` = 0.300, `MinLevelHealth` = 1677, `MaxLevelHealth` = 1677 WHERE entry = 26341;

-- Ahunite Coldwave 25756,26340 - https://tbc.wowhead.com/npc=25756/ahunite-coldwave - dmg multi taken from wotlk-db
UPDATE creature_template SET `Healthmultiplier` = 0.225, `MinLevelHealth` = 1572, `MaxLevelHealth` = 1572, `DamageMultiplier` = 1, `ArmorMultiplier` = 1 WHERE entry = 25756; -- 0.215 prolly prepatch nerf
UPDATE creature_template SET `Healthmultiplier` = 0.300, `MinLevelHealth` = 2096, `MaxLevelHealth` = 2096, `ExtraFlags` = `ExtraFlags`|64 WHERE entry = 26340; -- 0.287

-- Ahunite Hailstone 25755,26342 - https://tbc.wowhead.com/npc=25755/ahunite-hailstone - dmg multi taken from wotlk-db
UPDATE creature_template SET `DamageMultiplier` = 7.5, `ArmorMultiplier` = 1, `MinLevelHealth` = 55888, `MaxLevelHealth` = 55888 WHERE entry = 25755;
UPDATE creature_template SET `DamageMultiplier` = 13, `ExtraFlags` = `ExtraFlags`|64, `MinLevelHealth` = 72165, `MaxLevelHealth` = 72165 WHERE entry = 26342;

-- Frozen Core 25865,26339 - https://tbc.wowhead.com/npc=25865/frozen-core - whyever these have expansion = 0
UPDATE creature_template SET `Expansion` = 0, `DamageMultiplier` = 1, `ArmorMultiplier` = 1, `MinLevelHealth` = 175960, `MaxLevelHealth` = 175960 WHERE entry = 25865;
UPDATE creature_template SET `Expansion` = 0, `MinLevelHealth` = 228748, `MaxLevelHealth` = 228748 WHERE entry = 26339;

-- Ahune 25740,26338 - https://tbc.wowhead.com/npc=25740/ahune - whyever these have expansion = 0, dmg multi taken from wotlk-db
UPDATE creature_template SET `Expansion` = 0, `DamageMultiplier` = 7.5, `Healthmultiplier` = 40, `MinLevelHealth` = 175960, `MaxLevelHealth` = 175960 WHERE entry = 25740;
UPDATE creature_template SET `Expansion` = 0, `DamageMultiplier` = 13,  `Healthmultiplier` = 52, `MinLevelHealth` = 228748, `MaxLevelHealth` = 228748, `rank` = 1 WHERE entry = 26338;

