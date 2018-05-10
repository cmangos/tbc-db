-- Lakota Windsong c.10646 path and emotes
UPDATE creature SET MovementType=2, spawndist=0 WHERE id=10646;
DELETE FROM `creature_movement_template` WHERE `entry`=10646;
INSERT INTO `creature_movement_template` (`entry`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(10646,1,-4746.41,-2104.55,83.58961,18000,1064601,100),
(10646,2,-4745.356,-2103.248,83.58961,0,0,100),
(10646,3,-4742.521,-2102.995,83.71461,18000,1064601,100),
(10646,4,-4742.74,-2106.634,83.71461,0,0,100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1064601);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1064601,11,1,18,0,0,0,0,0,0,0,0,0,'Lakota Windsong - OneShotCry',0,0,0,0);

-- Arnak Grimtotem c.10896 should move randomly
UPDATE creature SET MovementType=1, spawndist=10 WHERE id=10896;
