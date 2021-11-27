-- Improve Mining in Underlight Mines
-- Quest 9207 - Underlight Ore Samples 
-- https://tbc.wowhead.com/quest=9207/underlight-ore-samples
-- https://tbc.wowhead.com/object=181248/copper-vein
-- https://tbc.wowhead.com/object=181249/tin-vein
UPDATE `gameobject_template` SET `faction` = 94, `size` = 0.5 WHERE `entry` = 181248;
UPDATE `gameobject_template` SET `faction` = 94, `size` = 0.5 WHERE `entry` = 181249;

UPDATE `gameobject` SET `id` = 181248 WHERE `guid` IN (75099,75024,75105,75090,75051) AND `id` = 1731; -- Underlight Ore - Copper Vein
UPDATE `gameobject` SET `id` = 181249 WHERE `guid` IN (75100,75025,75106,75091,75052) AND `id` = 1732; -- Underlight Ore - Tin Vein

DELETE FROM `pool_template` WHERE `entry` IN (2070,4694,4695,4696,4697,4698,4699);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (2070, 3, 'Master Mineral Pool - Ghostlands (Underlight Mines)'),(4694, 1, ''),(4695, 1, ''),(4696, 1, ''),(4697, 1, ''),(4698, 1, ''),(4699, 1, '');
UPDATE `pool_template` SET `description` = 'Ghostlands (Underlight Mines) - Mineral' WHERE `entry` IN (4694,4695,4696,4697,4698,4699,4708,4717,4730,4733,4735);
DELETE FROM `pool_pool` WHERE `pool_id` IN (4694,4695,4696,4697,4698,4699);
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES (4694, 2070, 0, ''),(4695, 2070, 0, ''),(4696, 2070, 0, ''),(4697, 2070, 0, ''),(4698, 2070, 0, ''),(4699, 2070, 0, '');
UPDATE `pool_pool` SET `mother_pool` = 2070, `description` = 'Ghostlands (Underlight Mines) - Mineral' WHERE `pool_id` IN (4694,4695,4696,4697,4698,4699,4708,4717,4730,4733,4735);

DELETE FROM `gameobject` WHERE `guid` IN (64800,64801) AND `id` IN (181248,181249); -- wotlk-db
DELETE FROM `gameobject` WHERE `guid` BETWEEN 5300605 AND 5300622 AND `id` IN (181248,181249,1733);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(5300605, 181248, 530, 1, 7116.52197265625, -6233.306640625, 20.98099899291992187, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 300, 300, 255, 1),
(5300606, 181249, 530, 1, 7116.52197265625, -6233.306640625, 20.98099899291992187, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 300, 300, 255, 1),
(5300607, 1733, 530, 1, 7116.52197265625, -6233.306640625, 20.98099899291992187, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 300, 300, 255, 1),

(5300608, 181248, 530, 1, 7084.4, -6211.62, 22.8685, -1.39626, 0, 0, -0.642786, 0.766046, 300, 300, 255, 1),
(5300609, 181249, 530, 1, 7084.4, -6211.62, 22.8685, -1.39626, 0, 0, -0.642786, 0.766046, 300, 300, 255, 1),
(5300610, 1733, 530, 1, 7084.4, -6211.62, 22.8685, -1.39626, 0, 0, -0.642786, 0.766046, 300, 300, 255, 1),

(5300611, 181248, 530, 1, 7238.33544921875, -6170.85302734375, 23.18495941162109375, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 300, 300, 255, 1),
(5300612, 181249, 530, 1, 7238.33544921875, -6170.85302734375, 23.18495941162109375, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 300, 300, 255, 1),
(5300613, 1733, 530, 1, 7238.33544921875, -6170.85302734375, 23.18495941162109375, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 300, 300, 255, 1),

(5300614, 181248, 530, 1, 6996.80126953125, -6254.3681640625, 6.181571006774902343, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 300, 300, 255, 1),
(5300615, 181249, 530, 1, 6996.80126953125, -6254.3681640625, 6.181571006774902343, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 300, 300, 255, 1),
(5300616, 1733, 530, 1, 6996.80126953125, -6254.3681640625, 6.181571006774902343, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 300, 300, 255, 1),

(5300617, 181248, 530, 1, 7127.56591796875, -6175.48046875, 25.37753677368164062, 2.897245407104492187, 0, 0, 0.99254608154296875, 0.121869951486587524, 300, 300, 255, 1),
(5300618, 181249, 530, 1, 7127.56591796875, -6175.48046875, 25.37753677368164062, 2.897245407104492187, 0, 0, 0.99254608154296875, 0.121869951486587524, 300, 300, 255, 1),
(5300619, 1733, 530, 1, 7127.56591796875, -6175.48046875, 25.37753677368164062, 2.897245407104492187, 0, 0, 0.99254608154296875, 0.121869951486587524, 300, 300, 255, 1),

