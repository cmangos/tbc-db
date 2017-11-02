-- Fix the condition for the quest-giving item Murloc Escape Plans from Sludge Covered Object-- The item should drop when:
-- (Quest 11075 rewarded) AND (Reputation with Faction 1015 is Friendly or higher)
-- AND (Quest 11081 not taken and not rewarded)
--
-- source: https://wow.gamepedia.com/Quest:The_Great_Murkblood_Revolt
--
DELETE FROM `item_loot_template` WHERE `entry` = 32724 AND `item` = 32726;
INSERT INTO `item_loot_template`
(`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(32724, 32726, 2, 0, 1, 1, 10045);

INSERT INTO `conditions` 
(`condition_entry`, `type`, `value1`, `value2`) VALUES
-- 966			-- Quest ID 11081 NOT Taken AND NOT Rewarded
-- 967			-- Quest 11075 rewarded
(10043, 5, 1015, 4),  	-- Reputation with Faction 1015 is friendly or higher
(10044, -1, 966, 967),	-- AND
(10045, -1, 10043, 10044);-- AND

