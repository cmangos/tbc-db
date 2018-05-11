-- Fix drop condition for i.12842 Crudely-Written Log
-- Should only drop after q.5121 is taken or rewarded. Altough many comments on wowhead suggest that you need to have the quest in your log, that is probably only because as a player you would always pick it up the first time it drops.
-- This comment suggests you can also pick it up as long as the quest is rewarded (which also makes more sense from a design-perspecitve): http://www.wowhead.com/item=12842/crudely-written-log#comments:id=219726
-- By CreepHunter (193 – 2) on 2008/01/17 (Patch 2.3.2)
-- This dropped for me even though I wasn't on the other quest, though I had already turned it in.

UPDATE `conditions` SET `value1` = 5121, `type` = 9 WHERE `condition_entry` = 211; -- Was 5128, 8

DELETE FROM `conditions` WHERE `condition_entry` IN(552,553);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(552, 8, 5121, 0),
(553, -2, 211, 552); -- q.5121 taken or rewarded

UPDATE creature_loot_template SET condition_id=553 WHERE item=12842;

