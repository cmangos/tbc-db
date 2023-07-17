-- Correct Detection and CallForHelp for some Karazhan NPCs based on wotlk ptr tests
-- Spectral Stable Hand
UPDATE `creature_template` SET `Detection` = 18, `CallForHelp` = 5 WHERE `entry` = 15551;

-- Spectral Charger
UPDATE `creature_template` SET `Detection` = 18, `CallForHelp` = 5 WHERE `entry` = 15547;

-- Spectral Stallion
UPDATE `creature_template` SET `Detection` = 18, `CallForHelp` = 5 WHERE `entry` = 15548;

-- Spectral Apprentice 
UPDATE `creature_template` SET `Detection` = 15, `CallForHelp` = 5 WHERE `entry` = 16389;

-- Spectral Servent 
UPDATE `creature_template` SET `Detection` = 11, `CallForHelp` = 5 WHERE `entry` = 16407;

-- Spectral Sentry 
UPDATE `creature_template` SET `Detection` = 16, `CallForHelp` = 7 WHERE `entry` = 16424;

-- Phantom Guardsman
UPDATE `creature_template` SET `Detection` = 16, `CallForHelp` = 7 WHERE `entry` = 16425;

-- Ghostly Steward
UPDATE `creature_template` SET `Detection` = 18, `CallForHelp` = 3 WHERE `entry` = 16414;

-- Phantom Guest 
UPDATE `creature_template` SET `Detection` = 15, `CallForHelp` = 4 WHERE `entry` = 16409;

-- Phantom Valet
UPDATE `creature_template` SET `Detection` = 13, `CallForHelp` = 4 WHERE `entry` = 16408;

-- Skeletal Waiter
UPDATE `creature_template` SET `Detection` = 13, `CallForHelp` = 4 WHERE `entry` = 16415;

-- Spectral Retainer
UPDATE `creature_template` SET `Detection` = 13, `CallForHelp` = 2 WHERE `entry` = 16410;

-- Phantom Attendant
UPDATE `creature_template` SET `Detection` = 13, `CallForHelp` = 2 WHERE `entry` = 16406;

-- Spectral Patron
UPDATE `creature_template` SET `Detection` = 15, `CallForHelp` = 2 WHERE `entry` = 16468;