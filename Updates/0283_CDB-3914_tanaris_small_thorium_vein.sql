-- Cut down wrong spawns in Tanaris
UPDATE `pool_template` SET `max_limit` = 28 WHERE `entry` = 2051; -- 2051	65	Master Mineral Pool - Tanaris - 167 new max (cut down from 260 using /6 because lots of spawns are still not legit)

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108636 AND 108641;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108636 AND 108641;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9186 AND 9186;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9186 AND 9186;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 106903 AND 107160;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 106903 AND 107160;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8089 AND 8131;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8089 AND 8131;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107167 AND 107172;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107167 AND 107172;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8133 AND 8133;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8133 AND 8133;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 106879 AND 106896;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 106879 AND 106896;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8085 AND 8087;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8085 AND 8087;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108678 AND 108683;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108678 AND 108683;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 9193 AND 9193;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 9193 AND 9193;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 106777 AND 106878;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 106777 AND 106878;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8068 AND 8084;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8068 AND 8084;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107509 AND 107514;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107509 AND 107514;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8190 AND 8190;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8190 AND 8190;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 110467 AND 110471; -- 8831 was linked to ungoro
DELETE FROM `gameobject` WHERE `guid` BETWEEN 110467 AND 110471;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8831 AND 8831;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8831 AND 8831;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108217 AND 108222;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108217 AND 108222;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8308 AND 8308;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8308 AND 8308;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107731 AND 107736;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107731 AND 107736;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8227 AND 8227;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8227 AND 8227;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108259 AND 108264;
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108259 AND 108264;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8315 AND 8315;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8315 AND 8315;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108013 AND 108018; -- d.Pool 8269
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108013 AND 108018;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8274 AND 8274;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8274 AND 8274;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 106897 AND 106902; -- tanaris pool in silithus
DELETE FROM `gameobject` WHERE `guid` BETWEEN 106897 AND 106902;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8088 AND 8088;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8088 AND 8088;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107737 AND 107742; -- d.Pool 8132
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107737 AND 107742;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8228 AND 8228;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8228 AND 8228;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107875 AND 107880; -- d.Pool 8137
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107875 AND 107880;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8251 AND 8251;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8251 AND 8251;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107215 AND 107220; -- d.Pool 8261
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107215 AND 107220;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8141 AND 8141;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8141 AND 8141;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107233 AND 107238; -- too much in ground, cant be legit
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107233 AND 107238;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8144 AND 8144;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8144 AND 8144;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107953 AND 107958; -- d.Pool 8145
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107953 AND 107958;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8264 AND 8264;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8264 AND 8264;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108109 AND 108114; -- d.Pool 8155
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108109 AND 108114;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8290 AND 8290;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8290 AND 8290;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107431 AND 107436; -- d.Pool 8299
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107431 AND 107436;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8177 AND 8177;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8177 AND 8177;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108253 AND 108258; -- d.Pool 8183
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108253 AND 108258;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8314 AND 8314;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8314 AND 8314;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107545 AND 107550; -- d.Pool 8248
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107545 AND 107550;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8196 AND 8196;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8196 AND 8196;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107593 AND 107598; -- d.Pool 8197
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107593 AND 107598;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8204 AND 8204;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8204 AND 8204;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107605 AND 107610; -- d.Pool 8198
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107605 AND 107610;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8206 AND 8206;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8206 AND 8206;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107815 AND 107820; -- d.Pool 8220
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107815 AND 107820;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8241 AND 8241;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8241 AND 8241;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108115 AND 108120; -- d.Pool 8245
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108115 AND 108120;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8291 AND 8291;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8291 AND 8291;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108049 AND 108054; -- d.Pool 8247
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108049 AND 108054;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8280 AND 8280;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8280 AND 8280;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108043 AND 108048; -- d.Pool 8249
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108043 AND 108048;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8279 AND 8279;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8279 AND 8279;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108025 AND 108030; -- d.Pool 8252
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108025 AND 108030;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8276 AND 8276;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8276 AND 8276;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 107893 AND 107898; -- d.Pool 8309
DELETE FROM `gameobject` WHERE `guid` BETWEEN 107893 AND 107898;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8254 AND 8254;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8254 AND 8254;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108037 AND 108042; -- d.Pool 8265
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108037 AND 108042;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8278 AND 8278;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8278 AND 8278;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108085 AND 108090; -- d.Pool 8268
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108085 AND 108090;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8286 AND 8286;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8286 AND 8286;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108115 AND 108120; -- d.Pool 8245
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108115 AND 108120;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8291 AND 8291;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8291 AND 8291;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108211 AND 108216; -- makes no sense
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108211 AND 108216;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8307 AND 8307;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8307 AND 8307;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108241 AND 108246; -- d.Pool 9195
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108241 AND 108246;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8312 AND 8312;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8312 AND 8312;

DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 108253 AND 108258; -- d.Pool 8183
DELETE FROM `gameobject` WHERE `guid` BETWEEN 108253 AND 108258;
DELETE FROM `pool_pool` WHERE `pool_id` BETWEEN 8314 AND 8314;
DELETE FROM `pool_template` WHERE `entry` BETWEEN 8314 AND 8314;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140100;
SET @OBJECT_2 = 140101;
SET @OBJECT_3 = 140102;
SET @OBJECT_4 = 140103;
SET @OBJECT_5 = 140104;

