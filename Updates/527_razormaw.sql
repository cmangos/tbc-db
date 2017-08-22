DELETE FROM `dbscripts_on_event` WHERE `id`=11087 AND delay=15 AND command=16;
DELETE FROM `dbscripts_on_event` WHERE `id`=11087 AND delay=17 AND command=5;
DELETE FROM `dbscripts_on_event` WHERE `id`=11087 AND delay=301 AND command=4;
INSERT INTO `dbscripts_on_event` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(11087,15,16,3525,0,0,0,0,0,0,17592,61235,23,'Razormaw - Play Sound',0,0,0,0),
(11087,17,5,46,256,0,0,0,0,0,17592,61235,23,'Razormaw - Remove UNIT_FLAG_IMMUNE_TO_PLAYER',0,0,0,0),
(11087,301,4,46,256,0,0,0,0,0,17592,61235,23,'Razormaw - Set UNIT_FLAG_IMMUNE_TO_PLAYER',0,0,0,0);

