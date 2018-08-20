-- Oshu'gun Crystal Powder Repeatable quests should grant 8750xp
-- https://www.wowhead.com/quest=10074/oshugun-crystal-powder#comments
-- https://www.wowhead.com/quest=10075/oshugun-crystal-powder#comments
-- https://www.wowhead.com/quest=10076/oshugun-crystal-powder#comments
-- https://www.wowhead.com/quest=10077/oshugun-crystal-powder
UPDATE quest_template SET RewMoneyMaxLevel=52500 WHERE entry IN(10075,10077);