(5300620, 181248, 530, 1, 7030.58349609375, -6267.58349609375, 9.859276771545410156, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 300, 300, 255, 1),
(5300621, 181249, 530, 1, 7030.58349609375, -6267.58349609375, 9.859276771545410156, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 300, 300, 255, 1),
(5300622, 1733, 530, 1, 7030.58349609375, -6267.58349609375, 9.859276771545410156, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 300, 300, 255, 1);

UPDATE `gameobject` SET `position_x` = 7073.06494140625, `position_y` = -6183.50927734375, `position_z` = 21.70267486572265625, `orientation` = 2.44346022605895996, `rotation2` = 0.939692497253417968, `rotation3` = 0.34202045202255249 WHERE `guid` IN (75024,75025,75026);
UPDATE `gameobject` SET `position_x` = 7064.7119140625, `position_y` = -6243.3896484375, `position_z` = 18.75861930847167968, `orientation` = 1.343901276588439941, `rotation2` = 0.622513771057128906, `rotation3` = 0.78260880708694458 WHERE `guid` IN (75105,75106,75107);
UPDATE `gameobject` SET `position_x` = 7081.0546875, `position_y` = -6264.07666015625, `position_z` = 19.02763557434082031, `orientation` = 2.827429771423339843, `rotation2` = 0.987688064575195312, `rotation3` = 0.156436234712600708 WHERE `guid` IN (75090,75091,75092);
UPDATE `gameobject` SET `position_x` = 7142.392578125, `position_y` = -6211.11181640625, `position_z` = 24.26014137268066406, `orientation` = 4.729844093322753906, `rotation2` = -0.70090866088867187, `rotation3` = 0.713251054286956787 WHERE `guid` IN (75099,75100,75101);

-- Increase Respawntime as its area limited
UPDATE `gameobject` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `guid` IN (SELECT guid from pool_gameobject where pool_entry IN (4694,4695,4696,4697,4698,4699,4708,4717,4730,4733,4735));

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 5300605 AND 5300622;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(5300605, 4694, 0, 'Ghostlands (Underlight Mines) - Copper'),
(5300606, 4694, 35, 'Ghostlands (Underlight Mines) - Tin'),
(5300607, 4694, 5, 'Ghostlands (Underlight Mines) - Silver'),

(5300608, 4695, 0, 'Ghostlands (Underlight Mines) - Copper'),
(5300609, 4695, 35, 'Ghostlands (Underlight Mines) - Tin'),
(5300610, 4695, 5, 'Ghostlands (Underlight Mines) - Silver'),

(5300611, 4696, 0, 'Ghostlands (Underlight Mines) - Copper'),
(5300612, 4696, 35, 'Ghostlands (Underlight Mines) - Tin'),
(5300613, 4696, 5, 'Ghostlands (Underlight Mines) - Silver'),

(5300614, 4697, 0, 'Ghostlands (Underlight Mines) - Copper'),
(5300615, 4697, 35, 'Ghostlands (Underlight Mines) - Tin'),
(5300616, 4697, 5, 'Ghostlands (Underlight Mines) - Silver'),

(5300617, 4698, 0, 'Ghostlands (Underlight Mines) - Copper'),
(5300618, 4698, 35, 'Ghostlands (Underlight Mines) - Tin'),
(5300619, 4698, 5, 'Ghostlands (Underlight Mines) - Silver'),

(5300620, 4699, 0, 'Ghostlands (Underlight Mines) - Copper'),
(5300621, 4699, 35, 'Ghostlands (Underlight Mines) - Tin'),
(5300622, 4699, 5, 'Ghostlands (Underlight Mines) - Silver');

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (18092,18093);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
 -- copy of 1502 with i.22634
(18092, 774, 1, 1, 1, 1, 0, 'Malachite'),
(18092, 818, 1, 1, 1, 1, 0, 'Tigerseye'),
(18092, 1210, 1, 1, 1, 1, 0, 'Shadowgem'),
(18092, 2770, 100, 0, 1, 1, 0, 'Copper Ore'),
(18092, 2835, 25, 0, 1, 2, 0, 'Rough Stone'),
(18092, 22634, -100, 0, 1, 1, 0, 'Underlight Ore'),

 -- copy of 1503 with i.22634
(18093, 1206, 1, 1, 1, 1, 0, 'Moss Agate'),
(18093, 1210, 1, 1, 1, 1, 0, 'Shadowgem'),
(18093, 1529, 1, 1, 1, 1, 0, 'Jade'),
(18093, 1705, 1, 1, 1, 1, 0, 'Lesser Moonstone'),
(18093, 2771, 100, 0, 1, 1, 0, 'Tin Ore'),
(18093, 2836, 25, 0, 1, 2, 0, 'Coarse Stone'),
(18093, 22634, -100, 0, 1, 1, 0, 'Underlight Ore');

