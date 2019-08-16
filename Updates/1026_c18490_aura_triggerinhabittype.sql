-- Correct InhabitType for "Legion Antenna:" or "Invis Horde Siege Engine" or "Invis Alliance Siege Engine" or "Infernal Rain (Hellfire)" - Triggers
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry`  IN (19276,19277,19278,19279,19326,19328,19329,18818,19009,21236,21237,18849,19008,18729);

-- Fallen Druid 18490
UPDATE `creature_template_addon` SET `auras` = '29266 32423' WHERE `entry` = 18490;

