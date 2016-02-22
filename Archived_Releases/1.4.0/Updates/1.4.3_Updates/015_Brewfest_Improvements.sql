-- =================================
-- TBC 2007/2008 Brewfest Game Event - http://www.wowwiki.com/Brewfest?oldid=1953794
-- =================================

-- Empty Brewfest Stein (Item: 38587) Does Nothing When you Activate Beer Cart
-- Need To Finish Ironforge Main Event NPC Gossip and Verify Quests

-- =========================
-- ENTRY 2500 (Brewfest Mug) - Fix Brewfest Revellers To Have Proper Mug (This Data is Also Temp Added To Equipment Conversion Work)
-- =========================
DELETE FROM creature_equip_template WHERE entry=2500;
INSERT INTO creature_equip_template VALUES (2500,2704,0,0);
UPDATE creature_template SET EquipmentTemplateId=2500 WHERE entry IN (24484);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2704,24594,-1,4,2,7,13);


-- ===================
-- General NPC Cleanup
-- ===================
UPDATE creature SET modelid=0, spawntimesecs=180, curhealth=2215 WHERE id IN (24484,23482,24501,23510,23511,24545);


-- =================================
-- Shattrath City Beer Garden Spawns
-- =================================
-- ----------
-- Vendor NPC
-- ----------
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101197','24501','530','1','0','0','-1926.79','5562.97','-12.3448','5.06145','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101198','23511','530','1','0','0','-1906.3','5569.85','-12.3448','4.97419','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101199','24545','530','1','0','0','-1882.76','5575.42','-12.3448','4.67748','180','0','0','2215','0','0','0');

-- ---------------------
-- Brewfest Reveller NPC
-- ---------------------
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101200','24484','530','1','0','0','-1897.49','5562.32','-12.3448','4.43314','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101201','24484','530','1','0','0','-1895.23','5560.19','-12.3448','2.80998','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101202','24484','530','1','0','0','-1878.62','5556.09','-12.3448','0.631812','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101203','24484','530','1','0','0','-1872.83','5560.32','-12.3448','2.74822','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101204','24484','530','1','0','0','-1899.82','5560.33','-12.3448','0.366519','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101205','24484','530','1','0','0','-1924.59','5549.65','-12.3448','1.04687','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101206','24484','530','1','0','0','-1921.89','5554.33','-12.3448','5.80759','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101207','24484','530','1','0','0','-1897.4','5558.13','-12.3448','1.71042','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101208','24484','530','1','0','0','-1916.58','5551.59','-12.3448','2.666','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101209','24484','530','1','0','0','-1878.84','5562.81','-12.3448','5.88981','180','0','0','2215','0','0','0');

-- --------------------
-- Brewfest Banner GO's
-- --------------------
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113165','186717','530','1','-1996.52','5442.87','-12.4281','-1.83259','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113166','186717','530','1','-1911.65','5571.59','-12.4281','-1.39626','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113167','186717','530','1','-1932.64','5562.31','-12.4281','-1.309','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113168','186717','530','1','-1869.96','5574.38','-12.4281','-2.05949','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113169','186717','530','1','-1884.83','5488.84','-12.4281','-1.309','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113170','186717','530','1','-1756.52','5499.92','-12.4281','-2.07694','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113171','186717','530','1','-1791.72','5550.14','-12.4281','-1.22173','0','0','0','0','120','255','1');
-- ---------------
-- Music Doodad GO
-- ---------------
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113172','186221','530','1','-1897.28','5560.35','-12.4281','-1.91986','0','0','0','0','120','255','1');

-- ------------------------
-- Wagons and Hay Bail GO's
-- ------------------------
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113173','178666','530','1','-1928.17','5567.51','-12.4281','-2.89724','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113174','180037','530','1','-1909.22','5569.72','-12.4281','-1.309','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113175','180037','530','1','-1906.96','5573.01','-12.4281','-2.80997','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113176','180037','530','1','-1904.33','5571.05','-12.4281','1.90241','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113177','186257','530','1','-1900.55','5575.88','-12.4281','1.93731','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113178','180037','530','1','-1893.46','5576.87','-12.4281','-2.05949','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113179','178666','530','1','-1882.57','5582.09','-12.4281','3.14159','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113180','186259','530','1','-1875.39','5579.11','-12.4281','1.6057','0','0','0','0','120','255','1');


-- =========================
-- Exodar Beer Garden Spawns
-- =========================
-- ----------
-- Vendor NPC
-- ----------
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101210','23511','530','1','0','0','-3976.75','-11882.6','0.644805','2.40855','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101211','23482','530','1','0','0','-3974.97','-11866.2','0.567886','4.04916','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101212','23510','530','1','0','0','-3970.99','-11874.3','0.692469','3.1765','180','0','0','2215','0','0','0');

-- ---------------------
-- Brewfest Reveller NPC
-- ---------------------
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101213','24484','530','1','0','0','-3982.04','-11874.1','0.516938','0.750492','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101214','24484','530','1','0','0','-3978.46','-11874.5','0.571326','2.35619','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101215','24484','530','1','0','0','-3982.18','-11872','0.500029','5.98648','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101216','24484','530','1','0','0','-3979.04','-11871.8','0.543062','3.61283','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101217','24484','530','1','0','0','-3990.73','-11892.7','0.242094','2.41938','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101218','24484','530','1','0','0','-3992.98','-11890.7','0.162623','5.56097','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101219','24484','530','1','0','0','-4002.14','-11879.7','-0.568876','5.08513','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101220','24484','530','1','0','0','-4000.77','-11883.2','-0.272737','1.94354','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101221','24484','530','1','0','0','-3993.44','-11868.9','0.358689','0.794869','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101222','24484','530','1','0','0','-3990.2','-11865.6','0.398187','4.01023','180','0','0','2215','0','0','0');

-- --------------------
-- Brewfest Banner GO's
-- --------------------
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113181','186717','530','1','-4067.15','-12017.4','-0.900065','-2.11185','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113182','186717','530','1','-4041.94','-11803.8','8.85179','2.32129','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113183','186717','530','1','-3991.88','-11886','0.200815','-2.89724','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113184','186717','530','1','-3983.02','-11861.1','0.33321','-1.98967','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113185','186717','530','1','-3971.1','-11878.2','0.49623','2.89724','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113186','186717','530','1','-3906.72','-11941.4','-2.97272','-0.122173','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113187','186717','530','1','-3815.32','-11689.8','-106.645','-0.750491','0','0','0','0','120','255','1');

-- ---------------
-- Music Doodad GO
-- ---------------
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113188','186221','530','1','-3980.86','-11859.8','0.418289','-1.91986','0','0','0','0','120','255','1');

