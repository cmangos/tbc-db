-- q.10598 'Blast the Infernals!' - H
-- q.10564 'Blast the Infernals!' - A
-- spell comes from npc not player
UPDATE quest_template SET ReqSpellCast2 = 0 WHERE entry IN (10564,10598);

-- Invis Legion Hold Glyph 21512
UPDATE creature SET spawntimesecsmin = 45, spawntimesecsmax = 45 WHERE id = 21512;
-- quest script
DELETE FROM dbscripts_on_event WHERE id IN (13874);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13874,1,31,21512,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 21512'),
(13874,100,15,37134,32,0,21512,10,1,0,0,0,0,0,0,0,0,'force buddy to cast 37134'),
(13874,1000,8,21512,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'kill credit'),
(13874,1100,18,0,0,0,21512,20,7,0,0,0,0,0,0,0,0,'desp buddy');
