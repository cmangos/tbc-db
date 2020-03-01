UPDATE dbscript_string SET sound=0 WHERE entry=2000000329; -- remove wrong draenei yawning sound 7933...

-- 185234 Gorgrom's Altar
UPDATE gameobject_template SET data6=78, data14=19700 WHERE entry=185234;

-- 10204 Misha
DELETE FROM dbscripts_on_event WHERE priority=1 AND delay=5000 AND id=14400;
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14400, 5000, 1, 1, 15, 0, 0, 10204, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Misha emote OneShotRoar');

-- 22447 [DND]Sablemane's Trap Target - target of spell 39185 [DND]Trigger Trap
-- appears that this should not be static spawned, instead is summoned when event starts
DELETE FROM creature WHERE id=22447;
-- exists for about 35 seconds
DELETE FROM dbscripts_on_event WHERE priority=1 AND delay=0 AND id IN (14400,14536);
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14400, 0, 1, 10, 22447, 35000, 0, 0, 0, 0, 0, 0, 0, 0, 3607.51, 7184.14, 139.596, 3.85718, 'Summon [DND]Sablemane''s Trap Target'),
(14536, 0, 1, 10, 22447, 35000, 0, 0, 0, 0, 0, 0, 0, 0, 3607.51, 7184.14, 139.596, 3.85718, 'Summon [DND]Sablemane''s Trap Target');

-- 21514 Gorgrom the Dragon-Eater
UPDATE creature_template SET Faction=14, UnitFlags=33600 WHERE Entry=21514;
UPDATE dbscripts_on_event SET datalong=29266, comments='Gorgrom - Cast Spell Permanent Feign Death' WHERE datalong=38763 AND id=14536; -- cast Permanent Feign Death, not Suicide (alliance version)
UPDATE dbscripts_on_event SET datalong=29266, comments='Gorgrom - Cast Spell Permanent Feign Death' WHERE datalong=38763 AND id=14400; -- cast Permanent Feign Death, not Suicide (horde version)


