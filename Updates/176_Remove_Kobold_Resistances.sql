-- ====================================
-- Remove Non-Existant Fire Resistances - Follow up for this will be complete revamp of all NPC Resistances
-- ====================================
UPDATE `creature_template` SET `ResistanceFire`=0 WHERE `entry` IN (40,475,476,1236,4111);

