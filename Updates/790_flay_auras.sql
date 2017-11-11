
UPDATE `creature_template_addon` SET auras='7939 22766 32732' WHERE `entry`=16928; -- Stonescythe Ambusher c.16928 - Sneak and Flay Auras
UPDATE `creature_template_addon` SET auras='32732' WHERE `entry`=16929; -- Stonescythe Alpha c.16929 - Flay Aura

DELETE FROM `creature_template_addon` WHERE `entry`=23264; -- Overmine Flayer c.23264 - Flay Aura
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(23264, 0, 0, 1, 16, 0, 0, '32732');

DELETE FROM `creature_template_addon` WHERE `entry`=23267; -- Arvoar the Rapacious c.23267 - Flay Aura
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(23267, 0, 0, 1, 16, 0, 0, '32732');

DELETE FROM `creature_template_addon` WHERE `entry`=23269; -- Barash the Den Mother c.23269 - Flay Aura
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(23269, 0, 0, 1, 16, 0, 0, '32732');

