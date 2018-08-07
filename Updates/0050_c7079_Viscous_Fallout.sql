-- Viscous Fallout 7079 - Frost Immunity http://www.wowhead.com/npc=7079/viscous-fallout#comments:id=215801
-- Stuns http://www.wowhead.com/npc=7079/viscous-fallout#comments:id=171538
-- Scale change is pre wotlk only, wotlk sniff have 1.0 as scale with bounding radius UNIT_FIELD_BOUNDINGRADIUS: 0.397228 and UNIT_FIELD_COMBATREACH: 1.3
UPDATE `creature_template` SET `Scale` = 1.3, `UnitFlags` = 64, `InhabitType` = 1, `SchoolImmuneMask` = 16, `MechanicImmuneMask` = `MechanicImmuneMask`&~(2|2048|8192) WHERE `entry` = 7079;

