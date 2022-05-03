-- Correct CallForHelp & Stasts for Bloodwarder Protector 17993,21548 & Bloodwarder Steward 18404,21549
-- Resolves https://github.com/cmangos/issues/issues/2928
UPDATE `creature_template` SET `CallForHelp` = 1, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7), `UnitFlags` = 32832, `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000, `MovementType` = 0, `MechanicImmuneMask` = 0 WHERE `entry` IN (
17993, -- Bloodwarder Protector
18404, -- Bloodwarder Steward
21548, -- Bloodwarder Protector (1)
21549 -- Bloodwarder Steward (1)
);
UPDATE `creature_template` SET `MechanicImmuneMask` = 1 WHERE `entry` = 21548;
UPDATE `creature_template` SET `MechanicImmuneMask` = 33554433 WHERE `entry` = 21549;

