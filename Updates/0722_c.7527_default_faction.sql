-- Set Default Faction 14 for Goblin Land Mine 7527 as per creaturedifficulty.sql
-- depends on spell used to summon it (s.4100,10837,21688)
UPDATE `creature_template` SET `Faction` = 14 WHERE `entry` = 7527; -- befor 495, snifffactions 1629,1

