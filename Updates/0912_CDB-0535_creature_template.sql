SET @FACT :=  67; -- Scarlet Crusade

-- --------------------------------------------

UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 10425; -- Crimson Battle Mage
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 10419; -- Crimson Conjuror
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 10421; -- Crimson Defender
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 10424; -- Crimson Gallant
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 10418; -- Crimson Guardsman
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 11120; -- Crimson Hammersmith
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 11043; -- Crimson Monk
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 10426; -- Crimson Inquisitor
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 10423; -- Crimson Priest
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 10422; -- Crimson Sorcerer
UPDATE `creature_template` SET `Faction` = @FACT WHERE `Entry` = 10420; -- Crimson Initiate

