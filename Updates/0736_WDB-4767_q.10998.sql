-- q.10998 'Grim(oire) Business'
-- missing added - Data taken from TDB
-- DELETE FROM creature WHERE guid BETWEEN 140025 AND 140030;
-- INSERT INTO creature (guid, id, map, spawnMask, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Vim'gol's Circle Bunny 23040
-- (140029,23040,530,1,0,3304.44,4643.87,217,-0.10472,300,300,0,0),
-- (140028,23040,530,1,0,3292.62,4619.9,217,-0.2618,300,300,0,0),
-- (140027,23040,530,1,0,3261.88,4625.64,217,0.750492,300,300,0,0),
-- (140026,23040,530,1,0,3257.34,4653.77,217,-2.07694,300,300,0,0),
-- (140025,23040,530,1,0,3279.38,4664.31,217,-0.523599,300,300,0,0),
-- Vim'gol's Circle Summon Visual Bunny 23081
-- (140030,23081,530,1,0,3279.9,4640.36,216.528,1.08558,300,300,0,0);

-- Vim'gol the Vile 22911
DELETE FROM dbscripts_on_creature_death WHERE id IN (22911);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(22911,1,18,5000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn Self');
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (20773);

