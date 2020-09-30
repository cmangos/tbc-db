-- Correct more Reputation Gain from nonelite mobs in Black Morass
-- https://www.wowhead.com/faction=989/keepers-of-time
-- Normal Black Morass: ~1200 reputation. 50*15 (Rift Elite)	+ 3*120 (Bosses)	= 1110 Without Trash
-- Heroic Black Morass: ~1900 reputation. 65*15								+ 3*250						= 1725 Without Trash
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 2 WHERE `creature_id` IN (
21136, -- Infinite Chronomancer
21137, -- Infinite Assassin
21138, -- Infinite Executioner
21139); -- Infinite Vanquisher

UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 3 WHERE `creature_id` IN (
22164, -- Infinite Assassin (1)
22165, -- Infinite Chronomancer (1)
22166, -- Infinite Executioner (1)
22168); -- Infinite Vanquisher (1)

