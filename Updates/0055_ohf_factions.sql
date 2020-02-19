-- Resolves https://github.com/cmangos/issues/issues/2128
-- Set Faction 634 for Durnholde Armorer, Durnholde Cook
UPDATE `creature_template` SET `faction` = 634 WHERE `entry` IN (18764,20523,18765,20524); -- Durnholde Armorer, Durnholde Cook

-- Set Faction 1748 for Tarren Mill Guardsman, Tarren Mill Protector, Tarren Mill Lookout, Epoch Hunter, Infinite Slayer, Infinite Defiler, Infinite Saboteur
UPDATE `creature_template` SET `faction` = 1748 WHERE `entry` IN (18092,20545,18093,20547,18094,20546,18096,20531,18170,20534,18171,20532,18172,20533);

