-- Add missing creature template for NPC 7073 (Arados the Damned)
-- This is for exhaustivity purpose as the NPC was removed in patch 1.10
-- Possibly wrong multiplier as NPC was removed
UPDATE `creature_template` SET `ModelId1` = 11369, `SpeedWalk` = (2.5/2.5), `SpeedRun` = (15/7) WHERE `entry` = 7073;

