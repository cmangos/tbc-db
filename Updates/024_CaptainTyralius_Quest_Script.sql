-- Captain Tyralius quest fix
DELETE FROM creature WHERE id=20787; -- creature is spawned by script
UPDATE creature_template SET UnitFlags=UnitFlags|514,MovementType=0 WHERE entry=20787; -- not attackable and passive
UPDATE gameobject_template SET data2=3932160 WHERE entry=184588;
UPDATE creature SET spawntimesecs=60 WHERE id=20825; -- correct respawn timers

DELETE FROM db_script_string WHERE entry IN(2000000227);
INSERT INTO db_script_string(entry, content_default, sound, type, language, emote, comment)
VALUES(2000000227,'You''ve saved me, fleshling! Ameer will hear of this noble act.',0,0,0,0,'Captain Tyralius say on prison release');

DELETE FROM dbscripts_on_go_template_use WHERE id=184588;
INSERT INTO dbscripts_on_go_template_use(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) 
VALUES(184588,0,10,20787,12000,0,0,0,0,0,0,0,3916.4,2511.83,105.016,3.964,'Captain Tyralius - SPAWN'),
(184588,0,18,0,0,20825,10,3,0,0,0,0,0,0,0,0,'Captain Tyralius - DESPAWN dummy creature'),
(184588,2,0,0,0,20787,10,3,2000000227,0,0,0,0,0,0,0,'Captain Tyralius - SAY');