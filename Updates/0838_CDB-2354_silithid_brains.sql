-- Fix drop rate of items 20457 (Hive'Ashi Silithid Brain), 20458 (Hive'Zora Silithid Brain) & 20459 (Hive'Regal Silithid Brain)
-- Source: https://www.wowhead.com/quest=8310/breaking-the-code#comments:id=149071
-- still had low drop rates in wotlk+
-- By Chrome166 (4,789 – 14·34) on 2010/12/02 (Patch 4.0.3)		
-- This is the first quest I've found in the Cataclysm world to still have an awful drop rate.
-- buzzin6 on 2013/09/16 (Patch 5.3.0)
-- insane, I stopped counting at 100.
UPDATE creature_loot_template SET ChanceOrQuestChance=-20 WHERE item IN (20457, 20458, 20459);

