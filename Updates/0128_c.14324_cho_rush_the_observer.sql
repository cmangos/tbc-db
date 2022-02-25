-- https://classic.wowhead.com/npc=11501/king-gordok#comments:id=2838832 - Not sappable, but disarmable,distractable,pacifyable,freezeable
UPDATE creature_template SET `NpcFlags` = 1, `UnitFlags` = 64, `InhabitType` = 1, `MechanicImmuneMask` = `MechanicImmuneMask`|536870912, `MechanicImmuneMask` = `MechanicImmuneMask`&~(4+8+128+4096) WHERE `entry` = 14324;

-- Alzzin's Minion 11460
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 800, `RangedBaseAttackTime` = 800, `MovementType` = 2 WHERE `entry` = 11460;
