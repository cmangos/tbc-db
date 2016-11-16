-- ====================================
-- Improve Quest "Book of the Ancients"
-- ====================================
DELETE FROM `dbscripts_on_go_use` WHERE `id` IN (12609);
insert into `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) values('12609','2','10','12369','300000','0','0','0','0','0','0','0','251.381','2962.47','2.76527','0.860446','Serpent Statue - Summon Lord Kragaru');

-- Adjust Autoclose Timer to 10 Minutes
UPDATE `gameobject_template` SET `data2`=39321600 WHERE `entry` IN (177673);

