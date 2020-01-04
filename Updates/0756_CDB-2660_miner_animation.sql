-- Update state for various miners in the world so they use the proper animation
UPDATE creature_template_addon SET emote=173 WHERE entry = 5843; -- Slave Worker
-- [1] OBJECT_FIELD_ENTRY: 5843
-- [1] UNIT_NPC_EMOTESTATE: 173/2.42E-43

-- [2] OBJECT_FIELD_ENTRY: 8917
-- [2] UNIT_NPC_EMOTESTATE: 173/2.42E-43
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(8917, 0, 0, 1, 16, 173, 0, NULL); -- Quarry Slave

-- Cleanup Emote 173 or Idle
DELETE FROM creature_addon WHERE guid IN (SELECT `guid` FROM `creature` WHERE `id` IN (5843,8917));

