-- ------------------------------------------------
-- Add channeling and script quest 8889 - [Deactivating the Spire]
-- ------------------------------------------------

UPDATE creature SET spawntimesecsmin=30, spawntimesecsmax=30 WHERE id=17984; -- Set proper respawn time

DELETE FROM spell_script_target WHERE entry IN(31628,31630,31631);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(31628,3,152546,0),
(31630,3,152543,0),
(31631,3,152549,0);

UPDATE creature SET MovementType=2 WHERE guid IN(152544,152545,152547,152540,152541,152542,152548,152550);
DELETE FROM `creature_movement` WHERE `id` IN(152544,152545,152547,152540,152541,152542,152548,152550);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(152544,1,9348.7,-7889.25,144.975,3000,1798401,2.72285),
(152545,1,9336.56,-7872.37,145.322,3000,1798401,4.65567),
(152547,1,9323.41,-7887.82,145.177,3000,1798401,0.327905),

(152540,1,9324.71,-7874.52,161.567,3000,1798402,5.56862),
(152541,1,9326.99,-7894.44,161.651,3000,1798402,0.841714),
(152542,1,9347.22,-7892.33,161.811,3000,1798402,2.52099),

(152548,1,9287.99,-7924.37,178.741,3000,1798403,1.29727),
(152550,1,9292.65,-7910.68,178.908,3000,1798403,4.32847);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1798401 AND 1798403;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1798401,1,15,31628,0,0,0,0,0,0,0,0,0,'Power Source Invisible Bunny - Cast Green Beam',0,0,0,0),
(1798401,1,20,0,0,0,0,0,0,0,0,0,0,'Power Source Invisible Bunny - Set Idle Movement',0,0,0,0),

(1798402,1,15,31630,0,0,0,0,0,0,0,0,0,'Power Source Invisible Bunny - Cast Green Beam',0,0,0,0),
(1798402,1,20,0,0,0,0,0,0,0,0,0,0,'Power Source Invisible Bunny - Set Idle Movement',0,0,0,0),

(1798403,1,15,31631,0,0,0,0,0,0,0,0,0,'Power Source Invisible Bunny - Cast Green Beam',0,0,0,0),
(1798403,1,20,0,0,0,0,0,0,0,0,0,0,'Power Source Invisible Bunny - Set Idle Movement',0,0,0,0);

DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN(180916,180919,180920);
INSERT INTO `dbscripts_on_go_template_use` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(180916,0,18,0,0,0,0,0,0,0,17984,152544,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 1',0,0,0,0),
(180916,0,18,0,0,0,0,0,0,0,17984,152545,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 2',0,0,0,0),
(180916,0,18,0,0,0,0,0,0,0,17984,152546,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 3',0,0,0,0),
(180916,0,18,0,0,0,0,0,0,0,17984,152547,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 4',0,0,0,0),

(180919,0,18,0,0,0,0,0,0,0,17984,152540,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 1',0,0,0,0),
(180919,0,18,0,0,0,0,0,0,0,17984,152541,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 2',0,0,0,0),
(180919,0,18,0,0,0,0,0,0,0,17984,152542,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 3',0,0,0,0),
(180919,0,18,0,0,0,0,0,0,0,17984,152543,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 4',0,0,0,0),

(180920,0,18,0,0,0,0,0,0,0,17984,152548,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 1',0,0,0,0),
(180920,0,18,0,0,0,0,0,0,0,17984,152549,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 2',0,0,0,0),
(180920,0,18,0,0,0,0,0,0,0,17984,152550,23,'Duskwither Spire Power Source - Despawn Power Source Invisible Bunny 3',0,0,0,0);


