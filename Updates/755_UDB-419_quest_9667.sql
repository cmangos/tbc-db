-- q.9667 'Saving Princess Stillpine' -- UPDATE
DELETE FROM dbscripts_on_go_template_use WHERE id = 181928;
INSERT INTO dbscripts_on_go_template_use  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(181928,0,8,17682,1,0,0,0,0,0,0,0,0,0,0,0,'Kill credit for quest 9667'),
(181928,3,0,0,0,17682,25,3,2000000313,0,0,0,0,0,0,0,'Princess Stillpine say'),
(181928,4,25,1,0,17682,63442,7 | 0x10,0,0,0,0,0,0,0,0,'RUN ON'),
(181928,6,20,2,0,17682,63442,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');

DELETE FROM `db_script_string` WHERE `entry`=2000000313;
insert into `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000313','Thank you for saving me, $N! My father will be delighted!','0','0','0','0',NULL);
-- High Chief Bristlelimb
DELETE FROM `creature_equip_template` WHERE `entry`=120;
insert into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) values('120','14822','0','0');
UPDATE creature_template SET UnitFlags = 32768, EquipmentTemplateId = 120, movementType = 1 WHERE entry = 17702;
-- Princess Stillpine
UPDATE creature SET spawntimesecs = 25 WHERE id = 17682; -- quest req. (must be sync with cage)


