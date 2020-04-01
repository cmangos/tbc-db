-- Correct Loot for Hound of Culuthas %& Eye of Culuthas
DELETE FROM `creature_loot_template` WHERE `entry` IN (20141,20394) AND `item` IN (
22577, -- Mote of Shadow
22786, -- Dreaming Glory
22575, -- Mote of Life
23427, -- Eternium Ore
22576 -- Mote of Mana
);


DELETE FROM `creature_loot_template` WHERE `entry` IN (20141,20394) AND `item` IN (31952,29799,25418,25421);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(20141, 25418, 80, 1, 1, 1, 'Razor Sharp Fang'),
(20141, 25421, 20, 1, 1, 1, 'Gnarled Claw'),
(20141, 31952, 0.06, 0, 1, 1, 'Khorium Lockbox'),
(20394, 29799, 80, 1, 1, 1, 'Lifeless Tendril'),
(20394, 31952, 0.1, 0, 1, 1, 'Khorium Lockbox');

