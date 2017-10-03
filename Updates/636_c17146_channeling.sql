-- 4 Kil'sorrow Spellbinders (c.17146)
-- Channeling should not be done in creature_addon
DELETE FROM creature_addon WHERE guid IN(151782,151783,151784,151785);
UPDATE creature SET MovementType=2 WHERE guid IN(151782,151783,151784,151785);
DELETE FROM `creature_movement` WHERE `id` IN(151782,151783,151784,151785);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(151782,1,-2891.76,6394.6,82.1376,3000,1714614,2.26893),
(151783,1,-2891.6,6406.18,82.1376,3000,1714614,4.2586),
(151784,1,-2903,6394.52,82.1376,3000,1714614,0.506145),
(151785,1,-2903,6406.2,82.1376,3000,1714614,5.55015);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1714614);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1714614,0,15,31902,1,0,0,0,0,0,0,0,0,'Kil''sorrow Spellbinder - Cast Purple Beam',0,0,0,0),
(1714614,0,20,0,0,0,0,0,0,0,0,0,0,'Kil''sorrow Spellbinder - Set Idle Movement',0,0,0,0);

-- Set proper flags and ExtraFlags for the channel target
UPDATE creature_template SET UnitFlags=33587968, ExtraFlags=0 WHERE entry=19656;

