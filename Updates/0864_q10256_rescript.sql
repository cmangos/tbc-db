UPDATE quest_template SET SpecialFlags = 0, ReqCreatureOrGOId1 = 19938, ReqCreatureOrGOCount1 = 1 WHERE entry =10256;

SET @TGUID := 2000005805;
DELETE FROM dbscript_string WHERE entry BETWEEN @TGUID+0 AND @TGUID+1;
INSERT INTO dbscript_string (entry, content_default, sound, `type`, `language`, emote, broadcast_text_id, `comment`) VALUES
(@TGUID+0,'A flickering image of a female blood elf commander appears. From the surroundings, you can tell she must be inside Tempest Keep.',0,2,0,1,17529,NULL),
(@TGUID+1,'The blood elf doesn''t appear to be a magister, but perhaps she holds something that is the key to the tower''s curse.',0,2,0,25,17530,NULL);

DELETE FROM dbscripts_on_event WHERE id = 12857;
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(12857, 0, 0, 10, 19938, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 2248.43, 2227.97, 138.56, 2.48121, 0, ''),
(12857, 1000, 0, 0, 0, 0, 0, 19938, 10, 0, @TGUID+0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12857, 5000, 0, 0, 0, 0, 0, 19938, 10, 0, @TGUID+1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12857, 8000, 0, 8, 19938, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


