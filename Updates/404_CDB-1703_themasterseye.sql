
UPDATE `creature_template` SET `UnitFlags`='768', `CreatureTypeFlags`='4' WHERE `Entry`='15963';
DELETE FROM `creature_template_addon` WHERE `entry`=15963;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(15963, 0, 0, 1, 16, 0, 0, '18430');
UPDATE `creature` SET `position_x`='-8953.297', `position_y`='1233.641', `position_z`='-99.71796', `orientation`='5.305801' WHERE `guid`='88072';
