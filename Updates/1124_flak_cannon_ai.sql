-- [PH]Knockdown Fel Cannon Dummy 23077
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = 23077;
DELETE FROM `creature_template_addon` WHERE `entry` = 23077;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (23077, 0, 0, 0, 0, 0, 0, 40113);

-- Legion Flak Cannon 23082
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = 23082;



INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `comment`) 
	VALUES 
    