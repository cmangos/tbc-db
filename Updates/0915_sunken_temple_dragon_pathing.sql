UPDATE `creature_template` SET `InhabitType` = 1, `UnitFlags` = 64, `RangedBaseAttackTime` = 2000, `ExtraFlags` = `ExtraFlags`|4096, `MovementType` = 0 WHERE `entry` = 5719; -- Morphaz 50 296-393 11075 2999 (wf ab)
DELETE FROM creature_movement_template WHERE entry = 5719; -- follows Hazzas, no own unique waypoints
UPDATE `creature_template` SET `InhabitType` = 1, `UnitFlags` = 64, `RangedBaseAttackTime` = 2000, `ExtraFlags` = `ExtraFlags`|4096 WHERE `entry` = 5722; -- Hazzas 50 296-393 11075 2999 (wf ab)

-- These might start out with different InhabitType (5), see instance file for future changes with real splineflight movement entrance
UPDATE `creature_template` SET `Faction` = 50, `MovementType` = 3, `InhabitType` = 1, `UnitFlags` = 320, `RangedBaseAttackTime` = 2000, `ExtraFlags` = `ExtraFlags`|4096 WHERE `entry` = 5720; -- Weaver 50 169-224 11075 2999 (wf ab)
UPDATE `creature_template` SET `MovementType` = 3, `InhabitType` = 1, `UnitFlags` = 320, `RangedBaseAttackTime` = 2000, `ExtraFlags` = `ExtraFlags`|4096 WHERE `entry` = 5721; -- Dreamscythe 50 296-393 11075 2999 (wf ab)

