-- Bloodsail Orders only drop from Bloodsail Orders g.2087
DELETE FROM gameobject_loot_template WHERE item=3921 AND entry !=1853;

-- Claw Key Should only drop from Druids' Cache g.19597
DELETE FROM gameobject_loot_template WHERE item=5690 AND entry !=3089;
UPDATE gameobject_loot_template SET ChanceOrQuestChance=-100 WHERE item=5690 AND entry=3089;

-- A pattern had -15% dropchance from c.2374
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item IN(7364) AND entry=2374;
-- Several non-questitems had -20% dropchance from c.2375
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item IN(11038,7364,6391,1529) AND entry=2375;
-- Several non-questitems had -45% dropchance from c.2376
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item IN(774,3818,3871,6390,7364,7909,10316,11038) AND entry=2376;
-- Several non-questitems had -35% dropchance from c.2377
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE item IN(6579,7364,7909,12261) AND entry=2377;

-- i.17422/17423 does not drop outside AV Battleground
DELETE FROM creature_loot_template WHERE item IN(17422,17423) AND entry=14285;

-- i.17422/17423/17643 doesn't require quest to drop
UPDATE creature_loot_template SET ChanceOrQuestChance=-ChanceOrQuestChance WHERE ChanceOrQuestChance < 0 AND item IN(17422,17423,17643);

-- i.9308 Grime-Encrusted Object doesn't require quest to drop
UPDATE creature_loot_template SET ChanceOrQuestChance=-ChanceOrQuestChance WHERE ChanceOrQuestChance < 0 AND item IN(9308);

-- Gray item i.5448 doesn't drop from c.10642 and shouldn't require quest
DELETE FROM creature_loot_template WHERE entry=10642 AND item=5448;

-- i.12219 does not require quest. Also normalize drop rates to 10% (5% is used in classic-db, 10% in wotlk-db)
UPDATE creature_loot_template SET ChanceOrQuestChance=10 WHERE item=12219;

-- Remove quest condition and set drop chance to 1 for all Scarab drops in AQ (chance ported from classic-db)
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE item IN(20858,20859,20860,20861,20862,20863,20864,20865);

-- Remove quest condition and set drop chance to 0.5 for items 20875,20879,20874,20877 (chance ported from classic-db)
UPDATE creature_loot_template SET ChanceOrQuestChance=0.5 WHERE item IN(20875,20879,20874,20877);

-- i.5691 doesn't drop from mobs, only from g.19598
DELETE FROM creature_loot_template WHERE item=5691;

-- Sayge's Fortunes do not drop from mobs
DELETE FROM creature_loot_template WHERE item IN(19229,19237,19238,19239,19240,19241,19243,19245,19246,19247,19248,19249,19250,19251,19252,19253,19254,19255,19256,19266,19423,19424,19451,19453,19454);

-- --------------------------
-- TBC+ ONLY BELOW THIS LINE
-- --------------------------

-- Nether Residue should not drop without quest. Add one of the standard templates and remove the current one
UPDATE creature_template SET SkinningLootId=70170 WHERE entry=21387;
DELETE FROM skinning_loot_template WHERE entry=21387;

-- Redo loot for i.24373. It was dropping with quest condition for one creature, without for one and not at all for one.
DELETE FROM creature_loot_template WHERE item=24373;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(18124, 24373, -20, 0, 1, 1, 0, 'Scout Jyoba''s Report'), -- Withered Giant
(19519, 24373, -20, 0, 1, 1, 0, 'Scout Jyoba''s Report'), -- Starving Bog Lord
(19402, 24373, -20, 0, 1, 1, 0, 'Scout Jyoba''s Report'); -- Withered Bog Lord

-- Remove loot -and pickpocketing templates for c.20424 Hillsbrad Peasant. They had random items with quest condition, but they are friendly to both factions.
DELETE FROM pickpocketing_loot_template WHERE entry=20424;
DELETE FROM creature_loot_template WHERE entry=20424;
UPDATE creature_template SET LootId=0, PickpocketLootId=0 WHERE entry=20424;
