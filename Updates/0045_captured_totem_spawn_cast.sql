-- Fix #4048: Captured Totem (entry 23811) does not have its periodic aura
-- 42464 on spawn. The creature is a wild summon (Summoning Properties 121)
-- and never becomes a Totem object, so TotemAI logic never applies. Assign
-- EventAI instead and apply the aura via creature_template_addon.
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 23811;

INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (23811, '42464');
