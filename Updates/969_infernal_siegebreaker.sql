-- Delete triggers that should only be temp-spawned
DELETE FROM creature WHERE id=21075 AND map=530;

UPDATE creature_template SET MovementType=2, ExtraFlags=16384 WHERE entry=21075;
DELETE FROM creature_movement_template WHERE entry=21075;
INSERT INTO `creature_movement_template` (`entry`,`point`,`pathId`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(21075,1,1,-292.7905,1143.222,91.93681,30000,2107501,2.391101),
(21075,1,2,-266.6239,1154.459,79.47644,30000,2107502,2.443461);

-- Delete old dbscripts_on_creature_death
DELETE FROM dbscripts_on_creature_death WHERE id=21075;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(2107501,2107502);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(2107501,0,15,33240,0,0,0,0,0,0,19215,68744,17,'Infernal Target (Hyjal) - Cast Infernal',0,0,0,0),
(2107502,0,15,33240,0,0,0,0,0,0,19215,68745,17,'Infernal Target (Hyjal) - Cast Infernal',0,0,0,0);

-- Modify event to spawn triggers instead of killing the static ones
-- Event is started by s.33393 by Pit Commander
DELETE FROM `dbscripts_on_event` WHERE `id`=12353;
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(12353,0,10,21075,20000,1,0,0,0,0,0,0,8,'Pit Commander - Summon Infernal Target (Hyjal)',-292.7905,1143.222,91.93681,2.391101),
(12353,0,10,21075,20000,2,0,0,0,0,0,0,8,'Pit Commander - Summon Infernal Target (Hyjal)',-266.6239,1154.459,79.47644,2.443461);