-- ------------------------
-- Wagons and Hay Bail GO's
-- ------------------------
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113189','186260','530','1','-3978.89','-11859.7','0.441133','0.872664','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113190','186257','530','1','-3977.56','-11887.8','0.54265','-0.663223','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113191','180037','530','1','-3976.53','-11884.3','0.564625','-0.680679','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113192','180037','530','1','-3974.5','-11881.2','0.593977','2.60053','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113193','178666','530','1','-3972.73','-11862.5','0.506976','2.54818','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113194','180037','530','1','-3972.45','-11884.5','0.644444','0.715585','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113195','186259','530','1','-3968.54','-11869.5','0.6383','0.366518','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113196','180037','530','1','-3967.23','-11865.1','0.618187','-0.506145','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113197','178666','530','1','-3966.26','-11876','0.718132','1.22173','0','0','0','0','120','255','1');


-- ============================
-- Darnassus Beer Garden Spawns
-- ============================
-- ----------
-- Vendor NPC
-- ----------
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101223','23511','1','1','0','0','9975.27','2214.62','1329.4','3.89208','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101224','23482','1','1','0','0','9976.78','2194.46','1329.07','1.85005','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101225','23510','1','1','0','0','9980.41','2205.51','1328.91','2.9147','180','0','0','2215','0','0','0');

-- ---------------------
-- Brewfest Reveller NPC
-- ---------------------
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101226','24484','1','1','0','0','9960.27','2239.79','1333.06','0.738905','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101227','24484','1','1','0','0','9963.35','2242.59','1333.61','4.96241','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101228','24484','1','1','0','0','9964.44','2238.31','1332.94','1.82082','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101229','24484','1','1','0','0','9971.58','2202.91','1329.03','1.78024','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101230','24484','1','1','0','0','9968.76','2205.51','1329.21','6.24828','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101231','24484','1','1','0','0','9969.95','2207.43','1329.44','5.21853','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101232','24484','1','1','0','0','9973.21','2205.5','1329.18','3.1765','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101233','24484','1','1','0','0','9960.72','2201.13','1328.37','1.48276','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101234','24484','1','1','0','0','9963.26','2200.82','1328.44','3.02272','180','0','0','2215','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101235','24484','1','1','0','0','9961.04','2204.8','1328.62','5.22127','180','0','0','2215','0','0','0');

-- --------------------
-- Brewfest Banner GO's
-- --------------------
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113198','186717','1','1','9965.52','2220.73','1329.78','-2.53072','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113199','186717','1','1','9959.92','2254.63','1335.34','-2.87979','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113200','186717','1','1','9968.14','2192.95','1328.85','1.37881','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113201','186717','1','1','9958.24','2178.28','1327.51','-1.83259','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113202','186717','1','1','9980.21','2209.33','1328.78','-2.86233','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113203','186717','1','1','9958.72','2272.7','1341.39','2.07694','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113204','186717','1','1','9945.38','2272.34','1341.39','0.942477','0','0','0','0','120','255','1');

-- ---------------
-- Music Doodad GO
-- ---------------
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113205','186221','1','1','9970.78','2223.27','1329.55','-1.91986','0','0','0','0','120','255','1');

-- ------------------------
-- Wagons and Hay Bail GO's
-- ------------------------
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113206','186257','1','1','9970.73','2219.56','1329.53','0.820303','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113207','186260','1','1','9971.86','2190.39','1328.98','-1.62316','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113208','180037','1','1','9973.55','2216.92','1329.46','-2.05949','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113209','178666','1','1','9977.52','2190.41','1328.93','0.0523589','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113210','180037','1','1','9977.86','2218.44','1329','-0.523598','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113211','180037','1','1','9978.39','2214.15','1329','0.610864','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113212','180037','1','1','9983.25','2194.79','1328.74','0.715585','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113213','186259','1','1','9984.51','2199.9','1328.52','-0.418879','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113214','178666','1','1','9985.63','2205.99','1328.43','1.5708','0','0','0','0','120','255','1');


-- =========================
-- Durotar Main Event Spawns
-- =========================
-- ----------------------
-- Few Missing NPC Spawns
-- ----------------------
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101236','24495','1','1','0','0','1174.58','-4292.92','21.3573','6.24828','180','0','0','3524','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101237','27216','1','1','0','0','1197.29','-4355.3','21.3794','0.261799','180','0','0','3524','0','0','0');


-- =================================
-- Silvermoon City Beer Garden Spawns - Re-Created Based on Screenshots
-- =================================
-- ----------
-- Vendor NPC
-- ----------
INSERT INTO creature VALUES (101238,23533,530,1,0,0,9344.32,-7270.63,14.6353,4.71416,180,0,0,2215,0,0,0);
INSERT INTO creature VALUES (101239,24501,530,1,0,0,9341.51,-7283.56,14.5559,1.69979,180,0,0,2215,0,0,0);
INSERT INTO creature VALUES (101240,23511,530,1,0,0,9302.1,-7282.86,15.0693,5.51213,180,0,0,2215,0,0,0);

-- ---------------------
-- Brewfest Reveller NPC
-- ---------------------
INSERT INTO creature VALUES (101241,24484,530,1,0,0,9322.12,-7275.19,13.2726,0.0221838,180,0,0,2215,0,0,0);
INSERT INTO creature VALUES (101242,24484,530,1,0,0,9325.06,-7273.13,13.4132,4.18087,180,0,0,2215,0,0,0);
INSERT INTO creature VALUES (101243,24484,530,1,0,0,9326.92,-7275.25,13.3014,3.03968,180,0,0,2215,0,0,0);
INSERT INTO creature VALUES (101244,24484,530,1,0,0,9323.95,-7277.4,13.2521,1.40213,180,0,0,2215,0,0,0);
INSERT INTO creature VALUES (101245,24484,530,1,0,0,9321.53,-7287.65,14.2251,1.388,180,0,0,2215,0,0,0);
INSERT INTO creature VALUES (101246,24484,530,1,0,0,9318.19,-7288.61,14.3589,1.65347,180,0,0,2215,0,0,0);

-- --------------------
-- Brewfest Banner GO's
-- --------------------
INSERT INTO gameobject VALUES (113215, 186717, 530, 1,9336.54, -7284.47, 13.8509, 1.45868, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113216, 186717, 530, 1,9337.99, -7269.42, 14.0716, 4.70316, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113217, 186717, 530, 1,9310.51, -7289.84, 14.5208, 2.05795, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113218, 186717, 530, 1,9309.91, -7225.49, 15.1262, 0.778531, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113219, 186717, 530, 1,9287.86, -7299.86, 17.5895, 4.67646, 0, 0, 0, 0, 120, 255, 1);

-- ---------------
-- Music Doodad GO
-- ---------------
INSERT INTO gameobject VALUES (113220, 186221, 530, 1,9330.76, -7277.35, 13.4279, 0.0182665, 0, 0, 0, 0, 120, 255, 1);

