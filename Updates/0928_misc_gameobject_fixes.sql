-- Correct Respawntimer for https://classic.wowhead.com/object=180184/school-of-fish
-- I have Fishing 150 and catch every time; it gives 14-25 Peacebloom before expiring, then respawns in 5-10 minutes.
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 600 WHERE `id` = 180184;

-- Add Rotation Values for Left Aldor Lift (no difference)
UPDATE `gameobject` SET `rotation2` = -0.81157398223876953, `rotation3` = 0.584249675273895263 WHERE `id` = 183202; -- Left Aldor Lift

UPDATE `gameobject` SET `spawntimesecsmin` = 30, `spawntimesecsmax` = 30 WHERE `id` IN (183805,183806,183807,183808); -- https://www.wowhead.com/quest=10203/invaluable-asset-zapping

UPDATE `gameobject_template` SET `Faction` = 14 WHERE `entry` = 182533; -- Liquid Fire Hellfire Ramparts HC

-- Correct "autoClose" - DespawnDelay 3secs for Monstrous Kaliri Egg 185549 - go_monstrous_kaliri_egg
UPDATE gameobject_template SET data3 = 196608 WHERE entry = 185549; -- new sniff 3000 * 65536 / 1000, old sniffs have 196608

