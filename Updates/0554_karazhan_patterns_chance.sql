-- Adjust Karazhan Pattern Drop Chances
-- https://tbc.wowhead.com/item=22559/formula-enchant-weapon-mongoose#dropped-by
-- https://tbc.wowhead.com/item=22561/formula-enchant-weapon-soulfrost#dropped-by
-- https://tbc.wowhead.com/item=22560/formula-enchant-weapon-sunfire#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `item` IN (
22559, -- Formula: Enchant Weapon - Mongoose
22561, -- Formula: Enchant Weapon - Soulfrost
22560 -- Formula: Enchant Weapon - Sunfire
);

-- https://tbc.wowhead.com/item=23809/schematic-stabilized-eternium-scope#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 23809; -- Schematic: Stabilized Eternium Scope

-- missing, probably deleted out when the loot templates were revamped
-- https://web.archive.org/web/20080502081941/http://wow.allakhazam.com:80/db/item.html?witem=21904 - 4 mobs that can drop it in an id without resetting
-- https://tbc.wowhead.com/item=21904/pattern-soulcloth-vest#dropped-by
-- https://web.archive.org/web/20080302105008/http://wow.allakhazam.com:80/db/item.html?witem=21903
-- https://tbc.wowhead.com/item=21903/pattern-soulcloth-shoulders
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20, `condition_id` = 201 WHERE `entry` = 16408 AND `item` = 21904; -- https://www.wowhead.com/item=21904/pattern-soulcloth-vest#comments:id=106058
DELETE FROM `creature_loot_template` WHERE `entry` = 16406 AND `item` = 21903;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16406, 21903, 10, 0, 1, 1, 201, 'Pattern: Soulcloth Shoulders'); -- 16 mobs that can drop it in an id without resetting