-- ------------------------
-- Wagons and Hay Bail GO's
-- ------------------------
INSERT INTO gameobject VALUES (113221, 178666, 530, 1,9342.11, -7289.52, 14.5126, 0.066164, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113222, 186255, 530, 1,9333.16, -7287.89, 13.8083, 4.76284, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113223, 178666, 530, 1,9343.76, -7265.56, 14.7055, 3.16614, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113224, 186256, 530, 1,9334.4, -7266.95, 13.7843, 1.43747, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113225, 180037, 530, 1,9345.68, -7261.24, 14.767, 3.17085, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113226, 186257, 530, 1,9305.28, -7275.77, 14.737, 2.45928, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113227, 180037, 530, 1,9302.84, -7279.95, 14.9673, 5.44301, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113228, 180037, 530, 1,9299.56, -7284.31, 15.3031, 5.48228, 0, 0, 0, 0, 120, 255, 1);
INSERT INTO gameobject VALUES (113229, 180037, 530, 1,9298.35, -7280, 15.388, 3.84394, 0, 0, 0, 0, 120, 255, 1);


-- =========================
-- Ram Racing Related Spawns
-- =========================
-- Alliance [DND] Brewfest Face Me Bunny Spawns
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101247','24766','0','1','0','0','-5165.25','-603.433','398.005','2.53073','120','0','0','42','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101248','24766','0','1','0','0','-5209.47','-488.234','388.912','3.03687','120','0','0','42','0','0','0');

-- Horde [DND] Brewfest Face Me Bunny Spawns
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101249','24766','1','1','0','0','1263.95','-4409.64','25.772','3.24631','120','0','0','42','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101250','24766','1','1','0','0','1204.84','-4296.61','21.2752','6.16101','120','0','0','42','0','0','0');


-- ======================================
-- Missing Main Ironforge Location Spawns
-- ======================================
-- Boxey Boltspinner
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101251','27215','0','1','0','0','-5185.34','-540.172','397.203','3.35103','120','0','0','3524','0','0','0');
-- Flynn Firebrew
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101252','24364','0','1','0','0','-5609.83','-459.056','404.633','5.3058','120','0','0','1003','0','0','0');


-- ====================================
-- Missing Main Durotar Location Spawns
-- ====================================
-- Bok Dropcertain
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('101253','24527','1','1','0','0','837.666','-4508.81','6.14751','0.401426','120','0','0','1','0','0','0');

-- Misc GO's
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113230','186331','1','1','819.018','-4548.7','4.88469','-2.19912','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113231','186709','1','1','814.486','-4511.65','7.60678','-1.46608','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113232','186709','1','1','823.348','-4507.21','7.8811','0.820303','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113233','186709','1','1','824.784','-4514.58','6.92055','-0.488691','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113234','186807','1','1','828.438','-4508.5','6.70289','-2.33874','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113235','186808','1','1','829.316','-4518.37','5.77835','1.43117','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113236','186809','1','1','815.265','-4550.11','4.98003','1.83259','0','0','0','0','120','255','1');
-- Missing Banners
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113237','186717','1','1','832.147','-4505.44','7.00271','-0.0698117','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113238','186717','1','1','832.86','-4512.4','6.11773','0.157079','0','0','0','0','120','255','1');


-- =============================================================
-- Add All Remaining Missing WOTLK Sniff Parsed Brewfest Banners
-- =============================================================
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113239','186717','0','1','-5644.71','-477.017','396.748','-1.67551','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113240','186717','0','1','-5337.04','-542.347','393.658','1.39626','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113241','186717','0','1','-5233.38','-482.264','386.337','1.91986','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113242','186717','0','1','-5226.54','-479.026','386.534','2.23402','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113243','186717','0','1','-5214.63','-514.153','389.732','1.74533','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113244','186717','0','1','-5209.84','-459.363','386.537','2.56563','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113245','186717','0','1','-5206.92','-452.243','386.808','3.01941','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113246','186717','530','1','-5191.74','-736.322','447.284','0.837757','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113247','186717','0','1','-5134.12','-586.723','397.176','-2.80997','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113248','186717','530','1','-5091.12','-734.743','469.91','-1.48353','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113249','186717','530','1','-4983.49','-1204.28','501.669','2.32129','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113250','186717','530','1','-4969.79','-1222.8','501.67','-0.785397','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113251','186717','530','1','-4960.08','-1200.38','501.659','0.680677','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113252','186717','530','1','-4920.19','-940.244','501.572','-1.50098','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113253','186717','530','1','-4905.16','-956.521','501.47','2.91469','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113254','186717','530','1','-4712.87','-1213.87','501.659','2.35619','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113255','186717','530','1','-4698.13','-1246.37','501.659','-2.3911','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113256','186717','530','1','-4678.11','-968.152','501.659','-2.49582','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113257','186717','530','1','-4675.36','-1228.17','501.659','0.663223','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113258','186717','530','1','-4673.02','-935.651','501.659','2.23402','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113259','186717','530','1','-4649.49','-972.011','501.66','-0.872664','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113260','186717','1','1','-1291.39','153.721','129.813','-1.39626','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113261','186717','1','1','1305.79','-4408.33','26.0013','-1.309','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113262','186717','1','1','1629.97','-4407.77','16.2626','-3.10665','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113263','186717','0','1','1838.35','235.12','60.4209','1.6057','0','0','0','0','120','255','1');


-- =================================================================
-- Add All Remaining Missing WOTLK Sniff Parsed Brewfest Apple Traps
-- =================================================================
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113264','186331','0','1','-5633.46','-492.358','396.673','-2.00713','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113265','186331','0','1','-5492.02','-534.786','398.115','0.331611','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113266','186331','0','1','-5357.13','-536.766','391.771','-2.3911','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113267','186331','1','1','1004.55','-4479.31','10.9096','-0.244346','0','0','0','0','120','255','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('113268','186331','1','1','1294.62','-4434.23','27.1264','2.05949','0','0','0','0','120','255','1');


-- ====================================
-- [DND] Brewfest Dark Iron Spawn Bunny - Spawn Points in Alliance Brewfest for Mole Machines
-- ====================================
/*
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5185.22','-571.238','397.264','3.40339','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5180.45','-582.974','397.854','1.58825','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5176.47','-590.352','397.805','2.26893','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5174.79','-575.339','397.422','2.07694','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5170.46','-597.917','398.077','2.35619','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5169.62','-588.142','397.98','2.44346','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5169.52','-608.45','397.445','2.14675','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5168.71','-617.211','397.364','2.11185','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5166.21','-579.182','397.285','2.1293','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5159.99','-597.016','398.187','0.0698132','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5159.81','-616.635','397.946','2.70526','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5159.71','-606.657','398.217','2.6529','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5159.14','-588.562','397.652','2.05949','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5157.72','-581.05','397.26','2.40855','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5151.18','-598.83','398.031','5.58505','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5151.16','-610.857','398.621','5.39307','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5150.87','-588.753','397.427','2.77507','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5150.43','-620.648','398.043','6.07375','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5144.65','-608.685','398.363','2.33874','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5143.85','-617.721','397.956','2.44346','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5143.15','-589.13','397.306','2.02458','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5140.27','-599.968','397.882','1.85005','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5136.89','-609.955','397.718','1.90241','120','0','0','1','0','0','0');
insert into `creature` (`id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('23894','0','1','0','0','-5135.09','-596.353','397.369','2.21657','120','0','0','1','0','0','0');
*/


