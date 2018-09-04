-- Update data and add missing spawns of 4 invisible triggers in Blade's Edge Mountains (all spawns were missing)
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=8/7, Minlevel=1, Maxlevel=1, InhabitType=4, UnitFlags=33555200, MovementType=0 WHERE entry=20003; -- Blade's Edge Kneel Target 01
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=8/7, Minlevel=1, Maxlevel=1, InhabitType=4, UnitFlags=33555200, MovementType=0 WHERE entry=20023; -- Blade's Edge Kneel Target 02
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=8/7, Minlevel=1, Maxlevel=1, InhabitType=4, UnitFlags=33555200, MovementType=0 WHERE entry=20024; -- Blade's Edge Kneel Target 03
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=8/7, Minlevel=1, Maxlevel=1, InhabitType=4, UnitFlags=33555200, MovementType=0 WHERE entry=20093; -- Blade's Edge - Arakkoa Spell Origin

DELETE FROM creature WHERE id IN(20003,20023,20024,20093);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Blade's Edge Kneel Target 01
(160742,20003,530,1,0,0,3215.326,5343.655,144.6991,3.612832,300,300,0,0,0,0,0,0),
(160743,20003,530,1,0,0,1714.893,4623.579,144.2977,2.373648,300,300,0,0,0,0,0,0),
(160744,20003,530,1,0,0,1606.956,6929.895,158.9844,5.340707,300,300,0,0,0,0,0,0),
(160745,20003,530,1,0,0,1633.144,6998.296,157.9592,5.934119,300,300,0,0,0,0,0,0),
-- Blade's Edge Kneel Target 02
(160746,20023,530,1,0,0,3210.985,5342.986,144.6214,2.670354,300,300,0,0,0,0,0,0),
(160747,20023,530,1,0,0,1706.817,4617.839,144.3086,0.2268928,300,300,0,0,0,0,0,0),
(160748,20023,530,1,0,0,1616.412,6928.948,158.5861,5.707227,300,300,0,0,0,0,0,0),
(160749,20023,530,1,0,0,1638.024,6993.96,158.0376,5.078908,300,300,0,0,0,0,0,0),
-- Blade's Edge Kneel Target 03
(160750,20024,530,1,0,0,1708.958,4631.665,144.4131,0.8028514,300,300,0,0,0,0,0,0),
(160751,20024,530,1,0,0,1641.929,6998.421,158.0116,2.111848,300,300,0,0,0,0,0,0),
(160752,20024,530,1,0,0,1619.106,6938.284,159.9115,2.321288,300,300,0,0,0,0,0,0),
-- Blade's Edge - Arakkoa Spell Origin
(160753,20093,530,1,0,0,3211.047,5348.339,144.7444,5.410521,300,300,0,0,0,0,0,0),
(160754,20093,530,1,0,0,1707.976,4624.328,144.4745,5.410521,300,300,0,0,0,0,0,0),
(160755,20093,530,1,0,0,1600.725,5035.143,186.3761,5.044002,300,300,0,0,0,0,0,0),
(160756,20093,530,1,0,0,1604.319,5067.862,179.466,2.670354,300,300,0,0,0,0,0,0),
(160757,20093,530,1,0,0,1612.651,6934.456,160.0191,5.707227,300,300,0,0,0,0,0,0),
(160758,20093,530,1,0,0,1637.021,6998.459,158.3239,1.308997,300,300,0,0,0,0,0,0);

