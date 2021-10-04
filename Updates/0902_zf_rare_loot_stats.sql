-- Instance Loot with High Chance was added later to his npc
-- https://web.archive.org/web/20060524112419/http://wow.allakhazam.com/db/mob.html?wmob=10080
-- https://classic.wowhead.com/npc=10080/sandarr-dunereaver#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 10080 AND `item` IN (862,2040,5616,6440,9480,9481,9482,9483,9484,9511,9512); -- https://github.com/cmangos/tbc-db/commit/fe966598fd14506c19344e11027cc7ec80c95bfb was wrong
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 80 WHERE `entry` = 10080 AND `item` = 60174; -- NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)

-- https://web.archive.org/web/20060522073613/http://wow.allakhazam.com/db/mob.html?wmob=10081 ~18-22% for i.12471 (18.55)
-- https://classic.wowhead.com/npc=10081/dustwraith#drops
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 10081 AND `item` = 60174; -- NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)

-- https://web.archive.org/web/20060615193800/http://wow.allakhazam.com:80/db/mob.html?wmob=10082 ~15-20% for i.12470 (18.6856)
-- https://classic.wowhead.com/npc=10082/zerillis#drops
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 10082 AND `item` = 60174; -- NPC LOOT (Green World Drop) - (Item Levels: 44-48) - (NPC Levels: 45)

UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (7787,7788); -- Sandfury Slave/Drudge pickpocketing loot as normal loot
DELETE FROM `creature_loot_template` WHERE `entry` IN (7787,7788);

-- Improve stats for static npcs
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 5648; -- Sandfury Shadowcaster
UPDATE `creature_template` SET `Powermultiplier` = 2, `RangedBaseAttackTime` = 2000 WHERE `entry` = 5649; -- Sandfury Blood Drinker
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 5650; -- Sandfury Witch Doctor
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 7246; -- Sandfury Shadowhunter
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 7247; -- Sandfury Soul Eater
UPDATE `creature_template` SET `Powermultiplier` = 2, `RangedBaseAttackTime` = 2000 WHERE `entry` = 7267; -- Chief Ukorz Sandscalp (UnitFlags 64)
UPDATE `creature_template` SET `Powermultiplier` = 2, `RangedBaseAttackTime` = 1700 WHERE `entry` = 7268; -- Sandfury Guardian (UnitFlags 33088 -> 32832)
UPDATE `creature_template` SET `UnitFlags` = 0, `InhabitType` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 7269; -- Scarab
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 7271; -- Witch Doctor Zum'rah
UPDATE `creature_template` SET `Powermultiplier` = 2, `RangedBaseAttackTime` = 2500 WHERE `entry` = 7272; -- Theka the Martyr
UPDATE `creature_template` SET `UnitFlags` = 33088, `Powermultiplier` = 2, `RangedBaseAttackTime` = 2000, `MovementType` = 0 WHERE `entry` = 7273; -- Gahz'rilla (UnitFlags 33088)
UPDATE `creature_template` SET `Powermultiplier` = 2, `RangedBaseAttackTime` = 2600 WHERE `entry` = 7274; -- Sandfury Executioner
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 7604; -- Sergeant Bly
UPDATE `creature_template` SET `RangedBaseAttackTime` = 1600 WHERE `entry` = 7605; -- Raven
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 7606; -- Oro Eyegouge
UPDATE `creature_template` SET `UnitFlags` = 0, `InhabitType` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 7607; -- Weegli Blastfuse
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 7608; -- Murta Grimgut
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 7795; -- Hydromancer Velratha
UPDATE `creature_template` SET `Powermultiplier` = 2, `RangedBaseAttackTime` = 2600 WHERE `entry` = 7797; -- Ruuzlu
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 8095; -- Sul'lithuz Sandcrawler (UnitFlags 64)
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 8120; -- (UnitFlags 320 -> 64)
UPDATE `creature_template` SET `Detection` = 55, `RangedBaseAttackTime` = 2000 WHERE `entry` = 8127; -- Antu'sul (UnitFlags 64)
UPDATE `creature_template` SET `SpeedWalk` = (2.777780055999755859 / 2.5), `RangedBaseAttackTime` = 2000 WHERE `entry` = 8130; -- Sul'lithuz Hatchling
UPDATE `creature_template` SET `Powermultiplier` = 2 WHERE `entry` = 10080; -- Sandarr Dunereaver
UPDATE `creature_template` SET `Powermultiplier` = 2 WHERE `entry` = 10081; -- Dustwraith
UPDATE `creature_template` SET `Powermultiplier` = 2, `RangedBaseAttackTime` = 2000 WHERE `entry` = 10082; -- Zerillis

