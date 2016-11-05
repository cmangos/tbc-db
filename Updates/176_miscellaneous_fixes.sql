/*
http://jira.vengeancewow.com/browse/TBC-1666;
Only 1 Venture Co. Goblin in STV with spawntime of 25 secs currently
*/
UPDATE creature SET spawntimesecs = 300 WHERE guid = 1027;

-- http://jira.vengeancewow.com/browse/TBC-1933
-- ClassicDB: StartScript for What Is Going On? (3982)
UPDATE quest_template SET StartScript = 3982 WHERE entry = 3982;

DELETE FROM dbscripts_on_quest_start WHERE id = 3982;
INSERT INTO dbscripts_on_quest_start VALUES
(3982, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gor''shak active'),
(3982, 1, 22, 495, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'temp faction'),
(3982, 1, 0, 0, 0, 0, 0, 0, 2000009018, 0, 0, 0, 0, 0, 0, 0, 'say'),
(3982, 3, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 379.509, -191.971, -69.718, 3.4033, '1st wave'),
(3982, 4, 3, 0, 0, 8891, 20, 0, 0, 0, 0, 0, 372.17, -178.3, -70.03, 3.4033, 'move inside cell'),
(3982, 4, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 376.053, -192.092, -70.561, 1.8162, '1st wave'),
(3982, 4, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 374.817, -190.909, -70.725, 1.2256, '1st wave'),
(3982, 43, 34, 944, 3382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(3982, 44, 34, 945, 3382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(3982, 45, 10, 9398, 300000, 0, 0, 0, 0, 0, 0, 0, 379.509, -191.971, -69.718, 3.4033, '2nd wave'),
(3982, 46, 3, 0, 0, 9398, 20, 0, 0, 0, 0, 0, 372.17, -178.3, -70.03, 3.4033, 'move inside cell'),
(3982, 46, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 376.053, -192.092, -70.561, 1.8162, '2nd wave'),
(3982, 46, 10, 8891, 300000, 0, 0, 0, 0, 0, 0, 0, 374.817, -190.909, -70.725, 1.2256, '2nd wave'),
(3982, 97, 34, 944, 3382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(3982, 97, 34, 945, 3382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop script if npc is dead'),
(3982, 98, 7, 3982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest credit'),
(3982, 99, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gor''shak unactive');

DELETE FROM db_script_string WHERE entry = 2000009018;
INSERT INTO db_script_string VALUES
(2000009018, 'Defend yourself, fool!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- http://jira.vengeancewow.com/browse/TBC-1843
-- CompleteScript for Helcular's Revenge (553)
UPDATE quest_template SET CompleteScript = 553 WHERE entry = 553;



-- Gloom'rel should start friendly, he has gossip which spawns object for quest The Spectral Chalice (4083) to learn spell Smelt Dark Iron (14891)
-- Fixes "The Seven" encounter in BRD
-- http://jira.vengeancewow.com/browse/TBC-1740
-- http://jira.vengeancewow.com/browse/TBC-1933
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35 WHERE Entry IN (9034,9035,9036,9037,9038,9039);
-- Fix Chest of the Seven position
UPDATE gameobject SET position_x = 1265.85, position_y = -285.098, position_z = -78.2193, orientation = 3.90954, rotation0 = 0, rotation1 = 0, rotation2 = -0.927183, rotation3 = 0.374608 WHERE id = 169243;

