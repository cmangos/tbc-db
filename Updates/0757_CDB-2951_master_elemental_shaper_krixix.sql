-- Fix NPC 14401 (Master Elemental Shaper Krixix) in Blackwing Lair
-- Patch 3.0.8 (2009-01-20): No longer teaches Elementium smelting with mind control; instead, he drops a book that teaches it.
-- This NPC was not a trainer and did not have gossip back in Classic days
-- The only way to learn 22967 (Smelt Elementium) was to have him mind-controlled by a priest -> creature_template_spells
UPDATE `creature_template` SET `NpcFlags` = 0, `TrainerType` = 0, `TrainerSpell` = 0 WHERE `entry` = 14401;
DELETE FROM `npc_trainer` WHERE `entry` = 14401;