-- =========================================
-- Assign New Spawns For Brewfest Game Event
-- =========================================
-- ----------
-- NPC Spawns
-- ----------
insert into `game_event_creature` (`guid`, `event`) values('101197','26');
insert into `game_event_creature` (`guid`, `event`) values('101198','26');
insert into `game_event_creature` (`guid`, `event`) values('101199','26');
insert into `game_event_creature` (`guid`, `event`) values('101200','26');
insert into `game_event_creature` (`guid`, `event`) values('101201','26');
insert into `game_event_creature` (`guid`, `event`) values('101202','26');
insert into `game_event_creature` (`guid`, `event`) values('101203','26');
insert into `game_event_creature` (`guid`, `event`) values('101204','26');
insert into `game_event_creature` (`guid`, `event`) values('101205','26');
insert into `game_event_creature` (`guid`, `event`) values('101206','26');
insert into `game_event_creature` (`guid`, `event`) values('101207','26');
insert into `game_event_creature` (`guid`, `event`) values('101208','26');
insert into `game_event_creature` (`guid`, `event`) values('101209','26');
insert into `game_event_creature` (`guid`, `event`) values('101210','26');
insert into `game_event_creature` (`guid`, `event`) values('101211','26');
insert into `game_event_creature` (`guid`, `event`) values('101212','26');
insert into `game_event_creature` (`guid`, `event`) values('101213','26');
insert into `game_event_creature` (`guid`, `event`) values('101214','26');
insert into `game_event_creature` (`guid`, `event`) values('101215','26');
insert into `game_event_creature` (`guid`, `event`) values('101216','26');
insert into `game_event_creature` (`guid`, `event`) values('101217','26');
insert into `game_event_creature` (`guid`, `event`) values('101218','26');
insert into `game_event_creature` (`guid`, `event`) values('101219','26');
insert into `game_event_creature` (`guid`, `event`) values('101220','26');
insert into `game_event_creature` (`guid`, `event`) values('101221','26');
insert into `game_event_creature` (`guid`, `event`) values('101222','26');
insert into `game_event_creature` (`guid`, `event`) values('101223','26');
insert into `game_event_creature` (`guid`, `event`) values('101224','26');
insert into `game_event_creature` (`guid`, `event`) values('101225','26');
insert into `game_event_creature` (`guid`, `event`) values('101226','26');
insert into `game_event_creature` (`guid`, `event`) values('101227','26');
insert into `game_event_creature` (`guid`, `event`) values('101228','26');
insert into `game_event_creature` (`guid`, `event`) values('101229','26');
insert into `game_event_creature` (`guid`, `event`) values('101230','26');
insert into `game_event_creature` (`guid`, `event`) values('101231','26');
insert into `game_event_creature` (`guid`, `event`) values('101232','26');
insert into `game_event_creature` (`guid`, `event`) values('101233','26');
insert into `game_event_creature` (`guid`, `event`) values('101234','26');
insert into `game_event_creature` (`guid`, `event`) values('101235','26');
insert into `game_event_creature` (`guid`, `event`) values('101236','26');
insert into `game_event_creature` (`guid`, `event`) values('101237','26');
insert into `game_event_creature` (`guid`, `event`) values('101238','26');
insert into `game_event_creature` (`guid`, `event`) values('101239','26');
insert into `game_event_creature` (`guid`, `event`) values('101240','26');
insert into `game_event_creature` (`guid`, `event`) values('101241','26');
insert into `game_event_creature` (`guid`, `event`) values('101242','26');
insert into `game_event_creature` (`guid`, `event`) values('101243','26');
insert into `game_event_creature` (`guid`, `event`) values('101244','26');
insert into `game_event_creature` (`guid`, `event`) values('101245','26');
insert into `game_event_creature` (`guid`, `event`) values('101246','26');
insert into `game_event_creature` (`guid`, `event`) values('101247','26');
insert into `game_event_creature` (`guid`, `event`) values('101248','26');
insert into `game_event_creature` (`guid`, `event`) values('101249','26');
insert into `game_event_creature` (`guid`, `event`) values('101250','26');
insert into `game_event_creature` (`guid`, `event`) values('101251','26');
insert into `game_event_creature` (`guid`, `event`) values('101252','26');
insert into `game_event_creature` (`guid`, `event`) values('101253','26');

-- ---------
-- GO Spawns
-- ---------
insert into `game_event_gameobject` (`guid`, `event`) values('113165','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113166','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113167','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113168','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113169','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113170','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113171','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113172','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113173','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113174','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113175','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113176','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113177','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113178','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113179','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113180','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113181','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113182','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113183','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113184','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113185','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113186','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113187','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113188','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113189','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113190','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113191','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113192','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113193','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113194','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113195','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113196','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113197','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113198','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113199','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113200','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113201','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113202','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113203','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113204','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113205','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113206','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113207','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113208','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113209','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113210','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113211','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113212','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113213','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113214','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113215','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113216','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113217','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113218','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113219','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113220','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113221','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113222','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113223','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113224','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113225','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113226','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113227','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113228','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113229','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113230','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113231','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113232','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113233','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113234','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113235','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113236','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113237','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113238','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113239','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113240','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113241','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113242','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113243','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113244','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113245','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113246','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113247','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113248','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113249','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113250','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113251','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113252','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113253','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113254','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113255','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113256','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113257','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113258','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113259','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113260','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113261','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113262','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113263','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113264','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113265','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113266','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113267','26');
insert into `game_event_gameobject` (`guid`, `event`) values('113268','26');


-- ==================
-- NPC Movement Fixes
-- ==================
-- Self-Turning and Oscillating Utility Target <S.T.O.U.T.>
UPDATE creature SET Spawndist=3, MovementType=1 WHERE id IN (24108);


-- ==========================================
-- Clear Away or Move NPC In Game Event Areas
-- ==========================================
DELETE FROM creature WHERE guid IN (147,1735);
UPDATE creature SET position_x = '1121.238647', position_y = '-4267.649414', position_z = '22.749466', orientation = '3.287318' WHERE guid = '7369';
UPDATE creature SET position_x = '1124.854370', position_y = '-4303.865234', position_z = '21.492029', orientation = '3.772695' WHERE guid = '12386';
UPDATE creature SET position_x = '1135.770142', position_y = '-4333.562500', position_z = '26.552509', orientation = '4.003602' WHERE guid = '12369';
UPDATE creature SET position_x = '1146.389038', position_y = '-4370.786133', position_z = '25.358231', orientation = '4.122985' WHERE guid = '12369';
UPDATE creature SET position_x = '1270.547485', position_y = '-4303.500977', position_z = '28.423237', orientation = '6.102969' WHERE guid = '6511';
UPDATE creature SET position_x = '1217.619629', position_y = '-4231.104492', position_z = '24.689577', orientation = '0.931906' WHERE guid = '7370';


