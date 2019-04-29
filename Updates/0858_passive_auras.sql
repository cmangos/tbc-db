-- Researched Auras Poison Proc 3616, Torch Burn 5680, Phasing Stealth 6718, Slowing Poison 8601

-- Add Poison Proc 3616 for 
UPDATE `creature_template_addon` SET `auras` = '3616' WHERE `entry` IN (
2208, -- Greymist Tidehunter
2644, -- Vilebranch Hideskinner
2651, -- Witherbark Hideskinner
2686, -- Witherbark Broodguard
3260, -- Bristleback Water Seeker
3767, -- Bleakheart Trickster
5224, -- Murk Slitherer
5856, -- Glassweb Spider
6004, -- Shadowsworn Cultist
6551, -- Gorishi Wasp
8762, -- Timberweb Recluse
17236 -- Tcha'kaz
);

DELETE FROM `creature_template_addon` WHERE `entry` IN (8556,10882);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(8556, '3616'), -- Crypt Walker
(10882, '3616'); -- Arikara

-- Add Torch Burn 5680 for 
UPDATE `creature_template_addon` SET `auras` = '5680' WHERE `entry` IN (
2977, -- Venture Co. Taskmaster
3736 -- Darkslayer Mordenthal
);

-- Add Phasing Stealth 6718 for
-- based on https://github.com/TrinityCore/TrinityCore/issues/23221
UPDATE `creature_template_addon` SET `auras` = '6718' WHERE `entry` IN (
3804, -- Forsaken Intruder
15609, -- Cenarion Scout Landion
15610, -- Cenarion Scout Azenel
15611 -- Cenarion Scout Jalia
);

UPDATE `creature_template_addon` SET `auras` = '3616 6718' WHERE `entry` = 3806; -- Forsaken Infiltrator

UPDATE `creature_template_addon` SET `auras` = '6718 8601' WHERE `entry` = 3807; -- Forsaken Assassin

-- Add Slowing Poison 8601 for 
UPDATE `creature_template_addon` SET `auras` = '8601' WHERE `entry` IN (
544, -- Murloc Nightcrawler
1110, -- Skeletal Raider
5422, -- Scorpid Hunter
6554, -- Gorishi Stinger
8601 -- Noxious Plaguebat
);

DELETE FROM `creature_template_addon` WHERE `entry` = 10041;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (10041, '8601'); -- Gorishi Hive Queen

UPDATE `creature_template_addon` SET `auras` = '3616 8601' WHERE `entry` IN (
909, -- Defias Night Blade
4971 -- Slim's Friend
);

UPDATE `creature_template_addon` SET `auras` = '6408 8601' WHERE `entry` = 7110; -- Jadefire Shadowstalker

