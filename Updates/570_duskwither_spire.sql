
-- Magister Duskwither's Journal
UPDATE gameobject SET position_x=9330.795, position_y=-7897.802, position_z=159.3244, orientation=0.06981169, rotation0=0, rotation1=0, rotation2=0.03489876, rotation3=0.9993908 WHERE id=181011;
-- Blood Elf Table - Small
UPDATE gameobject SET position_x=9330.773, position_y=-7897.772, position_z=158.4425, orientation=0.05235888, rotation0=0, rotation1=0, rotation2=0.02617645, rotation3=0.9996573 WHERE id=182093;

-- Duskwither Spire Power Source
UPDATE gameobject SET position_x=9335.961, position_y=-7883.816, position_z=144.4753, orientation=0.7853968, rotation0=0, rotation1=0, rotation2=0.3826828, rotation3=0.9238798 WHERE id=180916;
UPDATE gameobject SET position_x=9336.154, position_y=-7884.226, position_z=160.3558, orientation=1.431168, rotation0=0, rotation1=0, rotation2=0.6560583, rotation3=0.7547102 WHERE id=180919;
UPDATE gameobject SET position_x=9290.018, position_y=-7917.325, position_z=178.9283, orientation=3.246347, rotation0=0, rotation1=0, rotation2=-0.9986286, rotation3=0.05235322 WHERE id=180920;

-- Orb of Translocation
UPDATE gameobject SET position_x=9336.156, position_y=-7883.435, position_z=74.90952, orientation=2.129301, rotation0=0, rotation1=0, rotation2=0.8746195, rotation3=0.4848101 WHERE id=180911;
UPDATE gameobject SET position_x=9286.038, position_y=-7916.087, position_z=176.1297, orientation=5.881761, rotation0=0, rotation1=0, rotation2=-0.1993675, rotation3=0.9799248 WHERE id=180912;

-- Respawn Duskwither Spire Power Source Satellites
DELETE FROM gameobject WHERE id=182092;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(200048,182092,530,1,9347.304,-7892.569,161.7274,0.1745321,0,0,0.08715534,0.9961947,300,300,100,1),
(200049,182092,530,1,9348.698,-7889.313,145.0655,3.979355,0,0,-0.9135447,0.4067384,300,300,100,1),
(200050,182092,530,1,9336.628,-7872.259,145.253,4.71239,0,0,-0.7071066,0.7071069,300,300,100,1),
(200051,182092,530,1,9324.679,-7874.488,161.6853,2.268925,0,0,0.9063072,0.4226195,300,300,100,1),
(200052,182092,530,1,9326.804,-7894.62,161.7202,5.864307,0,0,-0.2079115,0.9781476,300,300,100,1),
(200053,182092,530,1,9323.203,-7887.885,145.1836,5.864307,0,0,-0.2079115,0.9781476,300,300,100,1),
(200054,182092,530,1,9287.974,-7924.413,178.8381,5.026549,0,0,-0.5877848,0.8090174,300,300,100,1),
(200055,182092,530,1,9292.731,-7910.625,179.0811,2.460913,0,0,0.9426413,0.3338076,300,300,100,1);

-- Power Source Invisible Bunny
UPDATE `creature_template` SET `InhabitType`=7 WHERE `Entry`=17984;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id=17984);
DELETE FROM creature WHERE id=17984;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(152540,17984,530,1,0,0,9324.713,-7874.516,161.5673,5.568625,300,300,0,0,1000,0,0,0),
(152541,17984,530,1,0,0,9326.99,-7894.444,161.6509,0.8417143,300,300,0,0,1000,0,0,0),
(152542,17984,530,1,0,0,9347.225,-7892.334,161.8108,2.520993,300,300,0,0,1000,0,0,0),
(152543,17984,530,1,0,0,9336.025,-7884.329,161.585,6.038839,300,300,0,0,1000,0,0,0),
(152544,17984,530,1,0,0,9348.7,-7889.249,144.9753,2.722854,300,300,0,0,1000,0,0,0),
(152545,17984,530,1,0,0,9336.564,-7872.368,145.3225,4.655669,300,300,0,0,1000,0,0,0),
(152546,17984,530,1,0,0,9335.929,-7883.564,145.7461,5.585053,300,300,0,0,1000,0,0,0),
(152547,17984,530,1,0,0,9323.411,-7887.823,145.1766,0.3279049,300,300,0,0,1000,0,0,0),
(152548,17984,530,1,0,0,9287.988,-7924.366,178.7408,1.297267,300,300,0,0,1000,0,0,0),
(152549,17984,530,1,0,0,9289.948,-7917.38,179.9839,1.343904,300,300,0,0,1000,0,0,0),
(152550,17984,530,1,0,0,9292.653,-7910.684,178.9075,4.328468,300,300,0,0,1000,0,0,0);



