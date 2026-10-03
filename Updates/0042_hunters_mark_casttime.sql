-- Hunter's Mark (all ranks) had no cast time index, so the ranged cast
-- animation never played. CastingTimeIndex 18 provides the proper
-- hunter ranged cast time.
-- ref https://github.com/cmangos/issues/issues/3112
UPDATE `spell_template` SET `CastingTimeIndex` = 18 WHERE `Id` IN (1130, 14323, 14324, 14325, 31615);