-- ===============
-- Brewfest Gossip
-- ===============
-- ----------------------
-- Pol Amberstill (24468) - Gossip Menu: 8958
-- ----------------------
-- Primary Gossip
DELETE FROM gossip_menu WHERE entry IN (8958,8959,8960,8961,8962,8963);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8958','12083','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8959','12084','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8960','12085','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8961','12086','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8962','12087','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8963','12088','0','0');

-- Primary Gossip Menu Options
DELETE FROM gossip_menu_option WHERE menu_id IN (8958,8959,8960,8961,8962,8963);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('8958','1','0','Do I get a free mount?','1','1','8959','0','0','0','0','','0'),
('8958','2','0','How do I make my ram go faster?','1','1','8960','0','0','0','0','','0'),
('8958','3','0','What\'s with the different speeds?','1','1','8961','0','0','0','0','','0'),
('8958','4','0','Can I tire my ram out?','1','1','8962','0','0','0','0','','0'),
('8958','5','0','That all sounds very complicated...','1','1','8963','0','0','0','0','','0'),
('8958','6','0','Say, you wouldn\'t happen to have an extra set of reins...','1','1','-1','0','8958','0','0','','475'),
-- Secondary Gossip Menu
('8959','0','0','I have another question.','1','1','8958','0','0','0','0',NULL,'0'),
('8960','0','0','Say, you wouldn\'t happen to have an extra set of reins...','1','1','-1','0','8958','0','0',NULL,'475'),
('8960','1','0','I have another question.','1','1','8958','0','0','0','0',NULL,'0'),
('8961','0','0','I have another question.','1','1','8958','0','0','0','0',NULL,'0'),
('8962','0','0','I have another question.','1','1','8958','0','0','0','0',NULL,'0'),
('8963','0','0','I have another question.','1','1','8958','0','0','0','0',NULL,'0');

-- Gossip Scripts
DELETE FROM dbscripts_on_gossip WHERE id IN (8958);
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8958','0','15','44262','0','0','0','0','0','0','0','0','0','0','0','0','');

-- Ram Reins Condition (If You Do Not Have Any)
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('475','16','33306','1');

-- Remove Vendor Data (NPC Is Not a Vendor)
UPDATE creature_template SET VendorTemplateId=0 WHERE entry IN (24468);


-- ----------------------
-- Neill Ramstein (23558) - Gossip Menu: 8934
-- ----------------------
-- Primary Gossip
DELETE FROM gossip_menu WHERE entry IN (8934,8953);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8934','11945','0','0');
-- Secondary Gossip
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8953','12076','0','0');

-- Primary Gossip Menu Options
DELETE FROM gossip_menu_option WHERE menu_id IN (8934,8953);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('8934','0','0','Do you still need some help shipping kegs from Kharanos?','1','1','8953','0','0','0','0',NULL,'476'),
-- Secondary Gossip Menu
('8953','0','0','I\'m ready to work for you today!  Give me the good stuff!','1','1','-1','0','8953','0','0',NULL,'0');

-- Gossip Scripts
DELETE FROM dbscripts_on_gossip WHERE id IN (8953);
insert into `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('8953','0','15','43533','0','0','0','2','0','0','0','0','0','0','0','0','Brewfest - Cast Brewfest - Daily - Relay Race - Force - Summon Ram');

-- If Quest 11318 Has Been Finished
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('476','8','11318','0');


-- --------------------------
-- Ipfelkofer Ironkeg (24710) - Gossip Menu: 8994
-- --------------------------
-- Primary Gossip
DELETE FROM gossip_menu WHERE entry IN (8994,8995,8996,8997,9018,9025,9558);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8994','12152','0','0');
-- Secondary Gossip
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8995','12154','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8996','12155','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8997','12156','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('9018','12183','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('9025','12195','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('9558','12873','0','0');

-- Primary Gossip Menu Options
DELETE FROM gossip_menu_option WHERE menu_id IN (8994,8995,8996,8997,9018,9025,9558);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('8994','0','0','The Tapping of the Keg','1','1','9025','0','0','0','0','','0'),
('8994','1','0','Food & Drink','1','1','8995','0','0','0','0','','0'),
('8994','2','0','Tokens & Souvenirs','1','1','8996','443','0','0','0','','0'),
('8994','3','0','Ram Racing','1','1','8997','444','0','0','0','','0'),
('8994','4','0','Brew of the Month Club','1','1','9558','445','0','0','0','','0'),
('8994','5','0','Dark Iron Dwarf Attacks','1','1','9018','0','0','0','0','','0'),

('8995','0','0','The Tapping of the Keg','1','1','9025','0','0','0','0','','0'),
('8995','1','0','Food & Drink','1','1','8995','0','0','0','0','','0'),
('8995','2','0','Tokens & Souvenirs','1','1','8996','443','0','0','0','','0'),
('8995','3','0','Ram Racing','1','1','8997','444','0','0','0','','0'),
('8995','4','0','Brew of the Month Club','1','1','9558','445','0','0','0','','0'),
('8995','5','0','Dark Iron Dwarf Attacks','1','1','9018','0','0','0','0','','0'),

('8996','0','0','The Tapping of the Keg','1','1','9025','0','0','0','0','','0'),
('8996','1','0','Food & Drink','1','1','8995','0','0','0','0','','0'),
('8996','2','0','Tokens & Souvenirs','1','1','8996','443','0','0','0','','0'),
('8996','3','0','Ram Racing','1','1','8997','444','0','0','0','','0'),
('8996','4','0','Brew of the Month Club','1','1','9558','445','0','0','0','','0'),
('8996','5','0','Dark Iron Dwarf Attacks','1','1','9018','0','0','0','0','','0'),

('8997','0','0','The Tapping of the Keg','1','1','9025','0','0','0','0','','0'),
('8997','1','0','Food & Drink','1','1','8995','0','0','0','0','','0'),
('8997','2','0','Tokens & Souvenirs','1','1','8996','443','0','0','0','','0'),
('8997','3','0','Ram Racing','1','1','8997','444','0','0','0','','0'),
('8997','4','0','Brew of the Month Club','1','1','9558','445','0','0','0','','0'),
('8997','5','0','Dark Iron Dwarf Attacks','1','1','9018','0','0','0','0','','0'),

('9018','0','0','The Tapping of the Keg','1','1','9025','0','0','0','0','','0'),
('9018','1','0','Food & Drink','1','1','8995','0','0','0','0','','0'),
('9018','2','0','Tokens & Souvenirs','1','1','8996','443','0','0','0','','0'),
('9018','3','0','Ram Racing','1','1','8997','444','0','0','0','','0'),
('9018','4','0','Brew of the Month Club','1','1','9558','445','0','0','0','','0'),
('9018','5','0','Dark Iron Dwarf Attacks','1','1','9018','0','0','0','0','','0'),

('9025','0','0','The Tapping of the Keg','1','1','9025','0','0','0','0','','0'),
('9025','1','0','Food & Drink','1','1','8995','0','0','0','0','','0'),
('9025','2','0','Tokens & Souvenirs','1','1','8996','443','0','0','0','','0'),
('9025','3','0','Ram Racing','1','1','8997','444','0','0','0','','0'),
('9025','4','0','Brew of the Month Club','1','1','9558','445','0','0','0','','0'),
('9025','5','0','Dark Iron Dwarf Attacks','1','1','9018','0','0','0','0','','0'),

('9558','0','0','The Tapping of the Keg','1','1','9025','0','0','0','0','','0'),
('9558','1','0','Food & Drink','1','1','8995','0','0','0','0','','0'),
('9558','2','0','Tokens & Souvenirs','1','1','8996','443','0','0','0','','0'),
('9558','3','0','Ram Racing','1','1','8997','444','0','0','0','','0'),
('9558','4','0','Brew of the Month Club','1','1','9558','445','0','0','0','','0'),
('9558','5','0','Dark Iron Dwarf Attacks','1','1','9018','0','0','0','0','','0');

-- Gossip POI
insert into `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) values('443','-5176.78','-623.99','7','75','0','Brewfest - Souvenirs (Ironforge)');
insert into `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) values('444','-5200.93','-484.682','7','75','0','Brewfest - Ram Racing (Ironforge)');
insert into `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) values('445','-4847.83','-862.606','7','75','0','Brew of the Month Club (Ironforge)');