SET @GROUP_ID = 10066;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -8894.00195312500, -2071.009033203125, 21.44279670715332031, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -9099.39843750000, -2099.059814453125, 24.86352729797363281, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -8854.05175781250, -2247.240966796875, 10.90050220489501953, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -8844.09570312500, -2373.404052734375, 17.78026390075683593, 5.724681377410888671, 0, 0, -0.27563667297363281, 0.961261868476867675, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -8998.67187500000, -2266.720947265625, 21.23620033264160156, 0.314158439636230468, 0, 0, 0.156434059143066406, 0.987688362598419189, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '324'), (@OBJECT_1, '2047'),
(@OBJECT_2, '324'), (@OBJECT_2, '2047'),
(@OBJECT_3, '324'), (@OBJECT_3, '2047'),
(@OBJECT_4, '324'), (@OBJECT_4, '2047'),
(@OBJECT_5, '324'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Small Thorium Vein | Truesilver Deposit (1) Ore 000', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140110;
SET @OBJECT_2 = 140111;
SET @OBJECT_3 = 140112;
SET @OBJECT_4 = 140113;
SET @OBJECT_5 = 140114;

SET @GROUP_ID = 10067;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -7974.58447265625, -2353.839355468750, -24.0715351104736328, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -7901.32128906250, -2439.831054687500, -31.0405406951904296, 1.099556446075439453, 0, 0, 0.522498130798339843, 0.852640450000762939, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -7881.10253906250, -2427.859375000000, -21.8910598754882812, 5.986480236053466796, 0, 0, -0.14780902862548828, 0.989015936851501464, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -7896.59570312500, -2350.578613281250, -21.7523517608642578, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -8025.82373046875, -2638.285644531250, -44.5266952514648437, 5.934120178222656250, 0, 0, -0.17364788055419921, 0.984807789325714111, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '324'), (@OBJECT_1, '2047'),
(@OBJECT_2, '324'), (@OBJECT_2, '2047'),
(@OBJECT_3, '324'), (@OBJECT_3, '2047'),
(@OBJECT_4, '324'), (@OBJECT_4, '2047'),
(@OBJECT_5, '324'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Small Thorium Vein | Truesilver Deposit (1) Ore 001', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140120;
SET @OBJECT_2 = 140121;
SET @OBJECT_3 = 140122;
SET @OBJECT_4 = 140123;
SET @OBJECT_5 = 140124;

SET @GROUP_ID = 10068;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -8990.30078125000, -4147.920410156250, -30.7274303436279296, 5.934120178222656250, 0, 0, -0.17364788055419921, 0.984807789325714111, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -9233.19238281250, -4113.346191406250, -41.2940254211425781, 1.326448202133178710, 0, 0, 0.615660667419433593, 0.788011372089385986, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -9250.90625000000, -4122.717773437500, -53.0445823669433593, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -9234.01757812500, -4041.775146484375, -39.3104553222656250, 4.049167633056640625, 0, 0, -0.89879322052001953, 0.438372820615768432, 600, 1200, 100, 1),
(@OBJECT_5, 0, 1, 1, -9047.06542968750, -4229.500976562500, -31.8620510101318359, 0.575957298278808593, 0, 0, 0.284014701843261718, 0.958819925785064697, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '324'), (@OBJECT_1, '2047'),
(@OBJECT_2, '324'), (@OBJECT_2, '2047'),
(@OBJECT_3, '324'), (@OBJECT_3, '2047'),
(@OBJECT_4, '324'), (@OBJECT_4, '2047'),
(@OBJECT_5, '324'), (@OBJECT_5, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1'),
(@GROUP_ID, @OBJECT_5, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Small Thorium Vein | Truesilver Deposit (1) Ore 002', '1', '1', '0', '0');

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET @OBJECT_1 = 140130;
SET @OBJECT_2 = 140131;
SET @OBJECT_3 = 140132;
SET @OBJECT_4 = 140133;

SET @GROUP_ID = 10069;

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OBJECT_1, 0, 1, 1, -8042.74462890625, -4665.402832031250, 30.80373764038085937, 1.431168079376220703, 0, 0, 0.656058311462402343, 0.754710197448730468, 600, 1200, 100, 1),
(@OBJECT_2, 0, 1, 1, -8280.00000000000, -4738.137207031250, 19.26671600341796875, 3.036838293075561523, 0, 0, 0.998628616333007812, 0.052353221923112869, 600, 1200, 100, 1),
(@OBJECT_3, 0, 1, 1, -8105.62841796875, -4545.377441406250, 22.58233833312988281, 5.724681377410888671, 0, 0, -0.27563667297363281, 0.961261868476867675, 600, 1200, 100, 1),
(@OBJECT_4, 0, 1, 1, -8327.19238281250, -4634.649902343750, 14.14907455444335937, 3.124123096466064453, 0, 0, 0.999961853027343750, 0.008734640665352344, 600, 1200, 100, 1);

INSERT INTO `gameobject_spawn_entry` (`guid`, `entry`) VALUES
(@OBJECT_1, '324'), (@OBJECT_1, '2047'),
(@OBJECT_2, '324'), (@OBJECT_2, '2047'),
(@OBJECT_3, '324'), (@OBJECT_3, '2047'),
(@OBJECT_4, '324'), (@OBJECT_4, '2047');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @OBJECT_1, '-1'),
(@GROUP_ID, @OBJECT_2, '-1'),
(@GROUP_ID, @OBJECT_3, '-1'),
(@GROUP_ID, @OBJECT_4, '-1');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Tanaris - Small Thorium Vein | Truesilver Deposit (1) Ore 003', '1', '1', '0', '0');
