-- Fixed stats of NPC 9196 (Highlord Omorokk) in Blackrock Spire
-- Thanks TheTrueAnimal for reporting and Metalica for contributing.
-- This closes #678 
UPDATE `creature_template` SET `MinLevelHealth` = 23688, `MaxLevelHealth` = 23688 WHERE `Entry` = 9196;

