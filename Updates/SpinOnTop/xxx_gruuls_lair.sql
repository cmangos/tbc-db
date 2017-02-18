
-- -| CREATURE |---

UPDATE `creature` SET `position_x`='77.75097', `position_y`='130.1337', `position_z`='-7.0517600', `orientation`='2.93215300' WHERE `guid`='81645';
UPDATE `creature` SET `position_x`='96.34613', `position_y`='282.4784', `position_z`='2.28933700', `orientation`='0.01745329' WHERE `guid`='72432';
UPDATE `creature` SET `position_x`='107.8713', `position_y`='282.5119', `position_z`='1.97182400', `orientation`='2.91470000' WHERE `guid`='69871';
UPDATE `creature` SET `position_x`='178.2182', `position_y`='360.4826', `position_z`='-1.0014980', `orientation`='3.10668600' WHERE `guid`='81650';
UPDATE `creature` SET `position_x`='178.0307', `position_y`='373.5659', `position_z`='0.62865630', `orientation`='3.35103200' WHERE `guid`='81649';
UPDATE `creature` SET `position_x`='65.56417', `position_y`='130.8274', `position_z`='-6.1232890', `orientation`='6.16101200' WHERE `guid`='81646';
UPDATE `creature` SET `position_x`='102.2043', `position_y`='325.5430', `position_z`='1.53777900', `orientation`='1.06465100' WHERE `guid`='83206';
UPDATE `creature` SET `position_x`='107.6821', `position_y`='333.5608', `position_z`='2.02374800', `orientation`='4.24115000' WHERE `guid`='65618';
UPDATE `creature` SET `position_x`='178.7408', `position_y`='367.1753', `position_z`='-0.2860667', `orientation`='3.22885900' WHERE `guid`='81648';
UPDATE `creature` SET `position_x`='145.9601', `position_y`='207.2958', `position_z`='-8.6712990', `orientation`='3.57792500' WHERE `guid`='81643';
UPDATE `creature` SET `position_x`='144.7309', `position_y`='199.9206', `position_z`='-9.9769820', `orientation`='3.47320500' WHERE `guid`='48348';
UPDATE `creature` SET `position_x`='143.0486', `position_y`='192.7264', `position_z`='-11.214670', `orientation`='3.40339200' WHERE `guid`='7483';
UPDATE `creature` SET `position_x`='146.5208', `position_y`='185.3577', `position_z`='-10.837770', `orientation`='3.22885900' WHERE `guid`='81652';
UPDATE `creature` SET `position_x`='149.8232', `position_y`='178.0190', `position_z`='-10.592820', `orientation`='3.10668600' WHERE `guid`='81651';
UPDATE `creature` SET `position_x`='237.4025', `position_y`='357.9814', `position_z`='-3.4079730', `orientation`='3.14159300' WHERE `guid`='81644';
UPDATE `creature` SET `position_x`='66.91407', `position_y`='90.77333', `position_z`='-4.7700540', `orientation`='1.42605200', `spawndist`='0', `MovementType`='2' WHERE `guid`='81642';
UPDATE `creature` SET `position_x`='103.2343', `position_y`='288.2716', `position_z`='1.31233300', `orientation`='1.37028000', `spawndist`='0', `MovementType`='2', `id`='19389', `curhealth`='298298', `curmana`='0' WHERE `guid`='81647'; -- pats are always Lair Brutes
UPDATE `creature` SET `position_x`='111.3240', `position_y`='323.8225', `position_z`='1.92250500', `orientation`='1.25360800', `spawndist`='0', `MovementType`='2' WHERE `guid`='86065';

-- -| CREATURE MOVEMENT |---

DELETE FROM `creature_movement` WHERE `id`='81642';
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('81642', '1', '70.51746', '115.4941', '-6.295022', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('81642', '2', '75.32204', '137.4625', '-8.535738', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('81642', '3', '90.88776', '154.4575', '-12.04372', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('81642', '4', '68.19370', '120.6717', '-6.306233', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('81642', '5', '67.05909', '91.08610', '-4.881819', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

DELETE FROM `creature_movement` WHERE `id`='81647';
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('81647', '1', '109.243', '317.835', '1.572206', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '1.780236', '0', '0'),
('81647', '2', '103.174', '288.091', '1.233782', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0');

DELETE FROM `creature_movement` WHERE `id`='86065';
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
('86065', '1', '120.5928', '352.0573', '5.406271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('86065', '2', '144.2332', '365.1607', '3.893711', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('86065', '3', '170.3369', '367.4104', '1.049798', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('86065', '4', '132.4682', '362.6462', '6.336317', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('86065', '5', '117.7346', '344.4188', '4.624224', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('86065', '6', '110.8485', '322.7347', '1.769794', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '2.635447', '0', '0');

-- -| CREATURE ADDON |---

REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`) VALUES
('83206', '0', '1', '1', '16', '0', '0'),
('65618', '0', '1', '1', '16', '0', '0'),
('81648', '0', '0', '1', '16', '375', '0'),
('81649', '0', '0', '1', '16', '375', '0'),
('81650', '0', '0', '1', '16', '375', '0');

-- -| CREATURE TEMPLATE |---

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='18847'; -- Wild Fel Stalker

-- -| GAMEOBJECT |---

UPDATE `gameobject` SET `position_x`='166.8971', `position_y`='368.2259', `position_z`='16.92091', `orientation`='4.71239', `rotation2`='-0.7071066', `rotation3`='0.7071069' WHERE `guid`='50479';
UPDATE `gameobject` SET `position_x`='99.07292', `position_y`='249.7036', `position_z`='18.3478', `orientation`='3.141593', `rotation2`='-1' WHERE `guid`='12443';

-- -| GAMEOBJECT TEMPLATE |---

UPDATE `gameobject_template` SET `flags`='32' WHERE `entry`='183817';
