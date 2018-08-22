-- Fix faction for Gavis Greyshield
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry=23941;
-- Mobs in the area respawns quickly (3< according to wowhead comments https://www.wowhead.com/quest=11134/the-end-of-the-deserters#comments)
UPDATE creature SET spawntimesecsmin=120, spawntimesecsmax=240 WHERE id IN(23941,23637,5057); -- 2-4min variance

INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10124,0,15,42660,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Cast Gavis Greyshield Credit',0,0,0,0),
(10124,0,4,784,46,0,0,0,0,0,0,0,0,'Gavis Greyshield - Set UnitFlags 784',0,0,0,0),
(10124,0,22,84,1,0,0,0,0,0,0,0,0,'Gavis Greyshield - Set Faction 84',0,0,0,0),
(10124,2,42,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Set Equipment Slots',0,0,0,0),
(10124,4,0,0,0,0,2000001525,0,0,0,0,0,0,'Gavis Greyshield - Say',0,0,0,0),
(10124,7,0,0,0,0,2000001526,0,0,0,0,0,0,'Gavis Greyshield - Say',0,0,0,0),
(10124,13,18,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Despawn Self',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001525 AND 2000001526;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001525, 'I surrender! Stay your blade!', 0, 0, 0, 5, 'Gavis Greyshield (Entry: 23941)'),
(2000001526, 'I will go with you. Just spare my men. They''re good lads who''ve only made a mistake...', 0, 0, 0, 1, 'Gavis Greyshield (Entry: 23941)');

