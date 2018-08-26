-- Improved Life Tap (Rank 2), only Rank 1 of Spell Ranks needs to be defined in spell_affect as they share the same SpellFamilyMask
DELETE FROM `spell_affect` WHERE `entry` = 18183;

-- Delete wrong coordiante spawn 1135 Guid: 3564 falling below ground
DELETE FROM `creature` WHERE `id` = 1135 AND `guid` = 3564;

-- Delete path from deleted spawns 3574 (dublicate 146),3570,3565,3246 (invalid wendigo entry 1135 paths),65621 (dub. 151249 / 151233), 75899 (dub. 150636),75897 (dub. 150638),75893 (dub. 150640),140770 (dub. 150639), 140769 (dub. 150637)
DELETE FROM `creature_movement` WHERE `id` IN (3574,3570,3565,3246,65621,75899,75897,75893,140770,140769);

-- Delete creature_addon from deleted invalid spawns
DELETE FROM `creature_addon` WHERE `guid` IN (48962,68923,68924,68925,75829,79020);

-- Delete creature_linking for nonexistant spawns
DELETE FROM `creature_linking` WHERE `master_guid` = 84097; -- dublicate 5430108,5430107
DELETE FROM `creature_linking` WHERE `master_guid` = 86872 AND `guid` IN (86069,86086); -- broken due to respawn guid 86069 (150052),86086 (150053)
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(150052, 86872, 1),
(150053, 86872, 1);

-- previous static spawn entry: 14528 now spellspawned, gossip works nontheless
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24440;

-- reguids, source: classic-db
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (31884,61297); -- 31884 -> 61297
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES
(61297, 5355);

-- remove old Eye of the Storm Emissary - Exodar gossips and add to new spawns at these locations. source wotlk-db - Currently isnt displayed correctly due to how the battleground queue menu is displayed (npcflags interaction)
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (84086,84087,84088,84089,84091,84092,84093,190214,190215,190222,190223,190230,190231,190278,190279,190286,190287,190510,190511);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES
(190214, 10025),(190215, 10025),
(190222, 10025),(190223, 10025),
(190230, 10025),(190231, 10025),
(190278, 10025),(190279, 10025),
(190286, 10025),(190287, 10025),
(190510, 10025),(190511, 10025);

