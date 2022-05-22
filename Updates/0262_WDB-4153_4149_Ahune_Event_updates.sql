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

