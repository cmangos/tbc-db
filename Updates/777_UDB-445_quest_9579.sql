-- q.9579 'Galaen's Fate'
DELETE FROM `db_script_string` WHERE `entry` IN (2000000277,2000000278,2000000279);
insert into `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000277','Morae... Is that you?','0','0','0','0',NULL);
insert into `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000278','No... you\'re not Morae, but I sense that you have met. When you see her, tell her that I survived the crash, only to be done in by the infiltrators.','0','0','0','0',NULL);
insert into `db_script_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) values('2000000279','Let her know... my last thought was of her...','0','0','0','0',NULL);

DELETE FROM dbscripts_on_quest_start WHERE id = 9579;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9579,0,10,17426,15000,0,0,0,0,0,0,0,-2090.03,-11297.5,63.5025,3.56455,''),
(9579,2,36,0,0,17426,50,0,0,0,0,0,0,0,0,0,'face player'),
(9579,3,0,0,0,17426,50,0,2000000277,0,0,0,0,0,0,0,''),
(9579,6,0,0,0,17426,50,0,2000000278,0,0,0,0,0,0,0,''),
(9579,10,0,0,0,17426,50,0,2000000279,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 9579 WHERE entry = 9579;
UPDATE db_script_string SET emote = 6 WHERE entry = 2000000277;
UPDATE db_script_string SET emote = 274 WHERE entry = 2000000278;
UPDATE db_script_string SET emote = 1 WHERE entry = 2000000279;


