-- Revamp Loot Template for Strong Junkbox 29569

-- https://wowhead.com/pickpocketing-guide
-- https://wow.gamepedia.com/Pick_Pocket
-- Chance can be very well higher, but chance is better then no chance
DELETE FROM `pickpocketing_loot_template` WHERE `entry` IN (15551,16471,18585,20036,20049,20052,20216,20454,20600,20881,20902,22128,22845,22874,23049,23216,23239,23582,23774) AND `item` = 29569;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(15551, 29569, 2, 0, 1, 1, 'Strong Junkbox'), -- https://www.wowhead.com/npc=15551/spectral-stable-hand#pickpocketing
(16471, 29569, 1.2, 0, 1, 1, 'Strong Junkbox'), -- https://www.wowhead.com/npc=16471/skeletal-usher#pickpocketing
(18585, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Raliq the Drunk
(20036, 29569, 38, 0, 1, 1, 'Strong Junkbox'), -- https://www.wowhead.com/npc=20036/bloodwarder-squire#pickpocketing
(20049, 29569, 7, 0, 1, 1, 'Strong Junkbox'), -- https://www.wowhead.com/npc=20049/crimson-hand-blood-knight#pickpocketing
(20052, 29569, 22, 0, 1, 1, 'Strong Junkbox'), -- https://www.wowhead.com/npc=20052/crystalcore-mechanic#pickpocketing
(20216, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Grulloc <Son of Gruul>
(20454, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Nexus-King Salhadaar
(20600, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Maggoc <Son of Gruul>
(20881, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Unbound Devastator
(20902, 29569, 1.3, 0, 1, 1, 'Strong Junkbox'), -- https://www.wowhead.com/npc=20902/sargeron-hellcaller#pickpocketing
(22128, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Durnholde Lookout
(22845, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Ashtongue Mystic
(22874, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Coilskar Harpooner
(23049, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Shadowmoon Weapon Master
(23216, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Ashtongue Defender
(23239, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Bonechewer Combatant
(23582, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'), -- Amani'shi Tribesman
(23774, 29569, 0.5, 0, 1, 1, 'Strong Junkbox'); -- Amani'shi Trainer

-- https://www.wowhead.com/item=29569/strong-junkbox#comments
-- https://web.archive.org/web/20110630044313/http://www.wowhead.com:80/item=29569#contains
-- thx @ Lepo_hs - https://www.youtube.com/channel/UCijQ1drUm0tjtxOw0lDznuw
-- https://www.youtube.com/watch?v=rpMaZ1QixII
-- https://www.youtube.com/watch?v=eikypYqc7hc
-- https://www.youtube.com/watch?v=Rfqf9NoDlqk
-- https://www.youtube.com/watch?v=m611qIL9-tQ
-- https://www.youtube.com/watch?v=efri4RBdM6c
-- https://www.youtube.com/watch?v=6yWaPb6ds7g
-- https://www.youtube.com/watch?v=Y2rIvu-xGyE
UPDATE `item_template` SET `minMoneyLoot` = 150, `maxMoneyLoot` = 600 WHERE `entry` = 29569;
DELETE FROM `item_loot_template` WHERE `entry` = 29569;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(29569, 2931, 30, 1, 2, 5, 0, 'Maiden''s Anguish'),
(29569, 5173, 30, 1, 2, 5, 0, 'Deathweed'),
(29569, 8924, 30, 1, 2, 5, 0, 'Dust of Deterioration'),
(29569, 8923, 10, 1, 2, 5, 0, 'Essence of Agony'),

(29569, 5140, 75, 0, 2, 5, 0, 'Flash Powder'),
(29569, 48999, 75, 1, -48999, 1, 0, 'Strong Junkbox (29569) - (Grey Items)'),
(29569, 22829, 12, 0, 1, 1, 0, 'Super Healing Potion'), -- 9.5

-- (29569, 5530, 40, 0, 2, 5, 0, 'Blinding Powder'), -- https://tbc.wowhead.com/item=5530/blinding-powder#comments:id=2666173 - removed with 2.3 i guess
-- (29569, 12004, 0.1, 1, -12004, 1, 0, 'Uncommon & Rare Gem - TBC'), -- only in pickpocketing it seems in tbc

-- this group reminds me off: Patch 2.4.0 (25-Mar-2008): Ancient Lichen now has a chance to drop a Fel Lotus where it used to drop a piece of random green jewelry.
(29569, 11979, 0.05, 2, 1, 1, 0, 'Peridot Circle'),
(29569, 11980, 0.05, 2, 1, 1, 0, 'Opal Ring'),
(29569, 11991, 0.05, 2, 1, 1, 0, 'Quicksilver Ring'),
(29569, 12035, 0.05, 2, 1, 1, 0, 'Obsidian Pendant'),
(29569, 16251, 0.1, 2, 1, 1, 0, 'Formula: Enchant Bracer - Superior Stamina'),

(29569, 31331, 0.05, 0, 1, 1, 0, 'The Night Blade'), -- 0.01
(29569, 34622, 0.1, 0, 1, 1, 0, 'Spinesever'); -- 0.1

DELETE FROM `reference_loot_template_names` WHERE `entry` = 48999;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (48999, 'Strong Junkbox (29569) - (Grey Items)');
DELETE FROM `reference_loot_template` WHERE `entry` = 48999;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(48999, 24231, 70, 1, 2, 3, 0, 'Coarse Snuff'),
(48999, 24281, 8, 1, 1, 1, 0, 'Carved Ivory Bone'),
(48999, 24282, 8, 1, 1, 1, 0, 'Rogue''s Diary'),
(48999, 24232, 8, 1, 2, 2, 0, 'Shabby Knot'),
(48999, 27729, 6, 1, 1, 1, 0, 'Humanoid Skull');

-- Bonus
UPDATE `creature_template` SET `pickpocketlootid` = 0 WHERE `entry` IN (18155,21544); -- Bloodfalcon
DELETE FROM `pickpocketing_loot_template` WHERE `entry` IN (18155,21544);