-- ------------------------
-- Belbi Quikswitch (23710) - Gossip Menu: 8783
-- ------------------------
-- Primary Gossip
DELETE FROM gossip_menu WHERE entry IN (8783,8955,9561,9582);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8783','11226','0','0');
-- Secondary Gossip
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8955','12080','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('9561','12880','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('9582','12934','0','0');

-- Primary Gossip Menu Options
DELETE FROM gossip_menu_option WHERE menu_id IN (8783,8955,9561);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('8783','1','1','Let me browse your goods.','3','128','0','0','0','0','0','','0'),
('8783','2','0','What\'s with your crazy goggles?','1','1','8955','0','0','0','0','','0'),
('8783','3','0','What\'s the \"Brew of the Month\" club?','1','1','9561','0','0','0','0','','0'),
('8783','4','0','Ticket Exchange','1','1','9582','0','0','0','0','','0'),
-- Secondary Gossip Menu Options
('8955','0','0','I have another question.','1','1','8783','0','0','0','0','','0'),
('9561','0','0','I have another question.','1','1','8783','0','0','0','0','','0');

-- Gossip POI
insert into `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) values('446','-4847.83','-862.606','7','75','0','Brewfest - Brew of the Month Club (Ironforge)');


-- ----------------------
-- Blix Fixwidget (24495) - Gossip Menu: 8968
-- ----------------------
-- Primary Gossip
DELETE FROM gossip_menu WHERE entry IN (8968,8967,9560,9582);
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8968','12100','0','0');
-- Secondary Gossip
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('8967','12098','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('9560','12878','0','0');
insert into `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) values('9582','12934','0','0');

-- Primary Gossip Menu Options
DELETE FROM gossip_menu_option WHERE menu_id IN (8968,8967,9560);
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) values
('8968','0','1','Let me browse your goods.','3','128','0','0','0','0','0','','0'),
('8968','1','0','What\'s with your crazy goggles?','1','1','8967','0','0','0','0','','0'),
('8968','2','0','Brew of the Month Club?','1','1','9560','0','0','0','0','','0'),
('8968','3','0','Ticket Exchange','1','1','9582','0','0','0','0','','0'),
-- Secondary Gossip Menu Options
('8967','0','0','I have another question.','1','1','8968','0','0','0','0','','0'),
('9560','0','0','I have another question.','1','1','8968','0','0','0','0','','0');

-- Gossip POI
insert into `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) values('447','1473.56','-4211.43','7','75','0','Brewfest - Brew of the Month Club (Orgrimmar)');


-- ---------------------------
-- Goldark Snipehunter (23486) - Gossip Menu: 9006
-- ---------------------------
-- Remove WOTLK Gossip - Synthbrew Goggles Were Released in WOTLK
DELETE FROM gossip_menu_option WHERE menu_id IN (9006,10604);


-- ---------------------------
-- Goldark Snipehunter (24657) - Gossip Menu: 9016
-- ---------------------------
-- Remove WOTLK Gossip - Synthbrew Goggles Were Released in WOTLK
DELETE FROM gossip_menu_option WHERE menu_id IN (9016);


-- ============
-- Vendor Fixes
-- ============
-- ----------------------
-- Blix Fixwidget (24495) - Horde
-- ----------------------
UPDATE creature_template SET VendorTemplateId=602 WHERE entry IN (24495);
DELETE FROM npc_vendor WHERE entry IN (24495);
insert into `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('24495','37599','0','0','2276','477'); -- "Brew of the Month" Club Membership Form
insert into `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('24495','34008','0','0','2275','477'); -- Blix's Eyesight Enhancing Romance Goggles

-- --------------
-- Ray'ma (27489) - Horde
-- --------------
UPDATE creature_template SET VendorTemplateId=602 WHERE entry IN (27489);
DELETE FROM npc_vendor WHERE entry IN (27489);
insert into `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('27489','37599','0','0','2276','0'); -- "Brew of the Month" Club Membership Form
insert into `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('27489','34008','0','0','2275','477'); -- Blix's Eyesight Enhancing Romance Goggles

-- ------------------------
-- Belbi Quikswitch (23710) - Alliance
-- ------------------------
UPDATE creature_template SET VendorTemplateId=602 WHERE entry IN (23710);
DELETE FROM npc_vendor WHERE entry IN (23710);
insert into `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('23710','37571','0','0','2276','477'); -- "Brew of the Month" Club Membership Form
insert into `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('23710','33047','0','0','2275','477'); -- Belbi's Eyesight Enhancing Romance Goggles

-- --------------------------
-- Larkin Thunderbrew (27478) - Alliance
-- --------------------------
UPDATE creature_template SET VendorTemplateId=602 WHERE entry IN (27478);
DELETE FROM npc_vendor WHERE entry IN (27478);
insert into `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('27478','37571','0','0','2276','0'); -- "Brew of the Month" Club Membership Form
insert into `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('27478','33047','0','0','2275','477'); -- Belbi's Eyesight Enhancing Romance Goggles

-- Common Vendor Items
DELETE FROM npc_vendor_template WHERE entry IN (602);
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','32233','0','0','0','477'); -- Wolpertinger Tankard (Sold For 2008 Brewfest Because Quest Was Broken)
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33862','0','0','2276','477');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33863','0','0','2276','477');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33864','0','0','2274','477');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33868','0','0','2275','477');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33927','0','0','2274','477');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33966','0','0','2275','477');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33967','0','0','2274','477');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33968','0','0','2274','477');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33969','0','0','2274','477');
insert into `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`) values('602','33978','0','0','2273','477');


-- If Brewfest Event is Active
insert into `conditions` (`condition_entry`, `type`, `value1`, `value2`) values('477','12','26','0');


-- ===============
-- Brewfest Quests - Alliance
-- ===============
-- -----------------------------------------------
-- Quest: 11318 "Now This is Ram Racing... Almost" - BROKEN
-- -----------------------------------------------
-- Required For Ram Racing Spells
DELETE FROM spell_script_target WHERE entry IN (44362);
insert into `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) values('44362','1','24766','0');


