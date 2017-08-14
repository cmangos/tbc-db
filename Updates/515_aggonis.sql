-- Aggonis (17000)
-- Quest: Cleansing the Waters (9427)

UPDATE creature_template SET SpeedWalk=1, SpeedRun=1, MovementType=0 WHERE entry=17000;

DELETE FROM db_script_string WHERE entry=2000009008;
INSERT INTO db_script_string (entry, content_default, sound, type, emote, comment) VALUES
(2000009008,'Fools!  You seek to abjure my father''s presence?  Death awaits you, mortals!',0,0,0,'17000');

DELETE FROM dbscripts_on_event WHERE id=10362;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10362, 0, 10, 17000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 421.46, 3466.63, 63.43, 3.12, 'Aggonis Spawn'),
(10362, 4, 0, 0, 0, 0, 17000, 50, 0, 2000009008, 0, 0, 0, 0, 0, 0, 0, 'Aggonis Say'),
(10362, 7, 36, 0, 0, 0, 17000, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Aggonis Face Player'),
(10362, 7, 5, 46, 256, 0, 17000, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aggonis Remove UnitFlag - Immune to Player');

