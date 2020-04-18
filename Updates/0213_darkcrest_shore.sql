-- Move one Darkcrest Slaver that was stuck inside a mushroom. We are missing one in this location so move it there
UPDATE creature SET position_x=-819.1155, position_y=5751.6875, position_z=5.2203717, orientation=3.420720100402832031 WHERE guid=71083 AND id=19946;

-- Two missing campfires
DELETE FROM gameobject WHERE guid IN(160612,160613) AND id IN(182402,182400);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(160612,182402,530,1,-824.18945,5787.4365,22.945404,5.095419,0,0,-0.55958366,0.8287739,300,300,100,1),
(160613,182400,530,1,-572.06635,5843.3584,20.69495,0.32055786,0,0,0.15959358,0.9871828,300,300,100,1);