-- -----------------------------------
-- Quest: 11122 "There and Back Again" - BROKEN (Casts Ram Mount on Self Instead of Player)
-- -----------------------------------


-- ------------------------------
-- Quest: 12022 "Chug and Chuck!"
-- ------------------------------
-- DB Scripts for Spell 42436 (Sniff Data)
DELETE FROM dbscripts_on_spell WHERE id IN (42436);
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('42436','0','15','42523','0','0','0','4','0','0','0','0','0','0','0','0','Drink! - Cast Weak Alcohol');
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('42436','0','15','42536','0','23685','100','1','0','0','0','0','0','0','0','0','Drink! - Cast Brewfest Request Chick Chuck Mug on Gordok Brew Barker');
INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES('42436','0','15','42436','0','24108','15','1','0','0','0','0','0','0','0','0','Drink! - Cast Drink! on STOUT');

-- Drink! Must Target S.T.O.U.T.
DELETE FROM spell_script_target WHERE entry IN (42436);
insert into `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) values('42436','1','24108','0');

/*
-- ------------------------------
-- Quest: 12022 "Chug and Chuck!"
-- ------------------------------
-- DB Scripts for Spell 42436 (Sniff Data)
DELETE FROM dbscripts_on_spell WHERE id IN (42436);
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,data_flags,comments) VALUES
(42436,0,15,42523,8,'Cast Weak Alcohol'),
(42436,0,15,42536,10,'Cast Brewfest Request Chick Chuck Mug'),
(42436,1,15,47173,10,'Cast Brewfest - Dark Iron Attack - Intro - Assign Kill Credit'),
(42436,1,15,43126,10,'Cast Mug Target Practice'),
(42436,1,15,43073,10,'Cast Mug Target Practice');

-- Drink! Must Target S.T.O.U.T.
DELETE FROM spell_script_target WHERE entry IN (42436);
insert into spell_script_target (entry,type,targetEntry,inverseEffectMask) values
(42436,1,24108,0);

-- ACID Script For Testing
DELETE FROM creature_ai_scripts WHERE creature_id IN (24108);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Self-Turning and Oscillating Utility Target (24108) - NSR
('2410801','24108','8','0','100','1','42436','-1','500','500','5','34','0','0','11','47173','6','0','0','0','0','0','Self-Turning and Oscillating Utility Target - Emote and Cast Brewfest - Dark Iron Attack - Intro - Assign Kill Credit on Drink! Spellhit');

UPDATE creature_template SET AIname='EventAI' WHERE entry IN (24108);
*/


/*


====================================================================
CREATE Brewfest - Create Complimentary Brewfest Sampler IN INVENTORY
====================================================================

ServerToClient: SMSG_SPELL_GO (0x0132) Length: 44 ConnectionIndex: 0 Time: 09/20/2009 09:19:05.000 Number: 48081
Caster GUID: Full: 0xF11002D74D023299 Type: GameObject Entry: 186189 Low: 144025
Caster Unit GUID: 0x0
Cast Count: 0
Spell ID: 42518
Cast Flags: PendingCast, Unknown2, Unknown3, Unknown7 (269)
Time: 3602831808
Hit Count: 1
[0] Hit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Miss Count: 0
Target Flags: Unit (2)
Target GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik

ServerToClient: SMSG_SPELL_START (0x0131) Length: 40 ConnectionIndex: 0 Time: 09/20/2009 09:19:05.000 Number: 48082
Caster GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 23
Spell ID: 6247
Cast Flags: HasTrajectory, Unknown16 (262146)
Time: 0
Target Flags: GameObject (2048)
Target GUID: Full: 0xF11002D74D023299 Type: GameObject Entry: 186189 Low: 144025

ServerToClient: SMSG_SPELL_GO (0x0132) Length: 50 ConnectionIndex: 0 Time: 09/20/2009 09:19:05.000 Number: 48083
Caster GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 23
Spell ID: 6247
Cast Flags: Unknown7, Unknown16 (262400)
Time: 3602831807
Hit Count: 1
[0] Hit GUID: Full: 0xF11002D74D023299 Type: GameObject Entry: 186189 Low: 144025
Miss Count: 0
Target Flags: GameObject (2048)
Target GUID: Full: 0xF11002D74D023299 Type: GameObject Entry: 186189 Low: 144025


==========================
USING SAMPLER IN INVENTORY
==========================

ServerToClient: SMSG_SPELLLOGEXECUTE (0x024C) Length: 32 ConnectionIndex: 0 Time: 09/20/2009 09:19:05.000 Number: 48084
Caster GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Spell ID: 6247
Count: 1
[0] Spell Effect: OpenLock (33)
[0] Count: 1
[0] [0] Target: Full: 0xF11002D74D023299 Type: GameObject Entry: 186189 Low: 144025


ServerToClient: SMSG_AURA_UPDATE (0x0496) Length: 15 ConnectionIndex: 0 Time: 09/20/2009 09:19:05.000 Number: 48164
GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Slot: 15
Spell ID: 42533
Flags: EffectIndex0, NotCaster (9)
Level: 80
Charges: 0

ServerToClient: SMSG_SPELL_START (0x0131) Length: 32 ConnectionIndex: 0 Time: 09/20/2009 09:19:05.000 Number: 48165
Caster GUID: Full: 0x4680000199AD9505 Type: 1032 Low: 2578289925
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 0
Spell ID: 42533
Cast Flags: HasTrajectory, Unknown5, Unknown16 (262210)
Time: 0
Target Flags: Self (0)

ServerToClient: SMSG_SPELL_GO (0x0132) Length: 43 ConnectionIndex: 0 Time: 09/20/2009 09:19:05.000 Number: 48166
Caster GUID: Full: 0x4680000199AD9505 Type: 1032 Low: 2578289925
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 0
Spell ID: 42533
Cast Flags: Unknown5, Unknown7, Unknown16 (262464)
Time: 3602832203
Hit Count: 1
[0] Hit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Miss Count: 0
Target Flags: Unit (2)
Target GUID: 0x0

ServerToClient: SMSG_ITEM_PUSH_RESULT (0x0166) Length: 45 ConnectionIndex: 0 Time: 09/20/2009 09:19:05.000 Number: 48198
GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
From NPC: 1
Created: 0
Unk Uint32: 1
Slot: 255
Item Slot: 31
Entry: 33096
Suffix Factor: 454784576
Random Property ID: 0
Count: 1
Count of Items in inventory: 1


======================================================
START OF IMPORTANT SPELL SEQUENCE CALLED BY ITEM SPELL
======================================================

ServerToClient: SMSG_SPELL_START (0x0131) Length: 32 ConnectionIndex: 0 Time: 09/20/2009 09:19:09.000 Number: 48817
Caster GUID: Full: 0x4680000199AD9505 Type: 1032 Low: 2578289925
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 24
Spell ID: 42436
Cast Flags: HasTrajectory, Unknown4, Unknown16 (262162)
Time: 684
Target Flags: Self (0)

----------------------------------------------
THESE SPELLS ARE SCRIPTING INSIDE SPELL: 42436
----------------------------------------------

ServerToClient: SMSG_SPELL_START (0x0131) Length: 31 ConnectionIndex: 0 Time: 09/20/2009 09:19:10.000 Number: 48958
Caster GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 0
Spell ID: 42523
Cast Flags: PendingCast, HasTrajectory, Unknown3 (11)
Time: 0
Target Flags: Self (0)

ServerToClient: SMSG_SPELL_GO (0x0132) Length: 42 ConnectionIndex: 0 Time: 09/20/2009 09:19:10.000 Number: 48959
Caster GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 0
Spell ID: 42523
Cast Flags: PendingCast, Unknown3, Unknown7 (265)
Time: 3602837408
Hit Count: 1
[0] Hit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Miss Count: 0
Target Flags: Unit (2)
Target GUID: 0x0

ServerToClient: SMSG_SPELL_START (0x0131) Length: 31 ConnectionIndex: 0 Time: 09/20/2009 09:19:10.000 Number: 48960
Caster GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 0
Spell ID: 42536
Cast Flags: PendingCast, HasTrajectory, Unknown3 (11)
Time: 0
Target Flags: Self (0)

ServerToClient: SMSG_SPELL_GO (0x0132) Length: 42 ConnectionIndex: 0 Time: 09/20/2009 09:19:10.000 Number: 48961
Caster GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 0
Spell ID: 42536
Cast Flags: PendingCast, Unknown3, Unknown7 (265)
Time: 3602837409
Hit Count: 1
[0] Hit GUID: Full: 0xF130005C850FCEBB Type: Unit Entry: 23685 Low: 1035963
Miss Count: 0
Target Flags: Unit (2)
Target GUID: 0x0

--------------------------------------
END OF SPELLS SCRIPTED IN SPELL: 42536
--------------------------------------

ServerToClient: SMSG_SPELL_GO (0x0132) Length: 43 ConnectionIndex: 0 Time: 09/20/2009 09:19:10.000 Number: 48962
Caster GUID: Full: 0x4680000199AD9505 Type: 1032 Low: 2578289925
Caster Unit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Cast Count: 24
Spell ID: 42436
Cast Flags: Unknown4, Unknown7, Unknown16 (262416)
Time: 3602836717
Hit Count: 1
[0] Hit GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Miss Count: 0
Target Flags: Unit (2)
Target GUID: 0x0

ServerToClient: SMSG_AURA_UPDATE (0x0496) Length: 12 ConnectionIndex: 0 Time: 09/20/2009 09:19:10.000 Number: 48963
GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Slot: 15
Spell ID: 0


ServerToClient: SMSG_EMOTE (0x0103) Length: 12 ConnectionIndex: 0 Time: 09/20/2009 09:19:11.000 Number: 49112
Emote ID: OneShotWoundCritical (34)
GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670

ServerToClient: SMSG_SPELL_START (0x0131) Length: 40 ConnectionIndex: 0 Time: 09/20/2009 09:19:11.000 Number: 49113
Caster GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Caster Unit GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Cast Count: 0
Spell ID: 47173
Cast Flags: HasTrajectory, Unknown3 (10)
Time: 0
Target Flags: Unit (2)
Target GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik

ServerToClient: SMSG_SPELL_GO (0x0132) Length: 50 ConnectionIndex: 0 Time: 09/20/2009 09:19:11.000 Number: 49114
Caster GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Caster Unit GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Cast Count: 0
Spell ID: 47173
Cast Flags: Unknown3, Unknown7 (264)
Time: 3602838324
Hit Count: 1
[0] Hit GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik
Miss Count: 0
Target Flags: Unit (2)
Target GUID: Full: 0x68000000105E7C8 Type: 8 Low: 17164232 Name: Rodrik

ServerToClient: SMSG_SPELL_START (0x0131) Length: 33 ConnectionIndex: 0 Time: 09/20/2009 09:19:11.000 Number: 49115
Caster GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Caster Unit GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Cast Count: 0
Spell ID: 43126
Cast Flags: HasTrajectory (2)
Time: 0
Target Flags: Self (0)

ServerToClient: SMSG_SPELL_GO (0x0132) Length: 44 ConnectionIndex: 0 Time: 09/20/2009 09:19:11.000 Number: 49116
Caster GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Caster Unit GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Cast Count: 0
Spell ID: 43126
Cast Flags: Unknown7 (256)
Time: 3602838325
Hit Count: 1
[0] Hit GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Miss Count: 0
Target Flags: Unit (2)
Target GUID: 0x0

ServerToClient: SMSG_SPELL_START (0x0131) Length: 33 ConnectionIndex: 0 Time: 09/20/2009 09:19:11.000 Number: 49169
Caster GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Caster Unit GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Cast Count: 0
Spell ID: 43073
Cast Flags: HasTrajectory (2)
Time: 0
Target Flags: Self (0)

ServerToClient: SMSG_SPELL_GO (0x0132) Length: 44 ConnectionIndex: 0 Time: 09/20/2009 09:19:11.000 Number: 49170
Caster GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Caster Unit GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Cast Count: 0
Spell ID: 43073
Cast Flags: Unknown7 (256)
Time: 3602838632
Hit Count: 1
[0] Hit GUID: Full: 0xF130005E2C0FCD96 Type: Unit Entry: 24108 Low: 1035670
Miss Count: 0
Target Flags: Unit (2)
Target GUID: 0x0


*/







