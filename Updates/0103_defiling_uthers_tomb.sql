UPDATE creature_template SET MovementType=0 WHERE Entry=17233;
-- add missing object targets for Defile Uther's Tomb
DELETE FROM spell_script_target WHERE entry=30098;
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(30098, 0, 181653, 6), -- effect0
(30098, 1, 17253, 5), -- effect1
(30098, 0, 182483, 3); -- effect2

DELETE FROM dbscripts_on_event WHERE id=10561;
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10561, 0, 0, 10, 17233, 60000, 0, 17253, 10, 0, 0, 0, 0, 0, 972.96, -1824.82, 82.54, 0.27, 'Summon Ghost of Uther Lightbringer'),
(10561, 8000, 0, 0, 0, 0, 0, 17233, 10, 0, 2000000319, 0, 0, 0, 0, 0, 0, 0, 'Ghost of Uther Lightbringer - Say Text'),
(10561, 16000, 0, 0, 0, 0, 0, 17233, 10, 0, 2000000320, 0, 0, 0, 0, 0, 0, 0, 'Ghost of Uther Lightbringer - Say Text'),
(10561, 30000, 0, 0, 0, 0, 0, 17233, 10, 0, 2000000321, 0, 0, 0, 0, 0, 0, 0, 'Ghost of Uther Lightbringer - Say Text'),
(10561, 43000, 0, 0, 0, 0, 0, 17233, 10, 0, 2000000322, 0, 0, 0, 0, 0, 0, 0, 'Ghost of Uther Lightbringer - Say Text');

DELETE FROM dbscript_string WHERE entry IN (2000000319,2000000320,2000000321,2000000322);
INSERT INTO dbscript_string (entry, content_default, broadcast_text_id) VALUES
(2000000319, 'Why do you do this?  Did I somehow wrong you in life?', 13625),
(2000000320, 'Ah, I see it now in your mind.  This is the work of one of my former students... Mehlar Dawnblade.  It is sad to know that his heart has turned so dark.', 13626),
(2000000321, 'Return to him.  Return to Mehlar and tell him that I forgive him and that I understand why he believes what he does.', 13627),
(2000000322, 'I can only hope that he will see the Light and instead turn his energies to restoring once-beautiful Quel''Thalas.', 13640); 


