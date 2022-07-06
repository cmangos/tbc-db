-- Adding 30 minutes duration (real time) to Fresh Carcass
-- Source: http://www.wowhead.com/item=5810#comments
UPDATE `item_template` SET `duration` = 1800, `ExtraFlags` = 1 WHERE `entry` = 5810; -- https://tbc.wowhead.com/item=5810/fresh-carcass

-- Adding 30 minutes (real time) duration to Fresh Zhevra Carcass
-- Source: http://www.wowhead.com/item=10338#comments
UPDATE `item_template` SET `duration` = 1800, `ExtraFlags` = 1 WHERE `entry` = 10338; -- https://tbc.wowhead.com/item=10338/fresh-zhevra-carcass

-- Shadowforge Torch - classic-db
UPDATE `item_template` SET `duration` = 300, `ExtraFlags` = 1 WHERE `entry` = 11885; -- https://tbc.wowhead.com/item=11885/shadowforge-torch

-- Colossal Parachute - wotlk-db
UPDATE `item_template` SET `duration` = 1200, `ExtraFlags` = 1 WHERE `entry` = 10684; -- https://tbc.wowhead.com/item=10684/colossal-parachute

-- fixing Quest 3741 allways has been a crossfaction quest
-- Source: http://www.wowwiki.com/Quest:Nida%27s_Necklace?direction=next&oldid=826304
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 3741; -- https://www.wowhead.com/npc=8965/shawn

-- fixing Quest 194 Questtext (I never met a hunter who got any kills by standing around the campfire - well, except for my father. Were you planning on killing those Stranglethorn Raptors or were you hoping they would die of old age?)
UPDATE `quest_template` SET `RequestItemsText` = 'I never met a hunter who got any kills by standing around the campfire. Were you planning on killing those Stranglethorn Raptors or were you hoping they would die of old age?' WHERE `entry` = 194;
-- https://tbc.wowhead.com/quest=194/raptor-mastery "progress"

