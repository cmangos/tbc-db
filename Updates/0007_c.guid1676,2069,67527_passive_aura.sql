-- Creature (GUID: 1676) has spell 184 defined in auras field in creature_addon, but spell has cast time. Use it in AI instead.
-- Creature (GUID: 2069) has spell 184 defined in auras field in creature_addon, but spell has cast time. Use it in AI instead.
-- Venture Co. Geologist 1096 having static Fire Shield II Aura Passive (Handled by ACID)
-- DELETE FROM `creature_addon` WHERE `guid` = 1676;
-- DELETE FROM `creature_addon` WHERE `guid` = 2069;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 1096); -- Align all using creature_template_addon
DELETE FROM `creature_template_addon` WHERE `entry` = 1096;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`) VALUES (1096, 1, 16);

-- Creature (GUID: 67527) has spell 36004 defined in auras field in creature_addon, but spell has cast time. Use it in AI instead.
-- Disembodied Vindicator 18872 is buffed with Power Word: Fortitude 36004 by Disembodied Exarch 21058 (Handled by ACID)
UPDATE `creature_addon` SET `auras` = '33900' WHERE `guid` = 67527; -- Exchange 36004 for missing Shroud of Death 33900 as in creature_template_addon
UPDATE `creature_addon` SET `auras` = '33900' WHERE `guid` = 67537; -- Add missing Shroud of Death as in creature_template_addon

